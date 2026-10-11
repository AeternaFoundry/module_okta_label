resource "okta_label" "labels" {
  for_each = var.labels

  name = each.value.name

  dynamic "values" {
    for_each = each.value.values != null ? each.value.values : []
    content {
      dynamic "metadata" {
        for_each = values.value.metadata != null ? values.value.metadata : []
        content {
          additional_properties = metadata.value.additional_properties
        }
      }
      name = values.value.name
    }
  }
}


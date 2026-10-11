output "labels_id" {
  description = "Map of id values across all labels, keyed the same as var.labels except keys with no id are omitted"
  value       = { for k, v in okta_label.labels : k => v.id if v.id != null && length(v.id) > 0 }
}
output "labels_label_id" {
  description = "Map of label_id values across all labels, keyed the same as var.labels except keys with no label_id are omitted"
  value       = { for k, v in okta_label.labels : k => v.label_id if v.label_id != null && length(v.label_id) > 0 }
}
output "labels_name" {
  description = "Map of name values across all labels, keyed the same as var.labels except keys with no name are omitted"
  value       = { for k, v in okta_label.labels : k => v.name if v.name != null && length(v.name) > 0 }
}
output "labels_values" {
  description = "Map of values values across all labels, keyed the same as var.labels except keys with no values are omitted"
  value       = { for k, v in okta_label.labels : k => v.values if v.values != null && length(v.values) > 0 }
}


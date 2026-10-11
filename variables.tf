variable "labels" {
  description = <<EOT
Map of labels, attributes below
Required:
    - name
Optional:
    - values (block):
        - metadata (optional, block):
            - additional_properties (optional)
        - name (required)
EOT

  type = map(object({
    name = string
    values = optional(list(object({
      metadata = optional(list(object({
        additional_properties = optional(map(string))
      })))
      name = string
    })))
  }))
}


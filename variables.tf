variable "iot_indexing_configurations" {
  description = <<EOT
Map of iot_indexing_configurations, attributes below
Optional:
    - region
    - thing_group_indexing_configuration (block):
        - custom_field (optional, block):
            - name (optional)
            - type (optional)
        - managed_field (optional, block):
            - name (optional)
            - type (optional)
        - thing_group_indexing_mode (required)
    - thing_indexing_configuration (block):
        - custom_field (optional, block):
            - name (optional)
            - type (optional)
        - device_defender_indexing_mode (optional)
        - filter (optional, block):
            - named_shadow_names (optional)
        - managed_field (optional, block):
            - name (optional)
            - type (optional)
        - named_shadow_indexing_mode (optional)
        - thing_connectivity_indexing_mode (optional)
        - thing_indexing_mode (required)
EOT

  type = map(object({
    region = optional(string)
    thing_group_indexing_configuration = optional(object({
      custom_field = optional(list(object({
        name = optional(string)
        type = optional(string)
      })))
      managed_field = optional(list(object({
        name = optional(string)
        type = optional(string)
      })))
      thing_group_indexing_mode = string
    }))
    thing_indexing_configuration = optional(object({
      custom_field = optional(list(object({
        name = optional(string)
        type = optional(string)
      })))
      device_defender_indexing_mode = optional(string)
      filter = optional(object({
        named_shadow_names = optional(set(string))
      }))
      managed_field = optional(list(object({
        name = optional(string)
        type = optional(string)
      })))
      named_shadow_indexing_mode       = optional(string)
      thing_connectivity_indexing_mode = optional(string)
      thing_indexing_mode              = string
    }))
  }))
  # Note: 10 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


output "iot_indexing_configurations_id" {
  description = "Map of id values across all iot_indexing_configurations, keyed the same as var.iot_indexing_configurations"
  value       = { for k, v in aws_iot_indexing_configuration.iot_indexing_configurations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "iot_indexing_configurations_region" {
  description = "Map of region values across all iot_indexing_configurations, keyed the same as var.iot_indexing_configurations"
  value       = { for k, v in aws_iot_indexing_configuration.iot_indexing_configurations : k => v.region if v.region != null && length(v.region) > 0 }
}
output "iot_indexing_configurations_thing_group_indexing_configuration" {
  description = "Map of thing_group_indexing_configuration values across all iot_indexing_configurations, keyed the same as var.iot_indexing_configurations"
  value       = { for k, v in aws_iot_indexing_configuration.iot_indexing_configurations : k => v.thing_group_indexing_configuration if v.thing_group_indexing_configuration != null && length(v.thing_group_indexing_configuration) > 0 }
}
output "iot_indexing_configurations_thing_indexing_configuration" {
  description = "Map of thing_indexing_configuration values across all iot_indexing_configurations, keyed the same as var.iot_indexing_configurations"
  value       = { for k, v in aws_iot_indexing_configuration.iot_indexing_configurations : k => v.thing_indexing_configuration if v.thing_indexing_configuration != null && length(v.thing_indexing_configuration) > 0 }
}


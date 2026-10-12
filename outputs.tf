output "standards_resources_scores_lookup_ids" {
  description = "Map of ids values across all standards_resources_scores_lookup, keyed the same as var.standards_resources_scores_lookup except keys with no ids are omitted"
  value       = { for k, v in data.pagerduty_standards_resources_scores.standards_resources_scores_lookup : k => v.ids if v.ids != null && length(v.ids) > 0 }
}
output "standards_resources_scores_lookup_resource_type" {
  description = "Map of resource_type values across all standards_resources_scores_lookup, keyed the same as var.standards_resources_scores_lookup except keys with no resource_type are omitted"
  value       = { for k, v in data.pagerduty_standards_resources_scores.standards_resources_scores_lookup : k => v.resource_type if v.resource_type != null && length(v.resource_type) > 0 }
}
output "standards_resources_scores_lookup_resources" {
  description = "Map of resources values across all standards_resources_scores_lookup, keyed the same as var.standards_resources_scores_lookup except keys with no resources are omitted"
  value       = { for k, v in data.pagerduty_standards_resources_scores.standards_resources_scores_lookup : k => v.resources if v.resources != null && length(v.resources) > 0 }
}


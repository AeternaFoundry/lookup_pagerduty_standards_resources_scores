output "standards_resources_scores_lookup_ids" {
  description = "Map of ids values across all standards_resources_scores_lookup, keyed the same as var.standards_resources_scores_lookup"
  value       = { for k, v in data.pagerduty_standards_resources_scores.standards_resources_scores_lookup : k => v.ids }
}
output "standards_resources_scores_lookup_resource_type" {
  description = "Map of resource_type values across all standards_resources_scores_lookup, keyed the same as var.standards_resources_scores_lookup"
  value       = { for k, v in data.pagerduty_standards_resources_scores.standards_resources_scores_lookup : k => v.resource_type }
}
output "standards_resources_scores_lookup_resources" {
  description = "Map of resources values across all standards_resources_scores_lookup, keyed the same as var.standards_resources_scores_lookup"
  value       = { for k, v in data.pagerduty_standards_resources_scores.standards_resources_scores_lookup : k => v.resources }
}


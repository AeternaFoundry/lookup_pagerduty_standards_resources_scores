data "pagerduty_standards_resources_scores" "standards_resources_scores_lookup" {
  for_each = var.standards_resources_scores_lookup

  ids           = each.value.ids
  resource_type = each.value.resource_type
}


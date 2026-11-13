variable "standards_resources_scores_lookup" {
  description = <<EOT
Map of standards_resources_scores_lookup, attributes below
Required:
    - ids
    - resource_type
EOT

  type = map(object({
    ids           = list(string)
    resource_type = string
  }))
  validation {
    condition = alltrue([
      for k, v in var.standards_resources_scores_lookup : (
        contains(["technical_services"], v.resource_type)
      )
    ])
    error_message = "must be one of: \"technical_services\""
  }
}


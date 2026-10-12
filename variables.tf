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
}


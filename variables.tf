variable "event_triggers_lookup" {
  description = <<EOT
Map of event_triggers_lookup, attributes below
Required:
    - app_id
    - project_id
EOT

  type = map(object({
    app_id     = string
    project_id = string
  }))
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


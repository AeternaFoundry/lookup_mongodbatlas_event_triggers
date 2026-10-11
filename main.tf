data "mongodbatlas_event_triggers" "event_triggers_lookup" {
  for_each = var.event_triggers_lookup

  app_id     = each.value.app_id
  project_id = each.value.project_id
}


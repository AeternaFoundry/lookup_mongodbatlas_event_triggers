output "event_triggers_lookup_id" {
  description = "Map of id values across all event_triggers_lookup, keyed the same as var.event_triggers_lookup except keys with no id are omitted"
  value       = { for k, v in data.mongodbatlas_event_triggers.event_triggers_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "event_triggers_lookup_app_id" {
  description = "Map of app_id values across all event_triggers_lookup, keyed the same as var.event_triggers_lookup except keys with no app_id are omitted"
  value       = { for k, v in data.mongodbatlas_event_triggers.event_triggers_lookup : k => v.app_id if v.app_id != null && length(v.app_id) > 0 }
}
output "event_triggers_lookup_project_id" {
  description = "Map of project_id values across all event_triggers_lookup, keyed the same as var.event_triggers_lookup except keys with no project_id are omitted"
  value       = { for k, v in data.mongodbatlas_event_triggers.event_triggers_lookup : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "event_triggers_lookup_results" {
  description = "Map of results values across all event_triggers_lookup, keyed the same as var.event_triggers_lookup except keys with no results are omitted"
  value       = { for k, v in data.mongodbatlas_event_triggers.event_triggers_lookup : k => v.results if v.results != null && length(v.results) > 0 }
}


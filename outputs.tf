output "dialogflow_cx_entity_types_id" {
  description = "Map of id values across all dialogflow_cx_entity_types, keyed the same as var.dialogflow_cx_entity_types except keys with no id are omitted"
  value       = { for k, v in google_dialogflow_cx_entity_type.dialogflow_cx_entity_types : k => v.id if v.id != null && length(v.id) > 0 }
}
output "dialogflow_cx_entity_types_auto_expansion_mode" {
  description = "Map of auto_expansion_mode values across all dialogflow_cx_entity_types, keyed the same as var.dialogflow_cx_entity_types except keys with no auto_expansion_mode are omitted"
  value       = { for k, v in google_dialogflow_cx_entity_type.dialogflow_cx_entity_types : k => v.auto_expansion_mode if v.auto_expansion_mode != null && length(v.auto_expansion_mode) > 0 }
}
output "dialogflow_cx_entity_types_deletion_policy" {
  description = "Map of deletion_policy values across all dialogflow_cx_entity_types, keyed the same as var.dialogflow_cx_entity_types except keys with no deletion_policy are omitted"
  value       = { for k, v in google_dialogflow_cx_entity_type.dialogflow_cx_entity_types : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "dialogflow_cx_entity_types_display_name" {
  description = "Map of display_name values across all dialogflow_cx_entity_types, keyed the same as var.dialogflow_cx_entity_types except keys with no display_name are omitted"
  value       = { for k, v in google_dialogflow_cx_entity_type.dialogflow_cx_entity_types : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "dialogflow_cx_entity_types_enable_fuzzy_extraction" {
  description = "Map of enable_fuzzy_extraction values across all dialogflow_cx_entity_types, keyed the same as var.dialogflow_cx_entity_types except keys with no enable_fuzzy_extraction are omitted"
  value       = { for k, v in google_dialogflow_cx_entity_type.dialogflow_cx_entity_types : k => v.enable_fuzzy_extraction if v.enable_fuzzy_extraction != null }
}
output "dialogflow_cx_entity_types_entities" {
  description = "Map of entities values across all dialogflow_cx_entity_types, keyed the same as var.dialogflow_cx_entity_types except keys with no entities are omitted"
  value       = { for k, v in google_dialogflow_cx_entity_type.dialogflow_cx_entity_types : k => v.entities if v.entities != null && length(v.entities) > 0 }
}
output "dialogflow_cx_entity_types_excluded_phrases" {
  description = "Map of excluded_phrases values across all dialogflow_cx_entity_types, keyed the same as var.dialogflow_cx_entity_types except keys with no excluded_phrases are omitted"
  value       = { for k, v in google_dialogflow_cx_entity_type.dialogflow_cx_entity_types : k => v.excluded_phrases if v.excluded_phrases != null && length(v.excluded_phrases) > 0 }
}
output "dialogflow_cx_entity_types_kind" {
  description = "Map of kind values across all dialogflow_cx_entity_types, keyed the same as var.dialogflow_cx_entity_types except keys with no kind are omitted"
  value       = { for k, v in google_dialogflow_cx_entity_type.dialogflow_cx_entity_types : k => v.kind if v.kind != null && length(v.kind) > 0 }
}
output "dialogflow_cx_entity_types_language_code" {
  description = "Map of language_code values across all dialogflow_cx_entity_types, keyed the same as var.dialogflow_cx_entity_types except keys with no language_code are omitted"
  value       = { for k, v in google_dialogflow_cx_entity_type.dialogflow_cx_entity_types : k => v.language_code if v.language_code != null && length(v.language_code) > 0 }
}
output "dialogflow_cx_entity_types_name" {
  description = "Map of name values across all dialogflow_cx_entity_types, keyed the same as var.dialogflow_cx_entity_types except keys with no name are omitted"
  value       = { for k, v in google_dialogflow_cx_entity_type.dialogflow_cx_entity_types : k => v.name if v.name != null && length(v.name) > 0 }
}
output "dialogflow_cx_entity_types_parent" {
  description = "Map of parent values across all dialogflow_cx_entity_types, keyed the same as var.dialogflow_cx_entity_types except keys with no parent are omitted"
  value       = { for k, v in google_dialogflow_cx_entity_type.dialogflow_cx_entity_types : k => v.parent if v.parent != null && length(v.parent) > 0 }
}
output "dialogflow_cx_entity_types_redact" {
  description = "Map of redact values across all dialogflow_cx_entity_types, keyed the same as var.dialogflow_cx_entity_types except keys with no redact are omitted"
  value       = { for k, v in google_dialogflow_cx_entity_type.dialogflow_cx_entity_types : k => v.redact if v.redact != null }
}


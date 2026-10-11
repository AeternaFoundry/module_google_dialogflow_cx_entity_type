resource "google_dialogflow_cx_entity_type" "dialogflow_cx_entity_types" {
  for_each = var.dialogflow_cx_entity_types

  display_name            = each.value.display_name
  kind                    = each.value.kind
  auto_expansion_mode     = each.value.auto_expansion_mode
  deletion_policy         = each.value.deletion_policy
  enable_fuzzy_extraction = each.value.enable_fuzzy_extraction
  language_code           = each.value.language_code
  parent                  = each.value.parent
  redact                  = each.value.redact

  dynamic "entities" {
    for_each = each.value.entities
    content {
      synonyms = entities.value.synonyms
      value    = entities.value.value
    }
  }

  dynamic "excluded_phrases" {
    for_each = each.value.excluded_phrases != null ? each.value.excluded_phrases : []
    content {
      value = excluded_phrases.value.value
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}


variable "dialogflow_cx_entity_types" {
  description = <<EOT
Map of dialogflow_cx_entity_types, attributes below
Required:
    - display_name
    - kind
    - entities (block):
        - synonyms (optional)
        - value (optional)
Optional:
    - auto_expansion_mode
    - deletion_policy
    - enable_fuzzy_extraction
    - language_code
    - parent
    - redact
    - excluded_phrases (block):
        - value (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    display_name            = string
    kind                    = string
    auto_expansion_mode     = optional(string)
    deletion_policy         = optional(string)
    enable_fuzzy_extraction = optional(bool)
    language_code           = optional(string)
    parent                  = optional(string)
    redact                  = optional(bool)
    entities = list(object({
      synonyms = optional(list(string))
      value    = optional(string)
    }))
    excluded_phrases = optional(list(object({
      value = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_entity_types : (
        length(v.entities) >= 1
      )
    ])
    error_message = "Each entities list must contain at least 1 items"
  }
  validation {
    condition = alltrue([
      for k, v in var.dialogflow_cx_entity_types : (
        length(v.display_name) >= 0 && length(v.display_name) <= 64
      )
    ])
    error_message = "must be between 0 and 64 characters"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}


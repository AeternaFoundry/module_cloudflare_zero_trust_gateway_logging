variable "zero_trust_gateway_loggings" {
  description = <<EOT
Map of zero_trust_gateway_loggings, attributes below
Required:
    - account_id
Optional:
    - redact_pii
    - settings_by_rule_type
EOT

  type = map(object({
    account_id = string
    redact_pii = optional(bool)
    settings_by_rule_type = optional(object({
      dns = optional(object({
        log_all    = optional(bool)
        log_blocks = optional(bool)
      }))
      http = optional(object({
        log_all    = optional(bool)
        log_blocks = optional(bool)
      }))
      l4 = optional(object({
        log_all    = optional(bool)
        log_blocks = optional(bool)
      }))
    }))
  }))
}


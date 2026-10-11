output "zero_trust_gateway_loggings_id" {
  description = "Map of id values across all zero_trust_gateway_loggings, keyed the same as var.zero_trust_gateway_loggings except keys with no id are omitted"
  value       = { for k, v in cloudflare_zero_trust_gateway_logging.zero_trust_gateway_loggings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "zero_trust_gateway_loggings_account_id" {
  description = "Map of account_id values across all zero_trust_gateway_loggings, keyed the same as var.zero_trust_gateway_loggings except keys with no account_id are omitted"
  value       = { for k, v in cloudflare_zero_trust_gateway_logging.zero_trust_gateway_loggings : k => v.account_id if v.account_id != null && length(v.account_id) > 0 }
}
output "zero_trust_gateway_loggings_redact_pii" {
  description = "Map of redact_pii values across all zero_trust_gateway_loggings, keyed the same as var.zero_trust_gateway_loggings except keys with no redact_pii are omitted"
  value       = { for k, v in cloudflare_zero_trust_gateway_logging.zero_trust_gateway_loggings : k => v.redact_pii if v.redact_pii != null }
}
output "zero_trust_gateway_loggings_settings_by_rule_type" {
  description = "Map of settings_by_rule_type values across all zero_trust_gateway_loggings, keyed the same as var.zero_trust_gateway_loggings except keys with no settings_by_rule_type are omitted"
  value       = { for k, v in cloudflare_zero_trust_gateway_logging.zero_trust_gateway_loggings : k => v.settings_by_rule_type if v.settings_by_rule_type != null && length(v.settings_by_rule_type) > 0 }
}


resource "cloudflare_zero_trust_gateway_logging" "zero_trust_gateway_loggings" {
  for_each = var.zero_trust_gateway_loggings

  account_id            = each.value.account_id
  redact_pii            = each.value.redact_pii
  settings_by_rule_type = each.value.settings_by_rule_type
}


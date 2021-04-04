resource "aws_route53_record" "validation" {
  count = var.create_certificate && var.validation_method == "DNS" && var.validate_certificate ? length(local.distinct_domain_names) : 0

  zone_id         = var.zone_id
  name            = element(local.validation_domains, count.index)["resource_record_name"]
  type            = element(local.validation_domains, count.index)["resource_record_type"]
  ttl             = var.dns_ttl
  records         = [element(local.validation_domains, count.index)["resource_record_value"]]
  allow_overwrite = var.validation_allow_overwrite_records

  depends_on = [aws_acm_certificate.this]
}
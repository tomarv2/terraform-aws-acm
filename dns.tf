//module "route53" {
//  #source = "git::git@github.com:tomarv2/terraform-aws-route53.git?ref=v0.0.1"
//  source = "../../../terraform/aws/terraform-aws-route53"
//
//  private_enabled = false
//  account_id      = "755921336062"
//  aws_region      = var.aws_region
//  domain_name     = var.domain_name
//  names = element(local.validation_domains, count.index)["resource_record_name"]
//  types = local.validation_domains["resource_record_type"]
//  ttls = var.dns_ttl
//  values = local.validation_domains["resource_record_value"]
//
//  #values = var.values #element(local.validation_domains, count.index)["resource_record_value"]
//  #allow_overwrites = [element(local.validation_domains, count.index)["validation_allow_overwrite_records"]]
//  # ---------------------------------------------
//  # Note: Do not change teamid and prjid once set.
//  teamid = var.teamid
//  prjid  = var.prjid
//}

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
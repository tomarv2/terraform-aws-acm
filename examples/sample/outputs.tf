# ---------------------------------------------
# ROUTE53
# ---------------------------------------------
output "route53_records" {
  description = "Route53 records"
  value       = module.acm.route53_records
}

output "route53_zone_id" {
  description = "Route53 zone id"
  value       = module.acm.route53_zone_id
}

output "validation_record_type" {
  description = "Route53 record type"
  value       = module.acm.validation_record_type
}

output "validation_record_name" {
  description = "Route53 record name"
  value       = module.acm.validation_record_name
}
# ---------------------------------------------
# ACM
# ---------------------------------------------
output "certificate_body" {
  description = "Certificate body"
  value       = module.acm.certificate_body
}

output "certificate_domain_name" {
  description = "Certificate domain name"
  value       = module.acm.certificate_domain_name
}

output "certificate_domain_validation_options" {
  description = "Certificate validation options"
  value       = module.acm.certificate_domain_validation_options
}

output "certificate_arn" {
  description = "Certificate ARN"
  value       = module.acm.certificate_arn
}

output "certificate_san" {
  description = "Certificate SAN"
  value       = module.acm.certificate_san
}

output "certificate_validation_email" {
  description = "Certificate validation email"
  value       = module.acm.certificate_validation_email
}
# ---------------------------------------------
# ACM validation
# ---------------------------------------------
output "certificate_validation_record_fqdns" {
  description = "Certificate validation fqdn"
  value       = module.acm.certificate_validation_record_fqdns
}

output "certificate_validation_id" {
  description = "Certificate validation id"
  value       = module.acm.certificate_validation_id
}
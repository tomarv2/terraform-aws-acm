# ---------------------------------------------
# ROUTE53
# ---------------------------------------------
output "route53_records" {
  description = "Route53 records"
  value       = aws_route53_record.validation.*.records
}

output "route53_zone_id" {
  description = "Route53 zone id"
  value       = aws_route53_record.validation.*.zone_id
}

output "validation_record_type" {
  description = "Route53 record type"
  value       = aws_route53_record.validation.*.type
}

output "validation_record_name" {
  description = "Route53 record name"
  value       = aws_route53_record.validation.*.name
}
# ---------------------------------------------
# ACM
# ---------------------------------------------
output "certificate_body" {
  description = "Certificate body"
  value = aws_acm_certificate.this.*.certificate_body
}

output "certificate_domain_name" {
  description = "Certificate domain name"
  value = aws_acm_certificate.this.*.domain_name
}

output "certificate_domain_validation_options" {
  description = "Certificate validation options"
  value = aws_acm_certificate.this.*.domain_validation_options
}

output "certificate_arn" {
  description = "Certificate ARN"
  value = aws_acm_certificate.this.*.arn
}

output "certificate_san" {
  description = "Certificate SAN"
  value = aws_acm_certificate.this.*.subject_alternative_names
}

output "certificate_validation_email" {
  description = "Certificate validation email"
  value = aws_acm_certificate.this.*.validation_emails
}
# ---------------------------------------------
# ACM validation
# ---------------------------------------------
output "certificate_validation_record_fqdns" {
  description = "Certificate validation fqdn"
  value = aws_acm_certificate_validation.this.*.validation_record_fqdns
}

output "certificate_validation_id" {
    description = "Certificate validation id"
  value = aws_acm_certificate_validation.this.*.id
}
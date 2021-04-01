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
  value = aws_acm_certificate.this.*.certificate_body
}

output "certificate_domain_name" {
  value = aws_acm_certificate.this.*.domain_name
}

output "certificate_domain_validation_options" {
  value = aws_acm_certificate.this.*.domain_validation_options
}

output "certificate_arn" {
  value = aws_acm_certificate.this.*.arn
}

output "certificate_san" {
  value = aws_acm_certificate.this.*.subject_alternative_names
}

output "certificate_validation_email" {
  value = aws_acm_certificate.this.*.validation_emails
}
# ---------------------------------------------
# ACM validation
# ---------------------------------------------
output "certificate_validation_record_fqdns" {
  value = aws_acm_certificate_validation.this.*.validation_record_fqdns
}

output "certificate_validation_id" {
  value = aws_acm_certificate_validation.this.*.id
}
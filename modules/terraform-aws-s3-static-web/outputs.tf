output "arn" {
  description = "ARN del bucket"
  value       = aws_s3_bucket.s3_bucket.arn
}

output "name" {
  description = "Nombre del bucket"
  value       = aws_s3_bucket.s3_bucket.id
}

output "domain" {
  description = "Nombre de dominio del bucket"
  value       = aws_s3_bucket_website_configuration.s3_bucket.website_domain
}

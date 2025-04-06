#----------------#
output "bucket_name" {
  description = "String, name of the S3 bucket"
  value       = aws_s3_bucket.this.bucket
}

output "bucket_id" {
  description = "String, ID of the S3 bucket"
  value       = aws_s3_bucket.this.id
}

output "bucket_arn" {
  description = "String, ARN of the S3 bucket"
  value       = aws_s3_bucket.this.arn
}

resource "aws_s3_bucket" "this" {
  bucket        = var.generate_name ? lower("ilx-${random_string.this[0].id}-${var.bucket_name}") : lower(var.bucket_name)
  tags          = var.tags
  force_destroy = var.force_destroy
}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket                  = aws_s3_bucket.this.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

resource "random_string" "this" {
  count   = var.generate_name ? 1 : 0
  length  = 4
  special = false
}
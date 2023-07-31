# modules/storage/main.tf

resource "aws_s3_bucket" "storage_bucket" {
  bucket = "example-storage-bucket"
  acl    = "private"
  # Add other necessary configurations for the S3 bucket
}

output "bucket_name" {
  value       = aws_s3_bucket.storage_bucket.id
  description = "Name of the created S3 bucket"
}

output "bucket_arn" {
  value       = aws_s3_bucket.storage_bucket.arn
  description = "ARN of the created S3 bucket"
}

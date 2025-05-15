resource "aws_s3_bucket" "new-bucket" {
    bucket = "${var.environment}-storage-for-application-2025"  
}
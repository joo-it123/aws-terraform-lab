provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_s3_bucket" "test" {
  bucket = "joo-test-bucket-123456789"
}

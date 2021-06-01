resource "aws_s3_bucket" "bucket" {
  bucket = "my-runiac-bucket"

  tags = {
    Name        = "runiac-sample"
    Environment = "dev"
  }
}

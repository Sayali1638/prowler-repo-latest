resource "aws_s3_bucket" "my_bucket" {
  bucket = "prowler-iac-bucket" # Replace with your unique bucket name

}

resource "aws_s3_bucket_versioning" "my_bucket_versioning" {
  bucket = aws_s3_bucket.my_bucket.id

  versioning_configuration {
    status = "Enabled"
  }
}


resource "aws_dynamodb_table" "table" {
  name           = var.name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = var.key

  attribute {
    name = var.key
    type = "S"
  }
}

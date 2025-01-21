resource "aws_dynamodb_table" "name" {
    name = var.Project-Table
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "Project-Id"
    attribute {
      name = "Project-Id"
      type = "S"
    } 
}
resource "aws_dynamodb_table" "name" {
    name = "${var.my_env}-shankesh-shubham-bucket-table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "Project-Id"
    attribute {
      name = "Project-Id"
      type = "S"
    } 
}
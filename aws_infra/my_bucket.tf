resource "aws_s3_bucket" "my-bucket" {
  bucket = "${var.my_env}-shankesh-shubham-bucket"
  tags = {
    Name = "${var.my_env}-shankesh-shubham-bucket"
    environment = var.my_env
  
  }

}
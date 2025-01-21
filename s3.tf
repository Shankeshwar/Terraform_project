resource "aws_s3_bucket" "my-bucket" {
  bucket = "shankesh-shubham-bucket"
  tags = {
    Name = "shankesh-shubham-bucket"
  }

}
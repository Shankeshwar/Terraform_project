
#Ec2 Instance
resource "aws_instance" "my-Instance" {
  count = var.instance_count
  ami             = var.ami_id #ubuntu
  instance_type   = var.instance_type
  tags = {
    Name = "${var.my_env}Project-Instance"
  }

}
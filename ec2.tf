#Key Pair

resource "aws_key_pair" "deployer" {
  key_name   = "Project-terra-key"
  public_key = file("./terra-key.pub")
}

#VPC

resource "aws_default_vpc" "default" {

}


#security group
resource "aws_security_group" "SG" {
  name        = "Allow Ports"
  description = "Allow inbound and outbound traffic"
  vpc_id      = aws_default_vpc.default.id

  #inbound traffic
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow SSH"
  }

  #outbound traffic    
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all traffic"
  }

}



#Ec2 Instance
resource "aws_instance" "my-Instance" {
  ami             = var.ami_id #ubuntu
  instance_type   = "t2.micro"
  key_name        = aws_key_pair.deployer.key_name
  security_groups = [aws_security_group.SG.name]
  tags = {
    Name = "Project-Instance"
  }

}
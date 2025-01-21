output "my_public_IP" {
  value = aws_instance.my-Instance.public_ip
}
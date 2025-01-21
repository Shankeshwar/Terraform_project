variable "ami_id" {
    description = "value of the AMI ID"
    type = string
  
}
variable "instance_type" {
    description = "value of the instance type"
    type = string
  
}
variable "my_env" {
    description = "The environment for the resources"
    type = string
  
}
variable "instance_count" {
    description = "The number of instances to create"
    type = number
  
}
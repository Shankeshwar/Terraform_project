variable "Project-Table" {
    default = "Project-Table"
    description = "This is dynamo db table for Project"
    type = string
  
}

variable "ami_id" {
  default = "ami-04b4f1a9cf54c11d0"
  description = "value of ami id"
  type = string
}
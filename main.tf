module "dev_app" {
    source = "./aws_infra"
    my_env = "dev"
    instance_type = "t2.micro"
    ami_id = var.ami_id
    instance_count = 1
}

module "stage_app" {
    source = "./aws_infra"
    my_env = "stage"
    instance_type = "t2.medium"
    ami_id = var.ami_id
    instance_count = 2
}

module "prod_app" {
    source = "./aws_infra"
    my_env = "prod"
    instance_type = "t2.large"
    ami_id = var.ami_id
    instance_count = 1
}
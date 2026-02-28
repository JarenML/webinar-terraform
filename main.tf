### tfstate #####
terraform {
    backend "s3" {
        bucket = "webinar-terraform-1a2"
        key = "webinar-terraform/terraform.tfstate"
        region = "us-east-1"
    }
}

module "nginx_server" {
    source = "./nginx_server_module"

    ami_id = "ami-0440d3b780d96b29d"
    instance_type = "t3.small"
    server_name = "nginx-server-dev"
    environment = "dev"
}

module "nginx_server_qa" {
    source = "./nginx_server_module"

    ami_id = "ami-0440d3b780d96b29d"
    instance_type = "t3.micro"
    server_name = "nginx-server-qa"
    environment = "qa"
}

# aws_instance.server-web-x:
resource "aws_instance" "server-web-x" {
    ami                                  = "ami-0f3caa1cf4417e51b"
    instance_type                        = "t3.micro"
    tags = {
        Name = "server-web"
        Environment = "test"
        Owner = "jaren.ramos@sistemas.com.pe"
        Team = "DevOps"
        Project = "webinar"
    }
    vpc_security_group_ids               = [
        "sg-08e4711dcf35155f6",
    ]
}

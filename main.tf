provider "aws" {
    region = "eu-central-1"
}

resource "aws_vpc" "development-vpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
        Name: "development"
        vpc_env: "dev"
    }
}
variable "subnet_cidr_block" {
  description = "subnet cidr block"
}

variable "environment"{
    description = "deployment environment"
}

resource "aws_subnet" "dev-subnet-1" {
    vpc_id = aws_vpc.development-vpc.id
    cidr_block = var.subnet_cidr_block
    availability_zone ="eu-central-1a"
    tags = {
        Name: "subnet-1"
    }
}


resource "aws_subnet" "dev-subnet-2" {
    vpc_id = data.aws_vpc.existing_vpc.id
    cidr_block = "172.31.48.0/20"
    availability_zone ="eu-central-1a"
    tags = {
        Name: "subnet-2"
    }
}



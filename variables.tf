variable "instance_count" {
  default = "10"
}

variable "instance_type" {
  default = "t2.nano"
}

variable "aws_region" {
  default = "us-east-1"
}

variable "main_vpc_cidr" {
  default = "100.64.0.0/16"
}

variable "public_subnets" {
  default = "100.64.128.0/24"
}

variable "private_subnets" {
  default = "100.64.64.0/24"
}
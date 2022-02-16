# DisableMySSH-Infra
Cloud resources to support needed AWS resources for this assignment. 

This terraform creates a pre-defined number of ec2 instances that have an insecure ingress rule (0.0.0.0 to port 22) in the instances security group. 

# Configuration
In the variables.tf file, the following configuration is available:
- `instance_count` (default=`10`) # This is the number of instances to create.
- `instance_type` (default=`t2.nano`) # This is the instance type to use for each instance.
- `aws_region` (default=`us-east-1`) # This is the AWS region.
- `main_vpc_cidr` (default=`100.64.0.0/16`) # This is the CIDR for the VPC.
- `public_subnets` (default=`100.64.128.0/24`) # This is the CIDR for the public subnet.
- `private_subnets` (default=`100.64.64.0/24`) # This is the CIDR for the private subnet.

# Generating a terraform plan
```
$ AWS_PROFILE=MY_PROFILE terraform plan
```

# Application the changes
```
$ AWS_PROFILE=MY_PROFILE terraform apply
```

# Destroy the changes
```
$ AWS_PROFILE=MY_PROFILE terraform destroy
```

## The Terraform configuration in this project sets up the following infrastructure on AWS: ##
## Technologies used:
Terraform, AWS, Docker, Linux, Git
## Project Description:
Divide Terraform resources into reusable modules
A custom VPC with subnets.
Elastic IP addresses for the subnets.
An EC2 instance within one of the subnets.
NGINX web server deployed on the EC2 instance.
All resources are provisioned using modularized Terraform code, making it easy to maintain and extend the infrastructure.

variable "aws_region" {
    description = "The AWS region to create resources in"
    type        = string
    default     = "ap-south-1"
    }
variable "ami_id" {
    description = "The AMI ID to use for the EC2 instance"
    type        = string
    default     = "ami-0c55b159cbfafe1f0"
    }
variable "instance_type" {
    description = "The type of EC2 instance to create"  
    type        = string
    default     = "t3.micro"
    }
variable "subnet_id" {
    description = "The ID of the subnet to launch the EC2 instance in"
    type        = string
    default     = "subnet-02fc0fddbd38f4f9e"
    }

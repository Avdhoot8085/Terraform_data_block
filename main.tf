provider "aws" {
  region = var.aws_region
}
resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
    tags = {
        Name = "Terraform-EC2-Instance"
    }

}
data "aws_security_group" "sg" {
  name = "my-security-group"
  vpc_id = "vpc-01cc81afcbfb74343"
}
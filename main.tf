provider "aws" {
  region = var.aws_region
}
resource "aws_instance" "ec2" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id = var.subnet_id
  security_groups = [data.aws_security_group.sg.id]
  key_name = data.aws_key_pair.key.key_name
    tags = {
        Name = "EC2-Instance"
    }

}
data "aws_security_group" "sg" {
  name = "my-sg"
  vpc_id = "vpc-01cc81afcbfb74343"
}
data "aws_key_pair" "key" {
  key_name = "Avdhoot-key"
}
# Terraform Module to spin up an AWS EC2 Instance for the River Point Technology Bridgcrew + HashiCorp Workshop
# Created: 1-28-22
# Author: Kevin Tuffner

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"

  ami                    = "ami-ebd02392"
  instance_type          = "t2.micro"
  key_name               = "test1"
  monitoring             = false
  vpc_security_group_ids = ["sg-058bcf0b26c8c0a19"]
  subnet_id              = "subnet-0a070c1dc78b28b3a"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

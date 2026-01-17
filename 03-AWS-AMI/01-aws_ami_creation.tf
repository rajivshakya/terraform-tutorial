/*This Terraform program will create an AMI with existing snapshot of root volume and will create a new instance using new created image.  */ 
provider "aws" {
    region = "ap-south-1"
    access_key = "AKIA2WJ6T@TISD2MMO6"
    secret_key = "83IhYtfdkRTlVvWxjYt9xNSLDUH2dQFli3SsyEkp"
}
# Creation of AMI using the root volume of any other running ec2-instance. 
# Pre-requisits First you have to run an ec2-instance and then need to take the snapshot of the root volume of that instance

resource "aws_ami" "example_ami" {
  name                = "terraform-ami"
  virtualization_type = "hvm"
  root_device_name    = "/dev/xvda"
  ena_support         = true          # ⭐ MOST IMPORTANT LINE
  imds_support        = "v2.0"

  ebs_block_device {
    device_name = "/dev/xvda"
    snapshot_id = "snap-089c35afb3f4df3a3"
    volume_size = 8
  }

  tags = {
    Name = "terraform-ami"
  }
}

# EC2 from custom AMI
resource "aws_instance" "my_instance" {
  ami           = aws_ami.example_ami.id
  instance_type = "t3.micro"

  tags = {
    Name = "terraform-instance"
  }
}

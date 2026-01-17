provider "aws" {
    region = "us-east-1"
    access_key = "AKIA2WJ6T4TIMffffff6"
    secret_key = "83IhYtfdkPmlVvWxjYt9xNSLDUH2QFliSsyEkp"
}
resource "aws_ami_copy" "ami-copy" {
  name              = "terraform-copy-ami"
  source_ami_id     = "ami-0720ca5d9ba95ccf6"
  source_ami_region = "ap-south-1"

  tags = {
    Name = "my-coppied-ami"
  }
}

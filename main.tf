#provider with AWS region and profile
provider "aws" {
  region = "eu-west-2"
  profile = "sivka"
}

#resource to create an EC2 instance
resource "aws_instance" "my_server" {
  ami           = "ami-0150189e4c09ffab5"
  instance_type = "t2.micro"
  tags = {
    Name = "TerraformServer"
  }
}

resource "aws_vpc" "my_testvpc" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "MyTestVPC"
  }
}

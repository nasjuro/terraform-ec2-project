/*
1. create a VPC in eu-west-2, CIDR 10.0.0.0/16
2. create a subnet with th eCIDR 10.0.2.0/24 into the above VPC
3. create an S3 bucket in the same region
*/

provider "aws" {
  region = "eu-west-2"
  profile = "default"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "my_vpc"
  }
}

resource "aws_subnet" "my_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "my_subnet"
  }
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-sivka" # Change this to a unique name

  tags = {
    Name = "my_bucket"
  }
}
resource "aws_instance" "my_server" {
  ami           = "ami-0150189e4c09ffab5"
  instance_type = "t2.micro"

  tags = {
    Name = "TerraformServer"
  }
}
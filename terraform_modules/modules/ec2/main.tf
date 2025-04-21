variable "instance_name" {
  description = "Name of the EC2 instance"
  type        = string
}


resource "aws_instance" "prowler-iac" {
  ami           = "ami-00a929b66ed6e0de6"
  instance_type = "t2.micro"
  tags = {
    Name = var.instance_name
  }
}


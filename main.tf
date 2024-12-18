# main.tf

provider "aws" {
  region = "us-east-1"  # Set the region to us-east-1
}

resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-bucket"  # Ensure the bucket name is globally unique
  acl    = "private"  # Choose the appropriate access control (e.g., private)
}

resource "aws_instance" "my_instance" {
  ami           = "ami-0e2c8caa4b6378d8c"  # Replace with a valid AMI ID for us-east-1
  instance_type = "t2.micro"  # Specify the EC2 instance type

  tags = {
    Name = "MyTerraformInstance"
  }
}

output "instance_public_ip" {
  value = aws_instance.my_instance.public_ip  # Output the EC2 instance's public IP
}


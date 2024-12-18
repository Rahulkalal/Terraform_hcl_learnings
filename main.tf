provider "aws" {
  region = "us-east-1"
}

# S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-terraform-s3-bucket-example"

  tags = {
    Name        = "MyBucket"
    Environment = "Dev"
  }
}

# EC2 Instance
resource "aws_instance" "my_instance" {
  ami           = "ami-0e2c8caa4b6378d8c"
  instance_type = "t2.micro"    

  tags = {
    Name = "MyEC2Instance"
  }
}

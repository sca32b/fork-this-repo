provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "example" {
  bucket = "my-unique-example-bucket-12345"
  force_destroy = true
}


resource "aws_ec2_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
  instance_type = "t2.micro"

  tags = {
    Name = "ExampleInstance"
  }
}

resource "aws_s3_bucket" "bucket321" {
  bucket = "my-unique-example-bucket-67890"
  force_destroy = true
}

# Comment

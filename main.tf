provider "aws" {
  region     = "ap-south-1" # or your preferred region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

resource "aws_instance" "example" {
  ami           = "ami-0f918f7e67a3323f0"
  instance_type = "t2.micro"
}

resource "aws_s3_bucket" "test" {
  bucket = "varshatestbucket123"
  tags = {
    Name = "varshatestbucket123"
    env  = "dev"
  }
}

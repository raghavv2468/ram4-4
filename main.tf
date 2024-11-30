provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "demo" {
  for_each = toset(["instance1", "instance2", "instance3"])  # Set of unique names

  ami           = "ami-0c41531b8d18cc72b"
  instance_type = "t2.micro"
  tags = {
    Name = "raghava123" # Using the unique identifier as the name
  }
}


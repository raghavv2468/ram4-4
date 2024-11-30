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


 resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-unique-bucket-name-123456"  # Ensure this name is globally unique
  acl    = "private"
}

resource "aws_dynamodb_table" "my_table" {
  name           = "my-table22"
  billing_mode   = "PROVISIONED"  # You can also use "PAY_PER_REQUEST" if you prefer on-demand pricing
  hash_key       = "id"
  read_capacity  = 5
  write_capacity = 5

  attribute {
    name = "id"
    type = "S"  # 'S' stands for string
  }
  
  tags = {
    Name        = "my-table"
    Environment = "production"
  }
}





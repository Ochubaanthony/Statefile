provider "aws" {
    region = "eu-central-1"
  
}

resource "aws_instance" "Anthony" {
    instance_type =  "t2.micro"
    ami = "ami-0e872aee57663ae2d"
    
  
}

resource "aws_s3_bucket" "s3_bucket" {
    bucket = "anthony-s3-demo-xyz"
  
}

resource "aws_dynamodb_table" "terraform_lock" {
  name           = "terraform-lock"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
}
terraform {
    required_version = "~> 1.0"
    required_providers {
      aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
      }
    }
}

provider "aws" {
    region = "us-east-1"
}

provider "aws" {
  region = "us-west-1"
  alias = "us-west"
}

resource "aws_s3_bucket" "us-east-1" {
    bucket = "some-random-bucket-name-idew~~~jcifur3"
}

resource "aws_s3_bucket" "us-west-1" {
    bucket = "some-random-bucket-name-idew~~~jcifur3-west"
    provider = aws.us-west
  
}
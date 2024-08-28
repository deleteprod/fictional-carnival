terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "eu-north-1"
  # Stockholm - default for AWS Free Tier for me
}

# Start building
resource "aws_instance" "phobos" {
  # Ubuntu 22.04 on amd64 architecture
  ami           = "ami-0b8d1de8e3c980297"
  instance_type = "t2.micro"

  tags = {
    Name = "Learning Terraform"
  }
}

resource "aws_instance" "deimos" {
  # Ubuntu 22.04 on amd64 architecture
  ami           = "ami-0b8d1de8e3c980297"
  instance_type = "t2.micro"

  tags = {
    Name = "Learning Terraform Too"
  }
}
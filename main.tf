terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  #profile = "default"
  region = "eu-west-1"
  # Dublin
}

# Start building
resource "aws_instance" "phobos" {
  # Ubuntu 24.04 on amd64 architecture
  ami           = "ami-03cc8375791cb8bcf"
  instance_type = "t2.micro"

  tags = {
    Name = "Learning Terraform"
  }
}

resource "aws_instance" "deimos" {
  # Ubuntu 24.04 on amd64 architecture
  ami           = "ami-03cc8375791cb8bcf"
  instance_type = "t2.micro"

  tags = {
    Name = "Learning Terraform Too"
  }
}
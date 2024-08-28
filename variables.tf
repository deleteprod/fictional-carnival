variable "region" {
  description = "AWS region for deployment"
  # Default to Dublin
  default = "eu-west-1"
}

variable "instance_type" {
  description = "instance_type"
  type        = string
  default     = "t2.micro"
}

#variable "cidr_block" {
#  description = "CIDR Block"
#  type = string
#}

# Attempt at maps and lookups
variable "ami_location" {
  type = map(string)
  default = {
    dublin    = "ami-03cc8375791cb8bcf"
    london    = "ami-01ec84b284795cbc7"
    frankfurt = "ami-0e04bcbe83a83792e"
    paris     = "ami-04a92520784b93e73"
  }
}

variable "region_map" {
  type = map(string)
  default = {
    dublin    = "eu-west-1"
    london    = "eu-west-2"
    frankfurt = "eu-central-1"
    paris     = "eu-west-3"
  }
}
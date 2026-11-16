variable "project" {
  type = string 
  default = "roboshop"
}

variable "environment" {
  type = string
  default = "dev"
}

variable "component" {
  type = string
  default = "test"
}

variable "ami_id" {
  description = "The AMI ID to use for the instance"
  type        = string
  default = "ami-0e9262cbb2344d5ee"
}

variable "instance_type" {
  description = "The instance type to use for the instance"
  type        = string
  default = "t3.micro"

  validation {
    condition = contains(["t3.micro", "t3.small"], var.instance_type)
    error_message = "Instance type should be either t3.micro or t3.small"
  }
}

# variable "sg_ids" {
#     type = list(string)
# }

variable "ec2_tags" {
  default = {}
  type = map  
}

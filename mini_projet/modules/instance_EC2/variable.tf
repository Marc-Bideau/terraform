variable "maintainer" {
    type = string 
    default = "marc"
}

variable "instance_type" {
    type = string 
    default = "t2.nano"
}

variable "ssh_key"{
    type = string 
    default ="devops-marc"
}

variable "sg_name" {
    type = string 
    default = "NULL"
}

variable "public_ip"{
    type = string 
    default = "NULL"
}
variable "AZ"{
    type = string
    default ="us-east-1b"
}
variable "user"{
    type = string 
    default = "ubuntu"
}
variable aws_common_tag {
  type        = map
  description = "Set aws tag"
  default = {
    Name = "ec2-marc"
  }
}
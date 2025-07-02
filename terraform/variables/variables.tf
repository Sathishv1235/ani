variable "ami_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "AMI ID of DevOps"
}

variable "instance_type" {
    type = string
    default="t3.micro"
}

variable "ec2-tag" {
    default = "Lab-EC2"
}

variable "aws_resource_grp" {
    
}
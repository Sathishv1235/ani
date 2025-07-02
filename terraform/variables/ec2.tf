

resource "aws_instance" "LAB1" {
  ami           = var.ami_id
  instance_type = "t3.micro"
  vpc_security_group_ids = [ aws_security_group.sathish_sg1.id]

  tags = {
    Name = "HelloWorld"
  }
}
resource "aws_security_group" "sathish_sg1" {
    name    = "sathish_sg1"
    description = "allow all traffic"
    tags = {
        name = "sathish SG1"
    }
    ingress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }
    
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks      = ["0.0.0.0/0"]
        ipv6_cidr_blocks = ["::/0"]
    }


}

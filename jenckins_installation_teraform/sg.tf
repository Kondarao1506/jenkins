resource  "aws_security_group" "allow_ssh"{
    description = "allow 22 port"
    name = "allow_ssh"
    tags = {
    Name = "allow_ssh"
  }
    egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
   
    ingress {                   #allow all
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
    
}
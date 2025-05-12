resource "aws_instance" "Master" {
ami = data.aws_ami.ami.id
instance_type = "t3.micro"
vpc_security_group_ids = [aws_security_group.allow_ssh.id]
user_data = file("jenckins_installation.sh")
tags = {
    Name = "jenkins-Master"
  }
}

resource "aws_instance" "jenkins_agent" {
ami = data.aws_ami.ami.id
instance_type = "t3.micro"
vpc_security_group_ids = [aws_security_group.allow_ssh.id]
user_data = file("java_instalation.sh")
tags = {
    Name = "jenkins-agent1"
  }
}
resource "aws_security_group" "private_sg" {
  name   = "private-sg"
  vpc_id = aws_vpc.test.id
  
  ingress {
    description = "SSH"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    security_groups = [aws_security_group.public_sg.id]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }


  tags = {
    Name = "private-sg"
  }

  
}

data "http" "my_ip" {
  url = "https://checkip.amazonaws.com/"
}
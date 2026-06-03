resource "aws_instance" "web_server" {
  ami                         = "ami-0b53194d9d4d5cfea"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.public_subnet.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  key_name = "terraform-key"

  tags = {
    Name = "web-server"
  }
}
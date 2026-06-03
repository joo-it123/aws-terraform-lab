resource "aws_instance" "private_ec2" {
  ami           = "ami-0b53194d9d4d5cfea"
  instance_type = "t2.micro"

  subnet_id              = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.private_sg.id]
  key_name = "terraform-key"

  tags = {
    Name = "private-ec2"
  }
}
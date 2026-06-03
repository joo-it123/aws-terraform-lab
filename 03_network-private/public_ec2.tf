resource "aws_instance" "public_ec2" {
  ami           = "ami-0b53194d9d4d5cfea"
  instance_type = "t2.micro"

  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.public_sg.id]
  key_name = "terraform-key"

  tags = {
    Name = "public-ec2"
  }
}

#EIP
resource "aws_eip" "ec2_eip" {
  instance = aws_instance.public_ec2.id

  tags = {
    Name = "ec2-eip"
  }
}
resource "aws_instance" "test_ec2" {
  ami                    = "ami-0b53194d9d4d5cfea"
  instance_type          = "t2.micro"
  vpc_security_group_ids = [aws_security_group.test_sg.id]
  key_name               = "terraform-key"

  tags = {
    Name = "terraform-test-ec2"
  }
}
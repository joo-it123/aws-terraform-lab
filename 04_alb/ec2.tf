resource "aws_instance" "private_a" {
  ami                    = "ami-0d71b1617df761282"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private_a.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

# ALB Health Check確認用の簡易Webサーバー
# user_data = <<-EOF
# #!/bin/bash
# cd /tmp
# echo "private-a" > index.html
# nohup python3 -m http.server 80 > /tmp/http.log 2>&1 &
# EOF

  tags = {
    Name = "private-a-ec2"
  }
}

resource "aws_instance" "private_c" {
  ami                    = "ami-0d71b1617df761282"
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.private_c.id
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

# ALB Health Check確認用の簡易Webサーバー
# user_data = <<-EOF
# #!/bin/bash
# cd /tmp
# echo "private-c" > index.html
# nohup python3 -m http.server 80 > /tmp/http.log 2>&1 &
# EOF

  tags = {
    Name = "private-c-ec2"
  }
}
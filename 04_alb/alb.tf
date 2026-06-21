resource "aws_lb" "main_alb" {
  name               = "main-alb"
  internal           = false
  load_balancer_type = "application"

  security_groups = [
    aws_security_group.alb_sg.id
  ]

  subnets = [
    aws_subnet.public_a.id,
    aws_subnet.public_c.id
  ]
}

resource "aws_lb_target_group" "main_tg" {
  name     = "main-tg"
  port     = 80
  protocol = "HTTP"
  vpc_id   = aws_vpc.main_vpc.id

  health_check {
    path = "/"
  }
}

resource "aws_lb_target_group_attachment" "private_a" {
  target_group_arn = aws_lb_target_group.main_tg.arn
  target_id        = aws_instance.private_a.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "private_c" {
  target_group_arn = aws_lb_target_group.main_tg.arn
  target_id        = aws_instance.private_c.id
  port             = 80
}


resource "aws_lb_listener" "http" {
  load_balancer_arn = aws_lb.main_alb.arn

  port     = 80
  protocol = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.main_tg.arn
  }
}
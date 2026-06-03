resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.test.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "Private"
  }
}
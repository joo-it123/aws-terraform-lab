resource "aws_internet_gateway" "test_igw" {
  vpc_id = aws_vpc.test.id

  tags = {
    Name = "test-igw"
  }
}
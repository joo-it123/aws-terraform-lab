resource "aws_nat_gateway" "test_nat" {
  allocation_id = aws_eip.nat_eip.id
  subnet_id     = aws_subnet.public.id

  tags = {
    Name = "test-nat"
  }
}  

# Elastic IP
resource "aws_eip" "nat_eip" {
  tags = {
    Name = "nat-eip"
  }
}
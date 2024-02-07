#resource "aws_eip" "nat" {
#  vpc = true
#
#  tags = {
#    Name = "${local.name_prefix}-eip"
#  }
#}
#
#resource "aws_nat_gateway" "nat" {
#  allocation_id = aws_eip.nat.id
#  subnet_id     = aws_subnet.public-us-east-1a.id
#
#  tags = {
#    Name = "${local.name_prefix}-nat"
#  }
#
#  depends_on = [aws_internet_gateway.igw]
#}
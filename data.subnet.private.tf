data "aws_subnet_ids" "private" {
  vpc_id = data.aws_vpc.vpc.id

  tags = {
    Name = "${var.private_tag}*}"
  }
}

data "aws_subnet" "private" {
  count = length(data.aws_subnet_ids.private.ids)
  id    = data.aws_subnet_ids.private.ids[count.index]
}

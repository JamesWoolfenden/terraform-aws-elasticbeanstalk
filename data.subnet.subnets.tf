data "aws_subnet_ids" "subnets" {
  vpc_id = data.aws_vpc.vpc.id

  tags = {
    Name = var.vpc["subnets_tag"]
  }
}

data "aws_subnet" "subnets" {
  count = length(data.aws_subnet_ids.subnets.ids)
  id    = tolist(data.aws_subnet_ids.subnets.ids)[count.index]
}

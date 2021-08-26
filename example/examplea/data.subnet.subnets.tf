data "aws_subnet_ids" "subnets" {
  vpc_id = tolist(data.aws_vpcs.vpc.ids)[0]

  tags = {
    Name = var.vpc["subnets_tag"]
  }
}

data "aws_subnet" "subnets" {
  count = length(data.aws_subnet_ids.subnets.ids)
  id    = tolist(data.aws_subnet_ids.subnets.ids)[count.index]
}

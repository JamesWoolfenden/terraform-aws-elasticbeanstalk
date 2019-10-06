data "aws_vpc" "vpc" {

  filter {
    name   = var.vpc["tag"]
    values = [var.vpc["NameTag"]]
  }

  default = var.vpc["default"]

}

data "aws_elastic_beanstalk_solution_stack" "stack" {
  most_recent = true

  name_regex = var.stack_reg_ex
}

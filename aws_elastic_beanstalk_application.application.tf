resource "aws_elastic_beanstalk_application" "application" {
  name        = var.application_name
  description = replace(var.application_name, "-", " ")
}

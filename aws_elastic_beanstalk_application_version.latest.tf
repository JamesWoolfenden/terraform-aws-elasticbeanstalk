# define elastic beanstalk app version "latest"
resource "aws_elastic_beanstalk_application_version" "latest" {
  name        = var.name
  application = aws_elastic_beanstalk_application.application.name
  description = "application version created by terraform"
  bucket      = local.ebs_bucket
  key         = var.application_key
  depends_on  = ["aws_elastic_beanstalk_application.application"]
}

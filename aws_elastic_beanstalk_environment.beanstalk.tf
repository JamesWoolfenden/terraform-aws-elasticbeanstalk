resource "aws_elastic_beanstalk_environment" "beanstalk" {
  name                = "${var.application_name}-EB"
  application         = aws_elastic_beanstalk_application.application.name
  solution_stack_name = data.aws_elastic_beanstalk_solution_stack.stack.name
  version_label       = aws_elastic_beanstalk_application_version.latest.name

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "IamInstanceProfile"
    value     = var.launchconfiguration["IamInstanceProfile"]
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "InstanceType"
    value     = var.launchconfiguration["InstanceType"]
  }

  setting {
    namespace = "aws:autoscaling:launchconfiguration"
    name      = "ImageId"
    value     = var.launchconfiguration["ImageId"]
  }


  setting {
    namespace = "aws:elasticbeanstalk:healthreporting:system"
    name      = "SystemType"
    value     = "enhanced"
  }

  setting {
    namespace = "aws:elasticbeanstalk:healthreporting:system"
    name      = "ConfigDocument"
    value     = file("${path.module}/template/config.json")
  }

  setting {
    namespace = "aws:elasticbeanstalk:environment"
    name      = "ServiceRole"
    value     = "aws-elasticbeanstalk-service-role"
  }

  setting {
    namespace = "aws:autoscaling:updatepolicy:rollingupdate"
    name      = "RollingUpdateEnabled"
    value     = var.rollingupdate["RollingUpdateEnabled"]
  }

  setting {
    namespace = "aws:autoscaling:updatepolicy:rollingupdate"
    name      = "RollingUpdateType"
    value     = var.rollingupdate["RollingUpdateType"]
  }

  setting {
    namespace = "aws:autoscaling:updatepolicy:rollingupdate"
    name      = "MinInstancesInService"
    value     = var.rollingupdate["MinInstancesInService"]
  }

  setting {
    namespace = "aws:autoscaling:updatepolicy:rollingupdate"
    name      = "MaxBatchSize"
    value     = var.rollingupdate["MaxBatchSize"]
  }

  setting {
    namespace = "aws:elasticbeanstalk:command"
    name      = "DeploymentPolicy"
    value     = var.DeploymentPolicy
  }


  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MinSize"
    value     = var.asg["minsize"]
  }

  setting {
    namespace = "aws:autoscaling:asg"
    name      = "MaxSize"
    value     = var.asg["maxsize"]
  }

  setting {
    namespace = "aws:elb:listener:${var.asg["instanceport"]}"
    name      = "InstancePort"
    value     = var.asg["instanceport"]
  }

  setting {
    namespace = "aws:elb:loadbalancer"
    name      = "CrossZone"
    value     = var.CrossZone
  }

  setting {
    namespace = "aws:elasticbeanstalk:hostmanager"
    name      = "LogPublicationControl"
    value     = var.LogPublicationControl
  }

  setting {
    namespace = "aws:elasticbeanstalk:cloudwatch:logs"
    name      = "StreamLogs"
    value     = var.StreamLogs
  }

  setting {
    namespace = "aws:elasticbeanstalk:cloudwatch:logs"
    name      = "RetentionInDays"
    value     = var.RetentionInDays
  }

  setting {
    namespace = "aws:elasticbeanstalk:managedactions"
    name      = "ManagedActionsEnabled"
    value     = var.ManagedActions
  }

  setting {
    namespace = "aws:elasticbeanstalk:managedactions:platformupdate"
    name      = "UpdateLevel"
    value     = var.UpdateLevel
  }

  setting {
    namespace = "aws:elasticbeanstalk:managedactions"
    name      = "PreferredStartTime"
    value     = var.PreferredStartTime
  }

  setting {
    namespace = "aws:ec2:vpc"
    name      = "VPCId"
    value     = data.aws_vpc.vpc.id
  }

  setting {
    namespace = "aws:ec2:vpc"
    name      = "ELBScheme"
    value     = var.vpc["ELBScheme"]
  }


  setting {
    namespace = "aws:ec2:vpc"
    name      = "ELBSubnets"

    #comma delimited
    value = join(",", sort(data.aws_subnet_ids.subnets.ids))
  }

  setting {
    namespace = "aws:ec2:vpc"

    #comma delimited
    name  = "Subnets"
    value = join(",", sort(data.aws_subnet_ids.subnets.ids))
  }

  setting {
    namespace = "aws:elasticbeanstalk:application"
    name      = "Application Healthcheck URL"
    value     = var.healthcheck
  }

  tags = var.common_tags
}

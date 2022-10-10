
application_key  = "java-tomcat-v3.zip"
application_name = "generic-beanstalk"
asg = {
  instanceport = "80"
  listenerport = ""
  maxsize      = "2"
  minsize      = "1"
  arn          = ""
}

launchconfiguration = {
  IamInstanceProfile = "aws-elasticbeanstalk-ec2-role"
  InstanceType       = "t2.micro"
  ImageId            = ""
}

CrossZone   = "true"
healthcheck = "/"


LogPublicationControl = "true"
ManagedActions        = "true"
name                  = "latest"
PreferredStartTime    = "Sat:09:00"
RetentionInDays       = "7"
StreamLogs            = "true"
UpdateLevel           = "patch"

rollingupdate = {
  RollingUpdateEnabled  = "true"
  RollingUpdateType     = "Health"
  MinInstancesInService = "1"
  MaxBatchSize          = "1"
}


vpc = {
  default     = false
  NameTag     = "TEST"
  tag         = "tag:Name"
  subnets_tag = "*Public*"
  ELBScheme   = "Internal"
}
#to update:
#aws elasticbeanstalk list-available-solution-stacks
stack_reg_ex = "^64bit Amazon Linux 2018.03 v3.4.0 running Tomcat (.*) Java (.*)"


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
  default     = true
  NameTag     = "Default"
  tag         = "tag:Name"
  subnets_tag = "Default"
  ELBScheme   = "Internal"
}

stack_reg_ex = "^64bit Amazon Linux 2018.03 v3.2.2 running Tomcat (.*) Java (.*)"
common_tags = {
  Application = "Apps"
  Environment = "Dev"
  CostCode    = "0"
  SquadName   = "jim"
  AccountType = "Development"
}

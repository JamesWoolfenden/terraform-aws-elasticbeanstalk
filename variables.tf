variable "application_key" {
  type        = string
  description = ""
}

variable "application_name" {
  type        = string
  description = ""
}

variable "CrossZone" {
  type        = string
  description = ""
}

variable "healthcheck" {
  type        = string
  description = ""
}

variable "LogPublicationControl" {
  type        = string
  description = ""
}

variable "ManagedActions" {
  type        = string
  description = ""
}

variable "name" {
  type        = string
  description = ""
}

variable "PreferredStartTime" {
  type        = string
  description = "For setting Preferred Start Time"
}

variable "RetentionInDays" {
  type        = string
  description = ""
}

variable "stack_reg_ex" {
  type        = string
  description = ""
}

variable "StreamLogs" {
  type        = string
  description = ""
}

variable "UpdateLevel" {
  type        = string
  description = ""
}

variable "DeploymentPolicy" {
  default = "Rolling"
}

variable "asg" {
  type = map(any)
}

variable "launchconfiguration" {
  type = map(any)
}

variable "vpc" {
  type = map(any)
}

variable "rollingupdate" {
  type = map(any)
}

variable "vpc_id" {
  type = string
}
locals {
  ebs_bucket = "beanstalk-${data.aws_caller_identity.current.account_id}"
}

variable "subnet_ids" {

}

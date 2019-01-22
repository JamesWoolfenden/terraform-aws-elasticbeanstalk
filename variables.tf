variable "application_key" {
  type        = "string"
  description = ""
}

variable "application_name" {
  type        = "string"
  description = ""
}

variable "asg-instanceport" {
  type        = "string"
  description = ""
}

variable "asg-listenerport" {
  type        = "string"
  description = ""
}

variable "asg-maxsize" {
  type        = "string"
  description = ""
}

variable "asg-minsize" {
  type        = "string"
  description = ""
}

variable "CrossZone" {
  type        = "string"
  description = ""
}

variable "healthcheck" {
  type        = "string"
  description = ""
}

variable "ImageId" {
  type        = "string"
  description = ""
}

variable "instance_size" {
  type        = "string"
  description = ""
}

variable "LogPublicationControl" {
  type        = "string"
  description = ""
}

variable "ManagedActions" {
  type        = "string"
  description = ""
}

variable "name" {
  type        = "string"
  description = ""
}

variable "PreferredStartTime" {
  type        = "string"
  description = ""
}

variable "private_tag" {
  type        = "string"
  description = ""
}

variable "RetentionInDays" {
  type        = "string"
  description = ""
}

variable "stack_reg_ex" {
  type        = "string"
  description = ""
}

variable "StreamLogs" {
  type        = "string"
  description = ""
}

variable "UpdateLevel" {
  type        = "string"
  description = ""
}

variable "VpcNameTag" {
  type        = "string"
  description = ""
}

variable "common_tags" {
  type = "map"
}

variable depends_on {
  default     = []
  description = "This is a way to make a module depends on, which isnt built in."
  type        = "list"
}

locals {
  ebs_bucket = "beanstalk-${data.aws_caller_identity.current.account_id}"
}

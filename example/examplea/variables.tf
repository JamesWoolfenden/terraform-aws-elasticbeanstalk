variable "application_key" {
  type = string
}
variable "application_name" { type = string }
variable "CrossZone" { type = string }
variable "healthcheck" { type = string }
variable "LogPublicationControl" { type = string }
variable "ManagedActions" { type = string }
variable "name" { type = string }
variable "PreferredStartTime" { type = string }

variable "RetentionInDays" { type = string }
variable "stack_reg_ex" { type = string }
variable "StreamLogs" { type = string }
variable "UpdateLevel" { type = string }

variable "launchconfiguration" {
  type = map
}

variable "asg" { type = map }

variable "vpc" {
  type = map
}


variable "rollingupdate" {
  type = map
}

variable "common_tags" {
  type = map
}

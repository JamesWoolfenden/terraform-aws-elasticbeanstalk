variable "application_key" {
  type = string
}
variable "application_name" { type = string }
variable "asg-instanceport" { type = string }
variable "asg-listenerport" { type = string }
variable "asg-maxsize" { type = string }
variable "asg-minsize" { type = string }
variable "asg-ssl-arn" { type = string }
variable "CrossZone" { type = string }
variable "healthcheck" { type = string }
variable "ImageId" { type = string }
variable "instance_size" { type = string }
variable "LogPublicationControl" { type = string }
variable "ManagedActions" { type = string }
variable "name" { type = string }
variable "PreferredStartTime" { type = string }
variable "private_tag" { type = string }
variable "RetentionInDays" { type = string }
variable "stack_reg_ex" { type = string }
variable "StreamLogs" { type = string }
variable "UpdateLevel" { type = string }
variable "VpcNameTag" { type = string }

variable "common_tags" {
  type = map
}

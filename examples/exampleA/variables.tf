variable "application_key" {}
variable "application_name" {}
variable "asg-instanceport" {}
variable "asg-listenerport" {}
variable "asg-maxsize" {}
variable "asg-minsize" {}
variable "asg-ssl-arn" {}
variable "CrossZone" {}
variable "healthcheck" {}
variable "ImageId" {}
variable "instance_size" {}
variable "LogPublicationControl" {}
variable "ManagedActions" {}
variable "name" {}
variable "PreferredStartTime" {}
variable "private_tag" {}
variable "RetentionInDays" {}
variable "stack_reg_ex" {}
variable "StreamLogs" {}
variable "UpdateLevel" {}
variable "VpcNameTag" {}

variable "common_tags" {
  type = "map"
}

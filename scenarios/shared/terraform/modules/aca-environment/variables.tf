// ------------------
//    PARAMETERS
// ------------------

variable "location" {
  type    = string
  default = "australiaeast"
}

variable "environmentName" {
  type = string
}

variable "logAnalyticsWorkspaceId" {
  type = string
}

variable "subnetId" {
  type = string
}

variable "resourceGroupName" {}


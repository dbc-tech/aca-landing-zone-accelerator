// ------------------
//    PARAMETERS
// ------------------
variable "workloadName" {
  type = string
  validation {
    condition     = length(var.workloadName) >= 2 && length(var.workloadName) <= 10
    error_message = "Name must be greater at least 2 characters and not greater than 10."
  }
}

variable "environment" {
  type = string
  validation {
    condition     = length(var.environment) <= 8
    error_message = "Environment name can't be greater than 8 characters long."
  }
}

variable "location" {
  type    = string
  default = "northeurope"
}

variable "spokeVnetId" {
  type = string
}

variable "hubVnetId" {
  type = string
}

variable "spokeInfraSubnetId" {
  type = string
}

variable "spokeResourceGroupName" {}

variable "hubResourceGroupName" {}

variable "tags" {}

variable "appInsightsName" {
  type = string
  validation {
    condition     = length(var.appInsightsName) >= 4 && length(var.appInsightsName) <= 63
    error_message = "Name must be greater at least 4 characters and not greater than 63."
  }
}

variable "enableTelemetry" {
  type    = bool
  default = true
}

variable "vnetLinks" {}

variable "logAnalyticsWorkspaceId" {}
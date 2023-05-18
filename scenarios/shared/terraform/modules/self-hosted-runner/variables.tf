variable "location" {
  default = "eastus"
}

variable "tags" {
  default = {}
}

variable "subnetId" {
  type = string
}

variable "nicName" {
  default = "runnersNic"
}

variable "vmName" {
  default = "github-runner"
}

variable "adminUsername" {
  default = "azureuser"
}


variable "adminPassword" {
}

variable "resourceGroupName" {
}

variable "size" {
  default = "Standard_B2ms"
}

variable "vmSubnetName" {
  default = "github-runners"
}

variable "projectName" {
  default = "aca-landing-zone-accelerator"
}

variable "runnerToken" {
  
}

variable "runnerGroupName" {
  default = "main-runners"
}

variable "githubOrganization" {
  default = "Azure"
}

variable "runnerName" {
  default = "github-runner"
}
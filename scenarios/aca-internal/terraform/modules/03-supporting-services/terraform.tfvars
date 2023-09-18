// The name of the workloard that is being deployed. Up to 10 characters long. This wil be used as part of the naming convention (i.e. as defined here: https://learn.microsoft.com/azure/cloud-adoption-framework/ready/azure-best-practices/resource-naming) 
workloadName = "lz"
//The name of the environment (e.g. "dev", "test", "prod", "preprod", "staging", "uat", "dr", "qa"). Up to 8 characters long.
environment                         = "sbox"
aRecords                            = []
hubVnetId                           = "/subscriptions/6242290a-ddbf-48a4-9d01-85245644aaee/resourceGroups/rg-sbox-hub-lz-01/providers/Microsoft.Network/virtualNetworks/vnet-sbox-hub-01"
spokeVnetId                         = "/subscriptions/6242290a-ddbf-48a4-9d01-85245644aaee/resourceGroups/rg-sbox-spoke-lz-01/providers/Microsoft.Network/virtualNetworks/vnet-sbox-spoke-01"
spokePrivateEndpointSubnetId        = "/subscriptions/6242290a-ddbf-48a4-9d01-85245644aaee/resourceGroups/rg-sbox-spoke-lz-01/providers/Microsoft.Network/virtualNetworks/vnet-sbox-spoke-01/subnets/snet-pep"
containerRegistryPullRoleAssignment = "acrRoleAssignment"
keyVaultPullRoleAssignment          = "keyVaultRoleAssignment"
clientIP                            =  "220.240.108.45"
tags                                = {}

hubResourceGroupName = "rg-sbox-hub-lz-01"
logAnalyticsWorkspaceId = "/subscriptions/6242290a-ddbf-48a4-9d01-85245644aaee/resourceGroups/rg-sbox-spoke-lz-01/providers/Microsoft.OperationalInsights/workspaces/log-sbox-lz-01"
spokeResourceGroupName = "rg-sbox-spoke-lz-01"
vnetLinks = []
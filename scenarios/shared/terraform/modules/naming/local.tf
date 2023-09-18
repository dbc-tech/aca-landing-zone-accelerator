locals {
  namingBase               = "${var.resourceTypeToken}-${var.environment}-${var.workloadName}-${var.instance}"
  namingBaseUnique         = "${var.resourceTypeToken}-${var.environment}-${var.workloadName}-${var.uniqueId}"
  namingBaseNoWorkloadName = "${var.resourceTypeToken}-${var.environment}-${var.instance}"

  resourceNames = {
    vnetSpoke                              = "${var.resourceTypeAbbreviations.virtualNetwork}-${var.environment}-spoke-${var.instance}"
    vnetHub                                = "${var.resourceTypeAbbreviations.virtualNetwork}-${var.environment}-hub-${var.instance}"
    applicationGateway                     = replace(local.namingBase, var.resourceTypeToken, var.resourceTypeAbbreviations.applicationGateway)
    applicationGatewayNsg                  = "${var.resourceTypeAbbreviations.networkSecurityGroup}-${var.environment}-${var.resourceTypeAbbreviations.applicationGateway}-${var.instance}"
    applicationGatewayPip                  = "${var.resourceTypeAbbreviations.publicIpAddress}-${replace(local.namingBase, var.resourceTypeToken, var.resourceTypeAbbreviations.applicationGateway)}"
    applicationGatewayUserAssignedIdentity = "${var.resourceTypeAbbreviations.managedIdentity}-${replace(local.namingBase, var.resourceTypeToken, var.resourceTypeAbbreviations.applicationGateway)}-KeyVaultSecretUser"
    applicationInsights                    = replace(local.namingBase, var.resourceTypeToken, var.resourceTypeAbbreviations.applicationInsights)
    bastion                                = "${var.resourceTypeAbbreviations.bastion}-${var.environment}-${var.workloadName}-${var.instance}"
    bastionNsg                             = "${var.resourceTypeAbbreviations.networkSecurityGroup}-${var.environment}-${var.resourceTypeAbbreviations.bastion}-${var.instance}"
    bastionPip                             = "${var.resourceTypeAbbreviations.publicIpAddress}-${var.environment}-${var.resourceTypeAbbreviations.bastion}-${var.instance}"
    containerAppsEnvironment               = replace(local.namingBase, var.resourceTypeToken, var.resourceTypeAbbreviations.containerAppsEnvironment)
    containerAppsEnvironmentNsg            = "${var.resourceTypeAbbreviations.networkSecurityGroup}-${var.environment}-${var.resourceTypeAbbreviations.containerAppsEnvironment}-${var.instance}"
    containerRegistry                      = substr(lower(replace(replace(local.namingBaseUnique, var.resourceTypeToken, var.resourceTypeAbbreviations.containerRegistry), "-", "")), 0, 50)
    containerRegistryPep                   = "${var.resourceTypeAbbreviations.privateEndpoint}-${lower(replace(replace(local.namingBaseUnique, var.resourceTypeToken, var.resourceTypeAbbreviations.containerRegistry), "-", ""))}"
    containerRegistryUserAssignedIdentity  = "${var.resourceTypeAbbreviations.managedIdentity}-${lower(replace(replace(local.namingBaseUnique, var.resourceTypeToken, var.resourceTypeAbbreviations.containerRegistry), "-", ""))}-AcrPull"
    cosmosDbNoSql                          = lower(substr(replace(local.namingBaseUnique, var.resourceTypeToken, var.resourceTypeAbbreviations.cosmosDbNoSql), 0, 44))
    cosmosDbNoSqlPep                       = "${var.resourceTypeAbbreviations.privateEndpoint}-${lower(substr(replace(local.namingBaseUnique, var.resourceTypeToken, var.resourceTypeAbbreviations.cosmosDbNoSql), 0, 44))}"
    frontDoorProfile                       = replace(local.namingBase, var.resourceTypeToken, var.resourceTypeAbbreviations.frontDoor)
    keyVault                               = substr(replace(local.namingBaseUnique, var.resourceTypeToken, var.resourceTypeAbbreviations.keyVault), 0, 24)
    keyVaultPep                            = "${var.resourceTypeAbbreviations.privateEndpoint}-${replace(local.namingBaseUnique, var.resourceTypeToken, var.resourceTypeAbbreviations.keyVault)}"
    keyVaultUserAssignedIdentity           = "${var.resourceTypeAbbreviations.managedIdentity}-${replace(local.namingBaseUnique, var.resourceTypeToken, var.resourceTypeAbbreviations.keyVault)}-KeyVaultReader"
    logAnalyticsWorkspace                  = replace(local.namingBase, var.resourceTypeToken, var.resourceTypeAbbreviations.logAnalyticsWorkspace)
    privateEndpointsNsg                    = "${var.resourceTypeAbbreviations.networkSecurityGroup}-${var.environment}-${var.resourceTypeAbbreviations.privateEndpoint}-${var.instance}"
    privateLinkServiceName                 = "${var.resourceTypeAbbreviations.privateLinkService}-${replace(local.namingBase, var.resourceTypeToken, var.resourceTypeAbbreviations.frontDoor)}"
    rgHubName                              = "${var.resourceTypeAbbreviations.resourceGroup}-${var.environment}-hub-${var.workloadName}-${var.instance}"
    rgSpokeName                            = "${var.resourceTypeAbbreviations.resourceGroup}-${var.environment}-spoke-${var.workloadName}-${var.instance}"
    serviceBus                             = replace(local.namingBaseUnique, var.resourceTypeToken, var.resourceTypeAbbreviations.serviceBus)
    serviceBusPep                          = "${var.resourceTypeAbbreviations.privateEndpoint}-${replace(local.namingBaseUnique, var.resourceTypeToken, var.resourceTypeAbbreviations.serviceBus)}"
    vmJumpBox                              = "${var.resourceTypeAbbreviations.virtualMachine}-${var.environment}-jb-${var.instance}"
    vmJumpBoxNsg                           = "${var.resourceTypeAbbreviations.networkSecurityGroup}-${var.environment}-jb-${var.resourceTypeAbbreviations.virtualMachine}-${var.instance}"
    vmJumpBoxNic                           = "${var.resourceTypeAbbreviations.networkInterface}-${var.environment}-jb-${var.instance}"
  }
}

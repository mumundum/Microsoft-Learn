resource storageAccount 'Microsoft.Storage/storageAccounts@2023-05-01' = {
  name: 'toylaunchstorage07a60c28'
  location: 'WestEurope'
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

resource appServicePlan 'Microsoft.Web/serverfarms@2024-04-01' = {
  name: 'toy-product-launch-plan-starter'
  location: 'WestEurope'
  sku: {
    name: 'F1'
  }
}

resource appServiceApp 'Microsoft.Web/sites@2024-04-01' = {
  name: 'toy-product-launch-07a60c28'
  location: 'WestEurope'
  properties: {
    serverFarmId: appServicePlan.id
    httpsOnly: true
  }
}

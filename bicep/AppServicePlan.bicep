param pLocation string
param pSkuName string
param pAppServiceplan string
param pWebAppName string
//param pSlotName string

resource azbicepAppServicePlan 'Microsoft.Web/serverfarms@2020-12-01' = {
  name: pAppServiceplan
  location: pLocation
  sku: {
    name: pSkuName
    capacity: 1
  }
}

resource azbicepAppService 'Microsoft.Web/sites@2022-09-01' = {
  name: pWebAppName
  location: pLocation
  properties: {
    serverFarmId: azbicepAppServicePlan.id
  }
}

// resource stagingSlot 'Microsoft.Web/sites/slots@2021-02-01' = {
//   name: pSlotName
//   parent: azbicepAppService
//   location: pLocation
//   kind: 'app'
//   properties: {
//     serverFarmId: azbicepAppServicePlan.id
//   }
// }

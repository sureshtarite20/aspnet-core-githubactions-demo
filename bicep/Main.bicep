param pLocation string 
param pSkuName string
param pAppServiceplan string
param pWebAppName string
//param pSlotName string ='staging'


module mAppServicePlan 'AppServicePlan.bicep'={
  name: 'AppServiceplan'
  params: {
    pLocation: pLocation
    pSkuName: pSkuName
    pAppServiceplan: pAppServiceplan
    pWebAppName: pWebAppName
    //pSlotName: pSlotName
  }  
}

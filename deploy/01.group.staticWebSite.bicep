targetScope = 'resourceGroup'

param location string

resource staticWebApp 'Microsoft.Web/staticSites@2023-12-01' = {
  name: uniqueString('blogSite', location)
  location: location
}

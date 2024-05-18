targetScope = 'subscription'

param location string

resource resourceGroup 'Microsoft.Resources/resourceGroups@2024-03-01' = {
  name: uniqueString('blog', location)
  location: location
}

output resourceGroupName string = resourceGroup.name

resource "azurerm_resource_group" "aks" {
  name     = "myAKSResourceGroup"
  location = "East US"
}

resource "azurerm_kubernetes_cluster" "aks_cluster2" {
  name                = "myAKSClusteryaml2"
  location            = azurerm_resource_group.aks.location
  resource_group_name = azurerm_resource_group.aks.name
  dns_prefix          = "myakscluster2"

 default_node_pool {
   name="defaulut"
   node_count = 1
  vm_size="Standard_D2_v2"
 }

service_principal {
  client_id = "ea2c4a48-148a-4e8c-a8bb-eddd5c014fef"
  client_secret = "_ou8Q~ux6dwBc_kTw1Zd~O3jCusej0lo6SjYvaSn"
  
}

}
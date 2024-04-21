resource "random_pet" "rg_name" {
  prefix = var.resource_group_name_prefix
}
resource "azurerm_kubernetes_cluster" "k8s" {
  location            = var.region
  name                = var.cluster_name
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix
   kubernetes_version  = var.kubernetes_version
  
  default_node_pool {
    name       = var.node_pool_name
    vm_size    = var.vm_size 
    node_count = var.agent_count 
    vnet_subnet_id     = var.az_subnet_id
      }
  
  
  identity {
    type = "SystemAssigned"
  }
}
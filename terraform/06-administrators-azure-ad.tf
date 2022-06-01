resource "azuread_group" "aks_administrators" {
  display_name = "${azurerm_resource_group.rg.name}-cluster-administrators"
  description = "Azure AKS Kubernetes administrators for the ${azurerm_resource_group.rg.name}-cluster."
}

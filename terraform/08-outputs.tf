# Create Outputs
# 1. Resource Group Location
# 2. Resource Group Id
# 3. Resource Group Name
# 4. Virtual Networks
# 5. Subnets
# 6. API Gateway

# Resource Group Outputs
output "location" {
  value = azurerm_resource_group.rg.location
}

output "resource_group_id" {
  value = azurerm_resource_group.rg.id
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}

# Azure AKS Versions Datasource
output "versions" {
  value = data.azurerm_kubernetes_service_versions.current.versions
}

output "latest_version" {
  value = data.azurerm_kubernetes_service_versions.current.latest_version
}

# Azure AD Group Object Id
output "azure_ad_group_id" {
  value = azuread_group.aks_administrators.id
}
output "azure_ad_group_objectid" {
  value = azuread_group.aks_administrators.object_id
}

# Azure AKS Outputs
output "aks_cluster_id" {
  value = azurerm_kubernetes_cluster.aks_cluster.id
}

output "aks_cluster_name" {
  value = azurerm_kubernetes_cluster.aks_cluster.name
}

output "aks_cluster_kubernetes_version" {
  value = azurerm_kubernetes_cluster.aks_cluster.kubernetes_version
}

# Virtual Network Outputs
## Virtual Network Name
output "virtual_network_name" {
  description = "Virtual Network Name"
  value = azurerm_virtual_network.vnet.name
}
## Virtual Network ID
output "virtual_network_id" {
  description = "Virtual Network ID"
  value = azurerm_virtual_network.vnet.id
}

# Subnet Outputs
## Subnet web
output "web_subnet_name" {
  description = "WebTier Subnet Name"
  value = azurerm_subnet.websubnet.name
}

## Subnet ID 
output "web_subnet_id" {
  description = "WebTier Subnet ID"
  value = azurerm_subnet.websubnet.id
}

# Network Security Outputs
## Web Subnet NSG Name 
output "web_subnet_nsg_name" {
  description = "WebTier Subnet NSG Name"
  value = azurerm_network_security_group.web_subnet_nsg.name
}

## app Subnet NSG ID 
output "app_subnet_nsg_id" {
  description = "AppTier Subnet NSG ID"
  value = azurerm_network_security_group.app_subnet_nsg.id
}
## Subnet app
output "app_subnet_name" {
  description = "AppTier Subnet Name"
  value = azurerm_subnet.appsubnet.name
}

## Subnet ID 
output "app_subnet_id" {
  description = "AppTier Subnet ID"
  value = azurerm_subnet.appsubnet.id
}

# Network Security Outputs
## App Subnet NSG Name 
output "app_subnet_nsg_name" {
  description = "WebTier Subnet NSG Name"
  value = azurerm_network_security_group.app_subnet_nsg.name
}

## App Subnet NSG ID 
output "web_subnet_nsg_id" {
  description = "WebTier Subnet NSG ID"
  value = azurerm_network_security_group.app_subnet_nsg.id
}

# Application Gateway Outputs
output "web_ag_id" {
  description = "Azure Application Gateway ID"  
  value = azurerm_application_gateway.web_ag.id 
}

output "web_ag_public_ip_1" {
  description = "Azure Application Gateway Public IP 1"  
  value = azurerm_public_ip.web_ag_publicip.ip_address
}


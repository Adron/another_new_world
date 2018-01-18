variable "linux_admin_username" {
  type        = "string"
  description = "Linux admin username."
}

variable "ssh_key" {
  type        = "string"
  description = "SSH Key for Kubernetes Clusters."
}

// Azure Variables
variable "azure_node_count" {
  type        = "string"
  description = "Count of cluster instances to start."
}

variable "azure_cluster_prefix" {
  type        = "string"
  description = "The prefix for the Azure cluster."
}

// Secrets variables
variable "subscription_id" {}
variable "client_id" {}
variable "client_secret" {}
variable "tenant_id" {}

// Output variables
output "get_credentials_command" {
  value = "az acs kubernetes get-credentials --name=\"${azurerm_container_service.bluekuby.name}\" --resource-group=\"${azurerm_resource_group.zura_resource_group.name}\""
}

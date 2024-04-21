
variable "cluster_name" {
  type        = string
  
}
variable "dns_prefix" {

  type        = string
}
variable "region" {
  
  type        = string
 
}
variable "agent_count" {
    type        = string
  
}
variable "resource_group_name" {
  type        = string
 
}
variable "az_subnet_id" {
  type        = string
 
}
variable "resource_group_name_prefix" {
   type        = string
  default     = "arm-aks-demo-rg"
  
}
variable "kubernetes_version" {
    type = string
  
}
variable "node_pool_name" {
    type = string
  
}
variable "vm_size" {
    type = string
  
}
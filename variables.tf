//DATA
variable "resource_group" {
  description = "(Required) The name of the resource group in which the Log Analytics workspace is created."
  type        = string

}

//LWK
variable "lwk_sku_name" {
  type        = string
  description = "(Required) Specifies the Sku of the Log Analytics Workspace. Possible values are Free, PerNode, Premium, Standard, Standalone, Unlimited, CapacityReservation, and PerGB2018 (new Sku as of 2018-04-03)."
  default     = "PerGB2018"
}

//NAMING VARIABLES
variable "name" {
  description = "(Required) The name of the Log Analytics Workspace. Changing this forces a new resource to be created."
  type        = string
}

variable "environment" {
  description = "(Required) The code of the environment. Used for Naming. (3 characters). Changing this forces a new resource to be created."
  type        = string
}

variable "location" {
  description = "(Required) Specifies the supported Azure location where the Resource Group exists. Changing this forces a new resource to be created."
  type        = string
}


// TAGGING VARIABLES
variable "description" {
  description = "(Required) This tag will allow the resource operator to provide additional context information."
  type        = string
}

variable "custom_tags" {
  description = "(Optional) Aditional tags."
  type        = map(any)
  default     = {}
}

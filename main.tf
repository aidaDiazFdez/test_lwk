data "azurerm_resource_group" "resource_group" {
  name = var.resource_group
}

locals {

  regions = {
    brazilsouth = "zb1"
    eastus      = "zu1"
    eastus2     = "zu2"
    northeurope = "neu"
    westeurope  = "weu"
    uksouth     = "suk"
  }

  geo_region = lookup(local.regions, var.location)

}

resource "azurerm_log_analytics_workspace" "log_analytics" {
  name                = join("", [var.name, var.environment, local.geo_region, "lwk"])
  location            = var.location
  resource_group_name = data.azurerm_resource_group.resource_group.name
  sku                 = var.lwk_sku_name

  tags = merge({
    description = var.description
  }, var.custom_tags)
}

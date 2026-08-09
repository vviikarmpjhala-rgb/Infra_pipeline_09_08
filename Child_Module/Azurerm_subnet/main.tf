resource "azurerm_subnet" "dev_subnet" {
  for_each             = var.dev_subnets
  name                 = each.value.name
  resource_group_name  = each.value.rg_name
  virtual_network_name = each.value.vnet_name
  address_prefixes     = each.value.address_prefixes
}

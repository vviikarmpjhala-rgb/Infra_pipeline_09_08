resource "azurerm_resource_group" "dev-rg" {
    for_each   = var.dev_rgs
    name = each.value.name
    location   = each.value.location
    managed_by = each.value.managed_by
}
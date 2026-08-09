module "pdev_rg" {
  source  = "../../Child_Module/Resource_Group"
  dev_rgs = var.pdev_rgs
}

module "pdev_vnet" {
  depends_on = [module.pdev_rg]
  source     = "../../Child_Module/Azurerm_virtual_Network"
  dev_vnets  = var.pdev_vnets
}
module "pdev_subnets" {
  depends_on  = [module.pdev_vnet]
  source      = "../../Child_Module/Azurerm_subnet"
  dev_subnets = var.pdev_subnets
}


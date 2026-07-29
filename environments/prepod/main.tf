module "resource_group" {
  source = "../../modules/azurerm_resource_group"
  rgs    = var.rgs

}

module "virtual_network" {
  source = "../../modules/azurerm_virtual_network"
  vnet   = var.vnet

}

module "subnet" {
  source  = "../../modules/azurerm_subnet"
  subnets = var.subnets
}

module "public_ip" {
  source     = "../../modules/azurerm_public_ip"
  public_ips = var.public_ips
}

module "virtual_machine" {
  source = "../../modules/azurerm_virtual_machine"
  vms    = var.vms
}
locals {
  vnet_name   = "${var.name}-vnet"
  subnet_name = "${var.name}-subnet"
  pip_name    = "${var.name}-pip"
  nsg_name    = "${var.name}-nsg"
  nic_name    = "${var.name}-nic"
  vm_name     = "${var.name}-vm"
}
output "public_ip_address_id" {
    value = azurerm_linux_virtual_machine.linuxvm.public_ip_address
}

output "username" {
  value = azurerm_linux_virtual_machine.linuxvm.admin_username
}

output "sshkey" {
  value = azurerm_linux_virtual_machine.linuxvm.admin_ssh_key
}
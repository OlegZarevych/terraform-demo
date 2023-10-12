module "linux_vm" {
  source = "./vm"
  name   = "demo"
}

resource "local_file" "private_key" {
  content  = module.linux_vm.tls_private_key
  filename = "private_key.pem"
}

# module "linux_vm_with_count" {
#   source = "./vm"
#   count = 2
#   name   = "demo${count.index}"
# }

# module "linux_vm_with_foreach" {
#   for_each = toset(["demo-each1", "demo-each2"])
#   source = "./vm"
#   name   = each.key
# }
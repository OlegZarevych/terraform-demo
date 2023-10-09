module "linux_vm" {
  source = "./vm"
  name   = "demo"
}

resource "local_file" "private_key" {
  content  = module.linux_vm.tls_private_key
  filename = "private_key.pem"
}
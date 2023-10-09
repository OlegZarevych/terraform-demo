variable "rg_name" {
  type        = string
  description = "Resource group name"
  default     = "tf-demo"
}

variable "location" {
  type        = string
  description = "Azure region"
  default     = "West Europe"
}

variable "name" {
  type        = string
  description = "Name which we will use around whole module"
}

variable "tags" {
  type = map(any)
  default = {
    "env"       = "demo",
    "terraform" = "true"
  }

}

variable "enable_public_ip" {
  type        = bool
  default     = true
  description = "Enable public IP for VM"
}
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
    type = string
    description = "Name which we will use around whole module"
}

variable "tags" {
    type = map
    default = {
        "env" = "demo",
        "terraform" = "true"
    }
  
}
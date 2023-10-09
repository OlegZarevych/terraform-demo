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

variable "app_service_name" {
  type        = string
  description = "App Service name"
}
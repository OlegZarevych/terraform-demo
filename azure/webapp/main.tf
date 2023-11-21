resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location

  tags = var.tags
}

resource "azurerm_service_plan" "plan" {
  name                = "${var.name}-plan"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  os_type             = "Linux"
  sku_name            = "B1"
}

resource "azurerm_linux_web_app" "web_app" {
  name                = "${var.name}-web"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_service_plan.plan.location
  service_plan_id     = azurerm_service_plan.plan.id

  site_config {
    
    application_stack {
        docker_image_name = var.docker_image_name
    }
  }

}
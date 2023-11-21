output "hostname" {
  value       = azurerm_linux_web_app.web_app.default_hostname
  description = "Linux Web App default hostname"
}
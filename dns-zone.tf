resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}

resource "azurerm_dns_zone" "example-public" {
  name                = "darkbagel.com"
  resource_group_name = azurerm_resource_group.example.name
}

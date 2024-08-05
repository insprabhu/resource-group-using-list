resource "random_string" "rg_name" {
    length = 9
    upper = false
    numeric = false
    special = true
}

resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = random_string.rg_name.id
}

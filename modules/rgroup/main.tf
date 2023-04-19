resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.rg_location
  tags = {
    Name              = "Automation Project – Assignment 2"
    GroupMembers      = "rahul_soni"
    ExpirationDate    = "2023-06-30"
    Environment       = "Lab"
  }
}
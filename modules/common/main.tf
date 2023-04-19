resource "azurerm_log_analytics_workspace" "law" {
  name                = var.law_name
  location            = var.law_location
  resource_group_name = var.rg_name
  tags = {
    Name              = "Automation Project – Assignment 2"
    GroupMembers      = "rahul_soni"
    ExpirationDate    = "2023-06-30"
    Environment       = "Lab"
  }
}

resource "azurerm_recovery_services_vault" "rsv" {
  name                = var.rsv_name
  location            = var.rsv_location
  resource_group_name = var.rg_name
  sku                 = "Standard"
  tags = {
    Name              = "Automation Project – Assignment 2"
    GroupMembers      = "rahul_soni"
    ExpirationDate    = "2023-06-30"
    Environment       = "Lab"
  }
}

resource "azurerm_storage_account" "sa" {
  name                     = var.sa_name
  resource_group_name      = var.rg_name
  location                 = var.sa_location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  tags = {
    Name              = "Automation Project – Assignment 2"
    GroupMembers      = "rahul_soni"
    ExpirationDate    = "2023-06-30"
    Environment       = "Lab"
  }
}



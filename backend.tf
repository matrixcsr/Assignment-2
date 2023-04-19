terraform {
  backend "azurerm" {
    storage_account_name = "tfstate98359sa"
    resource_group_name  = "tfstate8359RG"
    container_name       = "tfstatefiles"
    key                  = "KP2xZJSuKQssTodtlpTQLSEfdfLf4RKpSuYgWZ/7+AUDt2P4HxCadkgc/8IkkOJhI44r00hvmBCv+ASt3JHS9Q=="
  }
}
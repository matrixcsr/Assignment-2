resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  resource_group_name = var.rg_name
  address_space       = var.vnet_address_space
  location            = var.vnet_location
  tags = {
    Name              = "Automation Project – Assignment 2"
    GroupMembers      = "rahul_soni"
    ExpirationDate    = "2023-06-30"
    Environment       = "Lab"
  }
}

resource "azurerm_subnet" "subnet" {
  resource_group_name  = var.rg_name
  name                 = var.subnet_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = var.subnet_address_prefixes
  tags = {
    Name              = "Automation Project – Assignment 2"
    GroupMembers      = "rahul_soni"
    ExpirationDate    = "2023-06-30"
    Environment       = "Lab"
  }
}
resource "azurerm_network_security_group" "network-nsg1" {
  name                = "nsg1"
  location            = var.vnet_location
  resource_group_name = var.rg_name

  # Not required, but it's safer to add them
  security_rule {
    name                       = "rule1"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "22"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }
  security_rule {
    name                       = "rule2"
    priority                   = 200
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "Tcp"
    source_port_range          = "*"
    destination_port_range     = "3389"
    source_address_prefix      = "*"
    destination_address_prefix = "*"
  }

}
resource "azurerm_subnet_network_security_group_association" "network-subnet1-nsg1" {
  subnet_id                 = azurerm_subnet.subnet.id
  network_security_group_id = azurerm_network_security_group.network-nsg1.id
}

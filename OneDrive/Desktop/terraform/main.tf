terraform {
  backend "azurerm" {
    resource_group_name = "rg-d"
    storage_account_name = "dstorageaccount123"
    container_name = "container123"
    key = "terraform.tfstate"
    
  }
}

provider "azurerm" {
  tenant_id       = "077104d2-9b90-4ca9-8afb-9657962a1309"
  subscription_id = "0af70dac-a1c3-49b9-913e-41d1d2168474"
  client_id       = "f204becf-f10e-4392-9812-b73a19008397"
  client_secret   = "gkQ8Q~~hj4lK7ZLObS5ipJfGduEHQtgB0Q0reb~I"
  features {}
}

resource "azurerm_resource_group" "my_resource_group" {
  name     = "rg-d123"
  location = "Central India"
}

# resource "azurerm_storage_account" "my_storage_account" {
#   name                     = "dstore"
#   resource_group_name      = azurerm_resource_group.my_resource_group.name
#   location                 = azurerm_resource_group.my_resource_group.location
#   account_tier             = "Standard"
#   account_replication_type = "LRS"
# }
# # create container in the storage account to store the tfstate file
# resource "azurerm_storage_container" "name1" {
#   storage_account_name = azurerm_storage_account.my_storage_account.name
#   name = "tfstate"
# }
# add the tfstate file to the container through terraform backend


# resource "azurerm_virtual_network" "name" {
#   name = "dv-net"
#   address_space = ["10.0.0.0/16"]
#   resource_group_name = azurerm_resource_group.my_resource_group.name
#   location = azurerm_resource_group.my_resource_group.location
# }

# resource "azurerm_subnet" "example" {
#   name = "dsub-net"
#   resource_group_name = azurerm_resource_group.my_resource_group.name
#   virtual_network_name = azurerm_virtual_network.name.name
#   address_prefixes = ["10.0.1.0/24"]
# }

# resource "azurerm_network_interface" "name" {
#   name = "example-nic"
#   location = azurerm_resource_group.my_resource_group.location
#   resource_group_name = azurerm_resource_group.my_resource_group.name
#   ip_configuration {
#     name = "internal"
#     subnet_id = azurerm_subnet.example.id
#     private_ip_address_allocation = "Dynamic"
#     public_ip_address_id = azurerm_public_ip.my_public_ip0.id
#   }
# }

# resource "azurerm_windows_virtual_machine" "name" {
#   name = "dvmwindows"
#   resource_group_name = azurerm_resource_group.my_resource_group.name
#   location = azurerm_resource_group.my_resource_group.location
#   size = "Standard_F2"
#   admin_username = "vmwinuser"
#   admin_password = "User@vm123"
#   network_interface_ids = [
#     azurerm_network_interface.name.id
#   ]
#   os_disk {
#     caching = "ReadWrite"
#     storage_account_type = "Standard_LRS"
#   }
#   source_image_reference {
#     publisher = "MicrosoftWindowsServer"
#     offer = "WindowsServer"
#     sku = "2016-Datacenter"
#     version = "latest"
#   }
# }
# resource "azurerm_public_ip" "my_public_ip0" {
#   name = "vmwin-ip"
#   resource_group_name = azurerm_resource_group.my_resource_group.name
#   location = azurerm_resource_group.my_resource_group.location
#   allocation_method = "Dynamic"
# }



# LUIS
# helps developers build applications to undersatnd and interpret natural language
# uses ML to analyze user intentions, entity recognition, respond contextually
# resource "azurerm_cognitive_account" "luis" {
#   name = "luis-service"
#   resource_group_name = azurerm_resource_group.my_resource_group.name
#   location = azurerm_resource_group.my_resource_group.location
#   kind = "LUIS"
#   sku_name = "S1"
# }


# AZURE APP SERVICES
#platform for building, deploying and scaling web apps
# simplify process of creating and hosting web apps, bachends, restful apis
# supports continuous integration and deployment workflows (connect to gtihub or devops to automate deployment process)

# resource "azurerm_service_plan" "example" {
#   name = "app-service-plan-ex"
#   location = azurerm_resource_group.my_resource_group.location
#   resource_group_name = azurerm_resource_group.my_resource_group.name
#   os_type = "Windows"
#   sku_name = "P1v2"
# }
# resource "azurerm_windows_web_app" "name" {
#   name = "Windows-service123"
#   resource_group_name = azurerm_resource_group.my_resource_group.name
#   location = azurerm_resource_group.my_resource_group.location
#   service_plan_id = azurerm_service_plan.example.id

#   site_config {}
# }

# Azure key vault used to store and access passwords, api keys, certificates
# resource "azurerm_key_vault" "name" {
#   location = azurerm_resource_group.my_resource_group.location
#   resource_group_name = azurerm_resource_group.my_resource_group.name
#   tenant_id = data.azurerm_client_config.current.tenant_id
#   name = "disha-keyvault-123"
#   sku_name = "standard"
# }



# BOT SERVICE
# enables development, deployment and management of intelligent bots
# Bots can be integrated into different services to engage in natural language conversations with users providing conversational interface 
# can be integrated with LUIS
# bots can use QnA maker to provide accurate responses to user queries

#  data "azurerm_client_config" "current" {}
# resource "azurerm_bot_service_azure_bot" "bots" {
#  name =  "bot-service123"
#  location = azurerm_resource_group.my_resource_group.location
#  resource_group_name = azurerm_resource_group.my_resource_group.name
#  microsoft_app_id = data.azurerm_client_config.current.client_id
#  sku = "F0"  
# }

# output "storage_account_connection_string" {
#   value = azurerm_storage_account.my_storage_account.primary_connection_string
# }

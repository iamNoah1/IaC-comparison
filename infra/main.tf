terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }

  required_version = ">= 0.14.9"
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group
  location = var.location
}

resource "azurerm_service_plan" "dotnet_app_service_plan" {
  name                = "example"
  resource_group_name = azurerm_resource_group.rg.name
  location            = azurerm_resource_group.rg.location
  sku_name            = "F1"
  os_type             = "Windows"
}

resource "azurerm_windows_web_app" "dotnet_app_service" {
  name                = "noi-example-app"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  service_plan_id     = azurerm_service_plan.dotnet_app_service_plan.id

  site_config {
    application_stack {
      dotnet_version = "v6.0"
    }
    always_on         = false // Required for F1 plan (even though docs say that it defaults to false)
    use_32_bit_worker = true  // Required for F1 plan
  }
}

variable "location" {
  type        = string
  default     = "northeurope"
  description = "azure location for installation"
}

variable "resource_group" {
  type        = string
  default     = "dotnet-app"
  description = "resource group for all components"
}

variable "app_service_plan" {
  type        = string
  default     = "dotnet-app-plan"
  description = "name for app service plan"
}

variable "app_service" {
  type        = string
  default     = "noi-example-app"
  description = "name for app service"
}

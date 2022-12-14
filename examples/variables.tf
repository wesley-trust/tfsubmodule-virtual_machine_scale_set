# Define variables
variable "service_name" {
  description = "Desired name for the provisioned resources"
  type        = string
  default     = "Services"
}

variable "service_environment" {
  description = "Desired environment for the service collection of provisioned resources"
  type        = string
  default     = "Test"
}

variable "service_deployment" {
  description = "Desired deployment identifier of the service collection of provisioned resources"
  type        = string
}

variable "service_location" {
  description = "Desired location for each service environment"
  type        = string
}

# Required resource variables
variable "resource_name" {
  description = "Desired name for the provisioned resources"
  type        = string
  default     = "TST"
}

variable "resource_instance_count" {
  description = "Desired number of the provisioned resources for each service environment"
  type        = string
}

variable "resource_instance_size" {
  description = "Desired size for the provisioned resources for each service"
  type        = map(any)
  default = {
    Test = {
      "Services" = "Standard_D2as_v4"
    }
  }
}

# Defined resource variables
variable "platform_location_fault_domain" {
  description = "Number of fault domains in the location"
  type        = map(string)
  default = {
    "UK West"          = 2
    "North Europe"     = 2
    "West Europe"      = 2
    "North Central US" = 2
  }
}

variable "platform_location_az" {
  description = "Number of availability zones in the location"
  type        = map(string)
  default = {
    "UK South"         = 3
    "UK West"          = 0
    "North Europe"     = 3
    "West Europe"      = 3
    "North Central US" = 0
  }
}

variable "resource_vm_sku" {
  description = "Desired size for the provisioned resources"
  type        = string
  default     = "18.04-LTS"
}

variable "operating_system_platform" {
  description = "Desired OS for the provisioned resources"
  type        = string
  default     = "Linux"
}

variable "resource_address_space" {
  description = "Desired address space for the provisioned resources"
  type        = string
  default     = "10.0.2.0/24"
}

variable "resource_dns_servers" {
  description = "Desired DNS servers for the provisioned resources"
  type        = list(string)
  default = [
    "10.0.2.4",
    "10.0.2.5"
  ]
}

variable "resource_disk_size" {
  description = "Desired disk size for the provisioned resources"
  type        = string
  default     = "32"
}

variable "resource_network_interface_count" {
  description = "Desired number of network interfaces"
  type        = string
  default     = 1
}

variable "admin_username" {
  description = "Desired username for the provisioned resources"
  type        = string
  default     = "wesley"
}

variable "resource_private_ip_initial_address" {
  description = "The initial IP address available for static assignment"
  type        = string
  default     = 4
}

variable "resource_network_role" {
  description = "The network type for peering"
  type        = string
  default     = "Spoke"
}

variable "provision_scale_set" {
  description = "Whether to provision a key vault"
  type        = bool
  default     = true
}

variable "ephemeral_disk_enabled" {
  description = "Whether to use a ephemeral OS disk the provisioned resources"
  type        = bool
  default     = true
}
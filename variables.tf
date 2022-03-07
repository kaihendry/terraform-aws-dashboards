variable "component_name" {
  type        = string
  description = "Application Prefix"
  default     = "dash"
}

variable "environment_type" {
  type        = string
  description = "Type of environment they are deployed into"
  default     = "dev"
}


variable "owner" {
    type        = string
    description = "Team owner"
    default     = "pivotal"
}

variable "resource_prefix" {
    type        = string
    description = "Environment to deploy into"
    default     = "dashiing"
}


locals {
  resource_prefix   = "${var.component_name}-${var.environment_type}"
  tags = {
    "Environment" : var.environment_type
    "App"         : var.component_name
    "Owner"       : var.owner
  }
}
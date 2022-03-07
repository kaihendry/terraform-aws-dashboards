variable "component_name" {
  type        = string
  description = "Application Prefix"
  default     = "dash"
}

variable "environment" {
  type        = string
  description = "Type of environment they are deployed into"
  default     = "dev"
}


variable "owner" {
    type        = string
    description = "Team owner"
    default     = "pivotal"
}



locals {
  resource_prefix   = "${var.component_name}-${var.environment}"
  tags = {
    "Environment" : var.environment
    "App"         : var.component_name
    "Owner"       : var.owner
  }
}
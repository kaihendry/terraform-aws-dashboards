variable "aws_region" {
  type        = string
}


variable "resource_prefix" {
    type        = string
    description = "Environment to deploy into"
    default     = "dashiing"
}

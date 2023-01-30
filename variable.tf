variable "resource_group_name" {
    type = string
  }
  variable "location" {
    type = string
  }
  variable "azurerm_managed_disk" {
    type = list
  }
  variable "tagging" {
    type = map
  }
  variable "organization" {
    type = string
  }
  variable "environment" {
    type = string
  }
  variable "application" {
    type = string
  }
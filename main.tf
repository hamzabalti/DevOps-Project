variable "vcd_allow_unverified_ssl" {
  default = true
}
variable "vcd_url" {}

variable "vcd_max_retry_timeout" {
  default = 60
}

variable "vcd_user" {}
variable "vcd_pass" {}

terraform {

  required_providers {
    vcd = {
      source  = "vmware/vcd"
      //version = ">= 3.8.2"


    }
  }
}
# Connect VMware vCloud Director Provider
provider "vcd" {
  user                 = var.vcd_user
  password             = var.vcd_pass
  org                  = "Workshop"
  url                  = var.vcd_url
  max_retry_timeout    = var.vcd_max_retry_timeout
  allow_unverified_ssl = var.vcd_allow_unverified_ssl
  
}


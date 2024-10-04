terraform {
  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
  }
}

provider "digitalocean" {
  token = var.do_token
}

module "do-dropplet" {
  source   = "./Modules/Droplets"
  for_each = var.vm-names
  vm-name  = each.value
  ssh_keys = var.ssh-fingerprint
}
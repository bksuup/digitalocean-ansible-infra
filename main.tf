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
  count    = length(var.vm-names)
  vm-name  = var.vm-names[count.index]
  ssh_keys = var.ssh-keys
}
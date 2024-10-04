resource "digitalocean_droplet" "ansible-testservers" {
  name     = var.vm-name
  image    = var.dropplet-image
  size     = var.dropplet-size
  region   = var.DC-region
  ssh_keys = var.ssh_keys
}
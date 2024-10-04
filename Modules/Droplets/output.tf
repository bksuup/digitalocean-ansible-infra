output "vm-ip" {
  value = digitalocean_droplet.ansible-testservers.ipv4_address
}
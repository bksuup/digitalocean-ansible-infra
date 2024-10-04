variable "vm-name" {
  type        = string
  description = "List of VM-names"
}

variable "dropplet-image" {
  type        = string
  description = "Linux image for the Dropplet"
  default     = "ubuntu-24-04-x64"
}

variable "dropplet-size" {
  type        = string
  description = "Define dropplet resources"
  default     = "s-1vcpu-1gb"
}

variable "DC-region" {
  type        = string
  description = "Define the region of the datacenter for the dropplets"
  default     = "ams3"
}

variable "ssh_keys" {
  type        = list(string)
  description = "SSH-key to be added to the host at startup"
}
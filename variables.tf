variable "do_token" {
  type        = string
  description = "DigitalOCean API Token"
}

variable "vm-names" {
  type        = list(string)
  description = "Names of the virtual-machines in DO"
}
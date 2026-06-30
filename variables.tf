variable "token" {
  description = "OAuth/IAM token"
  type        = string
  sensitive   = true
}

variable "cloud_id" {
  type = string
}

variable "folder_id" {
  type = string
}

variable "zone" {
  type    = string
  default = "ru-central1-a"
}

variable "public_key" {
  type    = string
  default = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAINHYmmMX/PVdMbdcPmj8zOgV8EbSvg+K8X2hjq3E2j2K 2i/asc@NK504-8190"
}

variable "ssh_user" {
  type    = string
  default = "ubuntu"
}

variable "public_subnet" {
  type    = string
  default = "192.168.10.0/24"
}

variable "private_subnet" {
  type    = string
  default = "192.168.20.0/24"
}

variable "nat_ip" {
  type    = string
  default = "192.168.10.254"
}

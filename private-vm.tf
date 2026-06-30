resource "yandex_compute_instance" "private_vm" {

  name = "private-vm"

  platform_id = "standard-v1"

  resources {
    cores  = 2
    memory = 2
  }

  boot_disk {

    initialize_params {
      image_id = data.yandex_compute_image.ubuntu.id
      size         = 10
    }

  }

  network_interface {

    subnet_id = yandex_vpc_subnet.private.id

    ip_address = "192.168.20.10"
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${var.public_key}"
  }
}

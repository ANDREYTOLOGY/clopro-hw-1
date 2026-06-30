resource "yandex_compute_instance" "public_vm" {

  name = "public-vm"

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

    subnet_id = yandex_vpc_subnet.public.id

    nat = true
  }

  metadata = {
    ssh-keys = "${var.ssh_user}:${var.public_key}"
  }
}

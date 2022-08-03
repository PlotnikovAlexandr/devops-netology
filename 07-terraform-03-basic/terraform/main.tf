data "yandex_compute_instance" "ubuntu" {
  filter {
    name   = "name"
    values = ["ubuntu-20.04-*"]
  }
}

terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
}
provider "yandex" {
  service_account_key_file = "key.json"
  cloud_id  = "${var.yandex_cloud_id}"
  folder_id = "${var.yandex_folder_id}"
}

resource "yandex_compute_instance" "vm-1" {

  name        = "ubuntu-vm"
  platform_id = "standard-v1"

  resources {
    cores  = 2
    memory = 1
  }

  boot_disk {
    initialize_params {
      image_id = data.yandex_compute_instance.ubuntu.id
    }
  }
  network_interface {
    subnet_id = "${yandex_vpc_subnet.lab-subnet-a.id}"
    nat       = true
    }
}

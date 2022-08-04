locals {

  instances = {
    stage = "Standard-v1"
    prod = "Standard-v2"
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
  service_account_key_file = "../key.json"
  cloud_id  = "${var.yandex_cloud_id}"
  folder_id = "${var.yandex_folder_id}"
}

resource "yandex_compute_instance" "vm" {
  for_each = local.instances

  name        = "ubuntu-vm-${each.key}"
  platform_id = each.value

  resources {
    cores  = 2
    memory = 1
  }

  boot_disk {
    initialize_params {
      image_id = "fd8f1tik9a7ap9ik2dg1"
    }
  }
  network_interface {
    subnet_id = "${yandex_vpc_subnet.lab-subnet-a.id}"
    nat       = true
    }
}
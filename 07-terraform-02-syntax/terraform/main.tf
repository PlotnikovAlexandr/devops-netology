provider "yandex" {
  service_account_key_file = "key.json"
  cloud_id  = "${var.yandex_cloud_id}"
  folder_id = "${var.yandex_folder_id}"
}

resource "yandex_vpc_network" "lab-net" {
  name        = "network-1"
  description = "My first network"
}

resource "yandex_vpc_subnet" "lab-subnet-a" {
  name           = "subnet-1"
  description    = "My subnet"
  v4_cidr_blocks = ["10.2.0.0/16"]
  zone           = "ru-central1-a"
  network_id     = "${yandex_vpc_network.lab-net.id}"
}

resource "yandex_compute_instance" "vm-1" {

  name        = "ubuntu-2004-vm"
  platform_id = "standard-v1"

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


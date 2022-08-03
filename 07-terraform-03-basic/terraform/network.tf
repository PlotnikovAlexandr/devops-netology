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

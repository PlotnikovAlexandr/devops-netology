  terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }

  backend "s3" {
    endpoint   = "storage.yandexcloud.net"
    bucket     = "pas-bucket"
    region     = "ru-central1-a"
    key        = "terraform/terraform.tfstate"
    access_key = "YCAJEG5geusgNGiG2D93-su0E"
    secret_key = "YCPcWmQfkb9Uvik3_Y2_DN0NBQrHZAPZ03J67rsc"

    skip_region_validation      = true
    skip_credentials_validation = true
    }
  }

  provider "yandex" {
    service_account_key_file = "../key.json"
    cloud_id  = "${var.yandex_cloud_id}"
    folder_id = "${var.yandex_folder_id}"
  }


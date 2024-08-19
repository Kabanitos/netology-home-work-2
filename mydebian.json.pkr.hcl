source "yandex" "debian_docker" {
  disk_type           = "network-hdd"
  folder_id           = "b1gm65ockv3cro5insp9"
  image_description   = "my custom debian with docker"
  image_name          = "debian-11-docker"
  source_image_family = "debian-11"
  ssh_username        = "debian"
  subnet_id           = "e9blpiqvn502jigelpub"
  token               = "xxxxxxxx"
  use_ipv4_nat        = true
  zone                = "ru-central1-a"
}

build {
  sources = ["source.yandex.debian_docker"]

  provisioner "shell" {
    scripts = ["./install-pkg.sh"]
  }

}
resource "digitalocean_loadbalancer" "www-lb" {
  name = "www-lb"
  region = var.region

  forwarding_rule {
    entry_port = 443
    entry_protocol = "https"

    target_port = 443
    target_protocol = "https"
    certificate_id = digitalocean_certificate.lbcert.id
  }

  healthcheck {
    port = 22
    protocol = "tcp"
  }

  droplet_ids = digitalocean_droplet.www.*.id
}

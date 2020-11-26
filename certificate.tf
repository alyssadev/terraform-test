resource "digitalocean_certificate" "lbcert" {
  name    = "lbcert"
  type    = "lets_encrypt"
  domains = [digitalocean_domain.lbdomain.name]

  lifecycle {
    create_before_destroy = true
  }
}

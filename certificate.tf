resource "digitalocean_certificate" "lbcert" {
  name    = "lbcert"
  type    = "lets_encrypt"
  domains = [var.domain]

  lifecycle {
    create_before_destroy = true
  }
}

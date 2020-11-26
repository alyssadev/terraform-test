resource "digitalocean_domain" "lbdomain" {
   name = var.domain
   ip_address = digitalocean_loadbalancer.www-lb.ip
}

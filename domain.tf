resource "digitalocean_domain" "default" {
   name = var.domain
   ip_address = digitalocean_loadbalancer.www-lb.ip
}

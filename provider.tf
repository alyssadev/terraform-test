terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "1.22.2"
    }
  }
}

variable "do_token" {}
variable "domain" {}
variable "pvt_key" {}
variable "ssh_id" {}
variable "html" {
  default = "https://github.com/blha303/TextAdventure"
}

variable "region" {
  default = "sgp1"
}

provider "digitalocean" {
  token = var.do_token
}

data "digitalocean_ssh_key" "terraform" {
  name = var.ssh_id
}

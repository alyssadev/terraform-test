#!/bin/bash
# ./apply.sh <key id/fingerprint/name> <domain>
terraform apply -var "ssh_id=$(doctl compute ssh-key list | grep $1 | awk '{print $2}')" -var "domain=$2" -var "pvt_key=~/.ssh/id_rsa" -var "do_token=$DO_OAUTH_TOKEN"

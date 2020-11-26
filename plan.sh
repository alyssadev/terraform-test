#!/bin/bash
# ./plan.sh <key id/fingerprint/name> <domain> <plan filename> [git https url for html source]
terraform plan -var "html=$4" -var "ssh_id=$(doctl compute ssh-key list | grep $1 | awk '{print $2}')" -var "domain=$2" -var "pvt_key=~/.ssh/id_rsa" -var "do_token=$DO_OAUTH_TOKEN" -out "$3"

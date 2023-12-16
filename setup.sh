#!/bin/bash

script_path="$(dirname -- "${BASH_SOURCE[0]}")"
cd ${script_path}
mkdir -p "../docker_volumes/pihole/etc-pihole"
mkdir -p "../docker_volumes/pihole/etc-dnsmasq.d"

sudo docker compose up --detach

cd -

#!/bin/bash

script_path="$(dirname -- "${BASH_SOURCE[0]}")"
cd ${script_path}
mkdir -p "../etc-pihole"
mkdir -p "../etc-dnsmasq.d"

sudo docker compose up --detach

cd -

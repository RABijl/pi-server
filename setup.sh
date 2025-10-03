#!/bin/bash

script_path="$(dirname -- "${BASH_SOURCE[0]}")"
cd "${script_path}" || exit

mkdir -p "../docker/data"
sudo docker compose up --detach

cd - || exit

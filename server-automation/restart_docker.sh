#!/bin/bash

cd /home/home_admin/immich-app &&
docker compose down &&
docker compose up -d &&

cd /home/home_admin/homelab/filebrowser &&
docker compose down &&
docker compose up -d

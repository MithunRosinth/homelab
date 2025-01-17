#!/bin/bash

cd /home/home_admin/immich-app &&
docker compose down &&
docker compose up -d &&

cd /home/home_admin/homelab/server-helm &&
docker compose down &&
docker compose up -d &&

cd /home/home_admin/homelab/syncthing &&
docker compose down &&
docker compose up -d
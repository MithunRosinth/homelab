#!/bin/bash

cd /home/home_admin/immich-app &&
docker compose down &&
docker compose pull &&
docker compose up -d &&

cd /home/home_admin/homelab/server-helm &&
docker compose down &&
docker compose pull &&
docker compose up -d &&

cd /home/home_admin/homelab/media-server &&
docker compose down &&
docker compose pull &&
docker compose up -d &&

cd /home/home_admin/homelab/homepage &&
docker compose down &&
docker compose pull &&
docker compose up -d &&

docker image prune -f

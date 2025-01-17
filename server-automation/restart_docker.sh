#!/bin/bash

cd /home/home_admin/immich-app &&
docker compose down &&
docker compose up -d &&

cd /home/home_admin/homelab/server-helm &&
docker compose down &&
docker compose up -d &&

cd /home/home_admin/homelab/media-server &&
docker compose down &&
docker compose up -d 
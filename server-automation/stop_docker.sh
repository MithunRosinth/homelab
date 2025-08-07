#!/bin/bash

cd /home/home_admin/immich-app &&
docker compose down &&

cd /home/home_admin/homelab/server-helm &&
docker compose down &&

cd /home/home_admin/homelab/media-server &&
docker compose down &&

cd /home/home_admin/homelab/filebrowser &&
docker compose down

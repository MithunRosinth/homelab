#!/bin/bash

echo "Spinning up Radarr....." &&

cd ~/homelab/server-helm/radarr &&
docker-compose up -d &&

echo "Spinning up Sonarr....." &&

cd ~/homelab/server-helm/sonarr &&
docker-compose up -d &&

echo "Spinning up Prowlarr....." &&

cd ~/homelab/server-helm/prowlarr &&
docker-compose up -d &&

echo "Spinning up Qbittorrent....." &&

cd ~/homelab/server-helm/qbittorrent &&
docker-compose up -d &&

echo "Spinning up Jellyfin....." &&

cd ~/homelab/server-media &&
docker-compose up -d &&


echo "All Done"
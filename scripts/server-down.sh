echo "Spinning down Radarr....." &&

cd ~/homelab/server-helm/radarr &&
docker-compose down &&

echo "Spinning down Sonarr....." &&

cd ~/homelab/server-helm/sonarr &&
docker-compose down &&

echo "Spinning down Prowlarr....." &&

cd ~/homelab/server-helm/prowlarr &&
docker-compose down &&

echo "Spinning down Qbittorrent....." &&

cd ~/homelab/server-helm/qbittorrent &&
docker-compose down &&

echo "Spinning down Jellyfin....." &&

cd ~/homelab/server-media &&
docker-compose down &&


echo "All Done"
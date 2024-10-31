# Homelab
Configs and docker-compose files for all home server services

### NVIDIA CONTAINER TOOLKIT INSTALL

[Click Here for instructions](https://docs.nvidia.com/datacenter/cloud-native/container-toolkit/latest/install-guide.html#installing-with-apt)

```
curl -fsSL https://nvidia.github.io/libnvidia-container/gpgkey | sudo gpg --dearmor -o /usr/share/keyrings/nvidia-container-toolkit-keyring.gpg \
  && curl -s -L https://nvidia.github.io/libnvidia-container/stable/deb/nvidia-container-toolkit.list | \
    sed 's#deb https://#deb [signed-by=/usr/share/keyrings/nvidia-container-toolkit-keyring.gpg] https://#g' | \
    sudo tee /etc/apt/sources.list.d/nvidia-container-toolkit.list
```
---
```
sed -i -e '/experimental/ s/^#//g' /etc/apt/sources.list.d/nvidia-container-toolkit.list
```
---
```
sudo apt-get install -y nvidia-container-toolkit
```
---

### IMMICH INSTALLATION

[Click Here for instructions](https://immich.app/docs/install/docker-compose)

[Click here for instructions to deploy ML hardware acceleration](https://immich.app/docs/features/ml-hardware-acceleration)

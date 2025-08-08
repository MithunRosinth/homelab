#!/bin/bash
ufw default deny incoming
ufw default allow outgoing
ufw allow in on enp1s0 to any port 22
ufw allow in on enp1s0 to any port 8920
ufw allow in on tailscale to any port 22
ufw allow in on tailscale to any port 443
ufw allow out on enp1s0

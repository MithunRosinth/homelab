#!/bin/bash

# Run the root script
/home/home_admin/restart_server.sh

# Run the home_admin script
su - home_admin -c "/home/home_admin/restart_docker.sh"
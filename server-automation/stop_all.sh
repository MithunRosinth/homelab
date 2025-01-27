#!/bin/bash

sudo umount /dev/sdb1 &&

sudo umount /dev/sdc1 &&

su - home_admin -c "/home/home_admin/stop_docker.sh"
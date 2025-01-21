#!/bin/bash

su - home_admin -c 'docker exec -t immich_postgres pg_dumpall -c -U postgres | gzip > "/mnt/storage/immich_db.sql.gz"' &&

rsync -ah /mnt/pcloud/ /mnt/storage/

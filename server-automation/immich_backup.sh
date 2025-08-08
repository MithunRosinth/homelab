#!/bin/bash

su - home_admin -c 'docker exec -t immich_postgres pg_dumpall -c -U postgres | gzip > "/mnt/vault/backups/immich_db/immich_db.sql.gz"' &&

rsync -ah /mnt/immich/ /mnt/vault/backups/immich/

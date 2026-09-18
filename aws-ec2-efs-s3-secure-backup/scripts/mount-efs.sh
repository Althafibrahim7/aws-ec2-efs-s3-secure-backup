#!/bin/bash
set -e
FILE_SYSTEM_ID="${1:-}"
[ -n "$FILE_SYSTEM_ID" ] || { echo "Usage: sudo $0 <EFS_FILE_SYSTEM_ID>"; exit 1; }
sudo mkdir -p /mnt/efs
sudo mount -t efs -o tls "${FILE_SYSTEM_ID}:/" /mnt/efs
df -h /mnt/efs

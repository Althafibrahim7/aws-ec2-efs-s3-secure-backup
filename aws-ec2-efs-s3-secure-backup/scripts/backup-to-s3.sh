#!/bin/bash
set -euo pipefail
SOURCE="${EFS_MOUNT:-/mnt/efs}"
BUCKET="${BACKUP_BUCKET:-}"
[ -n "$BUCKET" ] || { echo 'Set BACKUP_BUCKET first'; exit 1; }
aws s3 sync "$SOURCE" "s3://$BUCKET/efs-backup/" --only-show-errors
echo "Backup completed."

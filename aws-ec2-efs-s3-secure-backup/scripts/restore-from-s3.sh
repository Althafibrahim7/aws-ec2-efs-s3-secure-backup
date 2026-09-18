#!/bin/bash
set -euo pipefail
DESTINATION="${RESTORE_PATH:-/mnt/efs-restore}"
BUCKET="${BACKUP_BUCKET:-}"
[ -n "$BUCKET" ] || { echo 'Set BACKUP_BUCKET first'; exit 1; }
mkdir -p "$DESTINATION"
aws s3 sync "s3://$BUCKET/efs-backup/" "$DESTINATION" --only-show-errors
echo "Restore completed."

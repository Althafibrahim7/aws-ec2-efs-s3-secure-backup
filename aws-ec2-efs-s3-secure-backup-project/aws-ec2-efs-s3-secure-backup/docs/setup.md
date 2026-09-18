# Setup Guide

> Use your own AWS values. Never publish credentials.

## 1. VPC
Create the VPC, required subnets, route tables and connectivity.

## 2. Security Groups
**EFS SG:** allow TCP 2049 only from the EC2 SG.

**EC2 SG:** allow only the administration/application traffic required by your lab.

## 3. EC2
Launch a Linux EC2 instance and attach an IAM role. Avoid long-lived access keys.

## 4. EFS
Create EFS and mount targets. Install the EFS mount helper if needed.

Mount example:
```bash
sudo mkdir -p /mnt/efs
sudo mount -t efs -o tls FILE_SYSTEM_ID:/ /mnt/efs
df -h /mnt/efs
```

## 5. S3
Create a unique bucket. Enable Block Public Access and encryption. Consider versioning and lifecycle policies.

## 6. IAM
Adapt `iam/s3-backup-policy.json` to your bucket and required actions.

## 7. Backup
```bash
export BACKUP_BUCKET="your-bucket-name"
./scripts/backup-to-s3.sh
```

## 8. Restore
```bash
export BACKUP_BUCKET="your-bucket-name"
./scripts/restore-from-s3.sh
```

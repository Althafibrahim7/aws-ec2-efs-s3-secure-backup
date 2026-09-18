# Troubleshooting

## EFS mount failure
Check mount target, DNS/networking, and Security Groups. EFS requires NFS/TCP 2049.

Useful commands:
```bash
df -h
mount | grep efs
sudo dmesg | tail -50
```

## S3 failure
```bash
aws sts get-caller-identity
aws s3 ls
```
Then check IAM role, bucket name, region, bucket policy and required permissions.

Do not grant AdministratorAccess as a first troubleshooting step. Identify the missing permission and apply the minimum required access.

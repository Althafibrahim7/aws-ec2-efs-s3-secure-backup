# Security Design

- Use an EC2 IAM role instead of access keys.
- Scope S3 permissions to the required bucket/prefix.
- Restrict EFS TCP 2049 to the EC2 security group.
- Keep S3 Block Public Access enabled.
- Enable encryption.
- Do not commit `.pem`, `.key`, `.env`, credentials or secrets.
- Review screenshots before publishing to remove sensitive account/infrastructure details.

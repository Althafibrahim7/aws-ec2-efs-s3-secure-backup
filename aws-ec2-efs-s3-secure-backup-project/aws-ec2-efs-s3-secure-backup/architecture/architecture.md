# Architecture Documentation

**Flow:** AWS CLI User → IAM → EC2 → EFS → S3

EC2 and EFS are inside the custom VPC. EC2 communicates with EFS using NFS/TCP 2049. The backup workflow reads EFS data and writes selected data to S3. IAM authorizes AWS API operations.

EFS should not be exposed directly to the internet. Allow TCP 2049 only from the EC2 security group.

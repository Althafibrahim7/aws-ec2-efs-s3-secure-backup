# 🔐 AWS EC2 → EFS → S3 Secure Backup Architecture

Hands-on AWS project demonstrating persistent file storage, backup, IAM least privilege, network security and AWS CLI automation.

## Architecture
![AWS Architecture](architecture/architecture.png)

**Data flow:** EC2 → EFS → AWS CLI → S3

## Objectives
- Deploy Linux EC2 in a custom VPC
- Configure EFS persistent/shared storage
- Configure S3 backup storage
- Apply IAM least privilege
- Restrict EFS NFS traffic with Security Groups
- Automate backup with AWS CLI
- Test backup and restore

## AWS Services
| Service | Purpose |
|---|---|
| VPC | Network isolation |
| EC2 | Linux compute |
| EFS | Persistent/shared storage |
| S3 | Backup storage |
| IAM | Access control |
| Security Groups | Network access control |
| AWS CLI | Automation |
| CloudTrail | API auditing / extension |

## Security
- EC2 IAM role instead of hard-coded keys
- Least-privilege S3 permissions
- TCP 2049 only from EC2 SG to EFS SG
- S3 Block Public Access
- S3 encryption
- No public NFS access
- No credentials in GitHub

## Repository
```text
├── README.md
├── architecture/
│   ├── architecture.png
│   └── architecture.md
├── scripts/
│   ├── mount-efs.sh
│   ├── backup-to-s3.sh
│   └── restore-from-s3.sh
├── iam/
│   └── s3-backup-policy.json
├── docs/
│   ├── setup.md
│   ├── security.md
│   └── troubleshooting.md
├── screenshots/
│   └── README.md
└── .gitignore
```

## Validation
- [ ] EC2 launches
- [ ] EFS mounts
- [ ] Test files persist
- [ ] Files sync to S3
- [ ] Restore works
- [ ] IAM and SG rules are restricted

## Future Improvements
Terraform • CloudWatch • AWS Backup • EventBridge/Lambda • AWS DataSync • security monitoring

## Resume
**Secure AWS File Storage & Backup Architecture — EC2, EFS & S3**

Designed and implemented an AWS file-storage and backup architecture using EC2, EFS and S3 within a custom VPC. Applied IAM least privilege, Security Group controls and AWS CLI automation to synchronize and restore files.

## LinkedIn
Built a hands-on AWS file-storage and backup architecture using **EC2 + EFS + S3** inside a custom VPC.

Key areas: AWS networking, Linux/EC2, EFS, S3, IAM least privilege, Security Groups, AWS CLI, backup and restore.

#AWS #CloudComputing #CloudSecurity #EC2 #EFS #S3 #IAM #Networking #Linux

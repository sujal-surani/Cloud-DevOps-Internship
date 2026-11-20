# Cloud & DevOps Infrastructure Engineering

A hands-on engineering repository documenting production-aligned cloud architectures, Linux system administration, automation scripts, and infrastructure security practices.

## Projects

| Project | Focus Area | Key Technologies | Status |
| :--- | :--- | :--- | :--- |
| [Linux & Git Foundations](./Task-1-Linux-and-Git/README.md) | System administration, shell scripting, and version control workflows | Linux, Bash, Git | Completed |
| [AWS Cloud Infrastructure Provisioning](./Task-2-AWS-Infrastructure/README.md) | Secure VPC networking, IAM least privilege, EC2 web hosting, S3 static hosting, and CloudWatch observability (`ap-south-1`) | AWS (IAM, VPC, EC2, S3, CloudWatch, SNS), Nginx, Draw.io | Completed |

## Core Tech Stack
* **Cloud Platform:** Amazon Web Services (IAM, VPC, EC2, EBS, S3, CloudWatch, SNS)
* **Operating Systems & Scripting:** Linux, Bash, AWS CLI
* **Web & Networking:** Nginx, CIDR Subnetting, Security Groups, Route Tables, Internet Gateways
* **Documentation & Architecture:** Markdown, Draw.io / Mermaid

## Engineering Standards Applied
* **Security First:** Root and IAM MFA enabled, least-privilege group policies, SSH restricted to administrator IP, and S3 versioning with read-only bucket policies.
* **Credential Hygiene:** Private keys (`.pem`, `.key`) and environment secrets are strictly excluded via `.gitignore`; account identifiers are redacted from all visual documentation.
* **Cost Discipline:** Architectures are designed to be Free Tier-compliant, modeled with the AWS Pricing Calculator, and torn down after verification to prevent idle compute charges.

## Author
**Sujal Surani** 
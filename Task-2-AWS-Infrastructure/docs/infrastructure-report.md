<style>
  body {
    font-size: 12px;
    line-height: 1.4;
  }
  h2, h3 {
    break-after: avoid;
    page-break-after: avoid;
  }
  img {
    max-height: 360px;
    width: auto;
    display: block;
    margin: 8px auto;
    break-inside: avoid;
  }
  table {
    font-size: 11px;
    break-inside: avoid;
  }
</style>

# AWS Cloud Infrastructure Report

**Author:** Sujal Surani  
**AWS Region:** Asia Pacific (Mumbai) — `ap-south-1`

---

## 1. Executive Summary
This report documents the design, provisioning, security configuration, monitoring, and cost estimation of a foundational AWS cloud environment. All components were deployed following AWS Well-Architected best practices while remaining within the AWS Free Tier.

## 2. Architecture & Network Diagrams

### Overall AWS Architecture
![AWS Architecture](../diagrams/aws-architecture.drawio.png)

### VPC Network Layout
![VPC Network](../diagrams/vpc-network.drawio.png)

### IAM Access Structure
![IAM Structure](../diagrams/iam-structure.drawio.png)

## 3. Resource Inventory

| Service | Resource Name | ID / Details | Status |
| :--- | :--- | :--- | :--- |
| IAM | `admin` / `CloudIntern` | Groups: `AdministratorAccess`, `Interns` | Configured + MFA |
| VPC | `DevOps-VPC` | `vpc-08d3faffa76367380` (`10.0.0.0/16`) | Available |
| Subnet (Public) | `Public-Subnet` | `subnet-0b379d632b39b240e` (`10.0.1.0/24`) | Available |
| Subnet (Private) | `Private-Subnet` | `subnet-0ac70641947ae840b` (`10.0.2.0/24`) | Available |
| Internet Gateway | `DevOps-IGW` | `igw-06c7751ce44e27751` | Attached |
| Route Table | `Public-RT` | `rtb-0c4120fc42258745c` | Associated |
| Security Group | `DevOps-Web-SG` | `sg-0d241aa6ad790bdf6` | Active |
| EC2 Instance | `DevOps-Web-Server` | `i-0d926427eca31f1b7` (`t3.micro`, Ubuntu 24.04) | Verified & Terminated |
| S3 Bucket | `company-static-site.devops` | Versioning + Static Website Hosting | Active |
| CloudWatch | `DevOps-EC2-Dashboard` & `High-CPU-Alarm` | Threshold: `CPUUtilization >= 70%` | State: OK |

## 4. Cost Estimation (`DevOpsEst`)
* **Free Tier Monthly Cost:** `$0.00 / month`
* **On-Demand Monthly Estimate:** `$12.42 / month` (`$8.69` EC2 `t3.micro` + `$0.73` 8 GB `gp3` EBS + `$3.00` CloudWatch Dashboard + `$0.00` S3 requests; VPC & IAM always free).

![Cost Estimation](../screenshots/14-cost-estimation.png)

## 5. Verification Screenshots

### IAM Users & Groups
![IAM Users](../screenshots/01-iam-users.png)

![IAM Groups](../screenshots/02-iam-users-groups.png)

### VPC, Subnets, Internet Gateway & Route Table
![VPC Overview](../screenshots/03-vpc-overview.png)
![VPC Subnets](../screenshots/04-vpc-subnets.png)
![Internet Gateway](../screenshots/05-vpc-igw.png)
![Route Table](../screenshots/06-vpc-rt.png)

### EC2, Security Group & Nginx Web Server
![EC2 Instance](../screenshots/07-ec2-instance.png)
![Security Group](../screenshots/08-security-group.png)
![Nginx Live](../screenshots/09-nginx-live.png)

### Amazon S3 Static Website Hosting & Versioning
![S3 Versioning](../screenshots/10-s3-objects-versioning.png)
![S3 Live Site](../screenshots/11-s3-live.png)

### CloudWatch Monitoring & CPU Alarm
![CloudWatch Dashboard](../screenshots/12-cloudwatch-dashboard.png)
![CloudWatch Alarm](../screenshots/13-cloudwatch-alarm.png)

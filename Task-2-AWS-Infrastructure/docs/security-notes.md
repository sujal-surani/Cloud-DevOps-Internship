# Cloud Security Notes & Best Practices

## Identity & Access Management (IAM)
* **Root MFA:** Enabled on the root account; root credentials are not used for daily operations.
* **User MFA:** Virtual MFA enabled on the `admin` IAM user.
* **Group-Based Permissions:** Policies (`AdministratorAccess`, `ReadOnlyAccess`) are attached to IAM Groups rather than directly to individual users.
* **Credential Hygiene:** `.pem` and `.key` files are excluded via `.gitignore` and never committed to GitHub. AWS Account IDs and Owner IDs are redacted from all repository screenshots.

## Network Security
* **Custom VPC Isolation:** Resources are deployed inside `DevOps-VPC` (`10.0.0.0/16`) rather than the default VPC.
* **Subnet Segmentation:** `Public-Subnet` (`10.0.1.0/24`) routes outbound traffic through `DevOps-IGW`, while `Private-Subnet` (`10.0.2.0/24`) has no internet route and is reserved for future backend/database workloads.
* **Strict Security Group (`DevOps-Web-SG`):**
  * **SSH (TCP 22):** Restricted strictly to the administrator's IP address (never `0.0.0.0/0`).
  * **HTTP (TCP 80):** Open to `0.0.0.0/0` to serve the public Nginx web server.

## Storage Security (Amazon S3)
* **Versioning Enabled:** Protects `index.html` and `logo.png` in `company-static-site.devops` against accidental overwrites or deletions.
* **Least-Privilege Bucket Policy:** Public access is restricted exclusively to `s3:GetObject` (read-only); public writes, deletes, and bucket listing are denied.
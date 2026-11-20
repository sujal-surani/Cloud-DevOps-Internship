# Troubleshooting Log

## 1. S3 Static Website Rendered Raw HTML as Plain Text
* **Symptom:** Opening the S3 Bucket website endpoint (`company-static-site.devops.s3-website.ap-south-1.amazonaws.com`) displayed the raw HTML source code instead of rendering the webpage.
* **Root Cause:** The uploaded `index.html` object had its `Content-Type` metadata set to `text/plain` rather than `text/html`.
* **Resolution:**
  1. Opened `index.html` in the S3 console and navigated to **Properties → Metadata**.
  2. Updated the system-defined `Content-Type` metadata value to `text/html`.
  3. Performed a hard refresh (`Ctrl + Shift + R`) on the static website endpoint, confirming the page and `logo.png` rendered properly.

## 2. CloudWatch "All metrics" Renamed in Updated Console
* **Symptom:** The standard **Metrics → All metrics** sidebar option was not visible in the updated CloudWatch console.
* **Root Cause:** AWS renamed **All metrics** to **Classic metrics** under the **Metrics** sidebar section.
* **Resolution:** Navigated to **CloudWatch → Metrics → Classic metrics → EC2 → Per-Instance Metrics**, selected `CPUUtilization`, `NetworkIn`, `NetworkOut`, `EBSReadBytes`, and `EBSWriteBytes`, and added them to `DevOps-EC2-Dashboard`.

## 3. IAM Group Membership Verification
* **Symptom:** Initially, the `admin` user had no MFA device attached and was not listed under the `AdministratorAccess` group.
* **Resolution:** Added `admin` to the `AdministratorAccess` group, attached a Virtual MFA device, verified `CloudIntern` belonged solely to `Interns` (`ReadOnlyAccess`), and switched from the root session to the `admin` IAM login.
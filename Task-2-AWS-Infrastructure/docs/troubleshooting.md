# Troubleshooting Log

## 1. S3 Static Website Showed Raw Code Instead of the Webpage
* **Problem:** When opening the S3 static website URL (`company-static-site.devops.s3-website.ap-south-1.amazonaws.com`), the browser displayed the raw HTML code as plain text instead of rendering the page.
* **Cause:** The file was accidentally uploaded with a `.txt` extension instead of `.html`.
* **Fix:**
  1. Deleted the `.txt` file from the S3 bucket.
  2. Renamed and saved the file properly as `index.html`, then re-uploaded it to the bucket.
  3. Refreshed the website URL, and the page along with `logo.png` loaded normally.

## 2. CloudWatch "All metrics" Renamed in Updated Console
* **Symptom:** The standard **Metrics → All metrics** sidebar option was not visible in the updated CloudWatch console.
* **Root Cause:** AWS renamed **All metrics** to **Classic metrics** under the **Metrics** sidebar section.
* **Resolution:** Navigated to **CloudWatch → Metrics → Classic metrics → EC2 → Per-Instance Metrics**, selected `CPUUtilization`, `NetworkIn`, `NetworkOut`, `EBSReadBytes`, and `EBSWriteBytes`, and added them to `DevOps-EC2-Dashboard`.

## 3. IAM Group Membership Verification
* **Symptom:** Initially, the `admin` user had no MFA device attached and was not listed under the `AdministratorAccess` group.
* **Resolution:** Added `admin` to the `AdministratorAccess` group, attached a Virtual MFA device, verified `CloudIntern` belonged solely to `Interns` (`ReadOnlyAccess`), and switched from the root session to the `admin` IAM login.
#!/usr/bin/env bash
set -euo pipefail

if ! command -v aws >/dev/null 2>&1; then
  echo "AWS CLI not found. Install it first (e.g., via your package manager or the official AWS CLI v2 installer)."
  exit 1
fi

echo "Detected AWS CLI: $(aws --version)"

echo "Configuring AWS CLI profile (Region: ap-south-1, Output: json)..."
aws configure set region ap-south-1
aws configure set output json

echo "Enter your IAM Access Key ID and Secret Access Key when prompted:"
aws configure

echo "Verifying caller identity..."
aws sts get-caller-identity
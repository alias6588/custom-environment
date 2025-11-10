#!bin/bash
# This script fetches the current time in Farsi (Iran Standard Time) timezone.
# It uses the 'date' command with the appropriate timezone setting.
# Make sure your system has the correct timezone data installed.
# Usage: ./get-farshi-time.sh
# Output: Current time in Farsi (Iran Standard Time)
# Author: Ali Askari
# Date: 2024-06-15
# Version: 1.0
# License: MIT License
# Repository:github.com/ali-askari/get-farshi-time

TZ='Asia/Tehran' date +"%Y-%m-%d %H:%M:%S"

curl -sL https://api.time.ir/v1/time/fa/time/now -H "x-api-key:ZAVdqwuySASubByCed5KYuYMzb9uB2f7" | jq -r '.data.jalali' | jq -r '"\(.year)-\(.month | tostring )-\(.day) "'
# End of script

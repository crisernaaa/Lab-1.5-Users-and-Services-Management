#!/bin/bash
# system-performance.sh
# Script to generate a system performance report
# Generated on: 2025-09-29

# Output file
REPORT_FILE="logs/performance-report.txt"

# Ensure the logs directory exists
mkdir -p logs

echo "=== System Performance Report ===" > "$REPORT_FILE"
echo "Generated on: $(date)" >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# System Information
echo "=== System Information ===" >> "$REPORT_FILE"
uname -a >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# CPU Information
echo "=== CPU Information ===" >> "$REPORT_FILE"
lscpu | head -10 >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Memory Usage
echo "=== Memory Usage ===" >> "$REPORT_FILE"
free -h >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Disk Usage
echo "=== Disk Usage ===" >> "$REPORT_FILE"
df -h >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Load Average
echo "=== Load Average ===" >> "$REPORT_FILE"
uptime >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Top 10 CPU Processes
echo "=== Top 10 CPU Processes ===" >> "$REPORT_FILE"
ps aux --sort=-%cpu | head -11 >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

# Top 10 Memory Processes
echo "=== Top 10 Memory Processes ===" >> "$REPORT_FILE"
ps aux --sort=-%mem | head -11 >> "$REPORT_FILE"
echo "" >> "$REPORT_FILE"

echo "System performance report saved in $REPORT_FILE."

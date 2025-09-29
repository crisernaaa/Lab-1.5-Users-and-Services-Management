#!/bin/bash
# cleanup-script.sh
# Script to clean up temporary files, logs, and reset lab environment
# Generated on: 2025-09-29

echo "Starting cleanup..."

# Stop custom service
if systemctl is-active --quiet simple-service; then
    echo "Stopping simple-service..."
    sudo systemctl stop simple-service
fi

# Disable custom service
if systemctl is-enabled --quiet simple-service; then
    echo "Disabling simple-service..."
    sudo systemctl disable simple-service
fi

# Remove log files
echo "Cleaning log files..."
rm -f logs/initial-system-state.txt
rm -f logs/performance-report.txt
rm -f logs/service-logs-analysis.txt
rm -f logs/troubleshooting-steps.txt
rm -f /tmp/simple-service.log

# Remove service report files
echo "Cleaning service reports..."
rm -f services/service-status-report.txt
rm -f services/service-dependencies.txt

# Optional: remove custom service unit (comment out if you want to keep it)
# sudo rm -f /etc/systemd/system/simple-service.service
# sudo systemctl daemon-reload

echo "Cleanup completed. Lab environment is reset."

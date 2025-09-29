#!/bin/bash
# service-monitoring.sh
# Script to monitor services and generate a status report
# Generated on: 2025-09-29

# Output file
REPORT_FILE="services/service-status-report.txt"

# Ensure the services directory exists
mkdir -p services

echo "Generating service status report..." > "$REPORT_FILE"

# List of services to monitor
SERVICES=("ssh" "cron" "apache2" "simple-service")

for service in "${SERVICES[@]}"; do
    echo "### Service: $service" >> "$REPORT_FILE"
    echo "Status:" >> "$REPORT_FILE"
    systemctl status "$service" >> "$REPORT_FILE" 2>&1
    echo "" >> "$REPORT_FILE"

    echo "Dependencies:" >> "$REPORT_FILE"
    systemctl list-dependencies "$service" >> "$REPORT_FILE" 2>&1
    echo -e "\n----------------------------\n" >> "$REPORT_FILE"
done

echo "Service monitoring completed. Report saved in $REPORT_FILE."


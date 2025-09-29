# Service Configuration Report

## Task 2.1: Service Discovery and Analysis

### Objective
Learn how to identify running services, check their status, and analyze service dependencies.

### Commands Executed
```bash
# List all services
systemctl list-units --type=service

# Check specific service status
systemctl status ssh
systemctl status cron
systemctl status systemd-resolved

# Analyze service dependencies
systemctl list-dependencies ssh

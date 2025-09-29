# System Analysis Report

## Part 3: System Monitoring and Logs

### Task 3.1: Log Analysis

#### Objective
Examine system logs to understand system events, authentication attempts, and errors.

#### Commands Executed
```bash
# Examine various system logs
sudo journalctl --since today
sudo journalctl -u ssh --since "1 hour ago"
sudo journalctl -p err --since "24 hours ago"

# Check authentication logs
sudo journalctl _COMM=sshd
sudo last
sudo lastlog

# Monitor real-time logs
sudo journalctl -f &
# Let it run for 2 minutes, then kill the background job
kill %1

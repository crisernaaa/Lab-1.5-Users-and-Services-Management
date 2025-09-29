# Troubleshooting Log

## Objective
Document the troubleshooting steps taken to identify, analyze, and resolve issues with system services and configurations.

---

## Task 1: User Management Troubleshooting

### Observations
- Verified user creation and group assignments using commands like:
```bash
id alice
groups bob
sudo systemctl stop apache2
sudo mv /etc/apache2/apache2.conf /etc/apache2/apache2.conf.backup

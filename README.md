# Lab 1.5: Users and Services Management

**Student:** Cristóbal Serna
**Date:** 29/09/2025
**Course:** Operating Systems  

## Executive Summary
This lab focused on practical system administration tasks in a Linux environment. The main objectives were to manage users and groups, configure and monitor services, create a custom service, analyze system performance, and implement basic security measures. Each step was documented to ensure reproducibility and proper understanding of administrative procedures.

## Tasks Completed
- User and group management
- Service configuration and control
- System monitoring and log analysis
- Custom service creation
- Security configuration

## Users and Groups Created
| User    | Groups                     | Home Directory | Shell       | Purpose         |
|---------|----------------------------|----------------|------------|----------------|
| alice   | developers, administrators | /home/alice    | /bin/bash  | Lead Developer |
| bob     | developers                 | /home/bob      | /bin/bash  | Junior Developer |
| charlie | testers                    | /home/charlie  | /bin/bash  | QA Tester      |

## Services Configured
- **Apache2 Web Server**: Installed, started, enabled, and tested via `curl localhost`.
- **Custom Simple Service**: A Bash script service that logs activity every 10 seconds and restarts automatically.
- **SSH Service Analysis**: Status checked, dependencies verified, and logs reviewed.
- **System Service Dependencies**: Examined with `systemctl list-dependencies` to ensure proper startup order.

## Key Learnings
- Learned to create, manage, and assign users to groups securely.
- Gained experience starting, stopping, enabling, and troubleshooting Linux services.
- Developed skills in monitoring system performance and interpreting log files.
- Understood the importance of service dependencies and automatic restart configuration.
- Learned best practices in documenting lab activities and keeping reproducible records.

## Security Measures Implemented
- Set strong passwords for all users.
- Added users to appropriate groups for role-based access.
- Restricted administrative privileges to specific users (alice only).
- Verified sudo permissions and documented changes.
- Monitored services for anomalies and checked logs for errors.


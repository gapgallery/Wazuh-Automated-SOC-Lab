![Last Commit](https://img.shields.io/github/last-commit/gapgallery/Wazuh-Automated-SOC-Lab?style=flat-square)
![Repo Size](https://img.shields.io/github/repo-size/gapgallery/Wazuh-Automated-SOC-Lab?style=flat-square)
![License](https://img.shields.io/github/license/gapgallery/Wazuh-Automated-SOC-Lab?style=flat-square)
![Issues](https://img.shields.io/github/github/issues/gapgallery/Wazuh-Automated-SOC-Lab?style=flat-square)
![Stars](https://img.shields.io/github/stars/gapgallery/Wazuh-Automated-SOC-Lab?style=flat-square)


🛡️ Automated SOC & Incident Response Lab (Wazuh SIEM)
📌 Project Overview
This project implements a lab-scale Cyber Security Operations Center (SOC) using Wazuh SIEM. The primary focus is automating Threat Detection and Active Response on Windows endpoints by leveraging third-party integrations and custom automation scripts.

🚀 Key Features
Real-time Endpoint Monitoring: Utilizes Sysmon and Wazuh FIM for deep visibility into Windows system activities.

Threat Intelligence Integration: Automated malicious file hash validation via the VirusTotal API.

Automated Incident Response: Implementation of custom scripts to sever attacker connections and remove malware instantly, achieving near 0-sec MTTR (Mean Time To Respond).

Log Centralization: Centralized monitoring of authentication logs, file access, and PowerShell activities.

🏗️ Architecture & Topology
Attacker: Ubuntu (IP: 10.10.5.17) – Simulating Nmap scanning and Hydra SSH Brute Force.

SIEM Manager: Wazuh Manager on Ubuntu 24.04 (IP: 10.10.5.12).

Endpoint Agent: Windows 10/11 – Target monitoring via Sysmon and Wazuh Agent.

🛠️ Configurations & Scripts
This project includes several key technical components:

1. Centralized Agent Config (/configs/agent_config.conf)
This configuration enables Sysmon log collection and File Integrity Monitoring (FIM) in real-time for critical directories:

C:\Users\*\Downloads

C:\Users\*\Documents

2. Advanced Containment Scripts (/scripts/)
Developed custom automation scripts to neutralize threats:

Auto-Block-BruteForce.sh: Automatically detects SSH Brute Force attacks and executes an IP Ban on the firewall using iptables.

Advanced-Malware-Containment.ps1: A PowerShell script that terminates malicious processes (Kill Process) and removes the file from the system upon a positive VirusTotal alert.

🔍 Attack Simulation & Detection Evidence
1. Brute Force Attack (Hydra)
Targeting the SSH service on the endpoint. Wazuh successfully triggered Rule ID 2501 (User authentication failure), subsequently activating the automated blocking system.

2. Malware Detection (VirusTotal)
When a suspicious file is placed in the Downloads folder, the system automatically performs a hash scan. Detection is confirmed via the alert: VirusTotal: Alert - default.rdp - 3 engines detected.

🎓 Conclusion
This lab demonstrates that the combination of SIEM, Threat Intelligence, and Automation Scripts significantly minimizes the impact of cyber attacks through early detection and rapid, autonomous response without manual intervention.
<div align="center">



!\[Last Commit](https://img.shields.io/github/last-commit/gapgallery/Wazuh-Automated-SOC-Lab?style=for-the-badge\&color=blue)

!\[Repo Size](https://img.shields.io/github/repo-size/gapgallery/Wazuh-Automated-SOC-Lab?style=for-the-badge\&color=green)

!\[License](https://img.shields.io/github/license/gapgallery/Wazuh-Automated-SOC-Lab?style=for-the-badge\&color=yellow)

!\[Issues](https://img.shields.io/github/github/issues/gapgallery/Wazuh-Automated-SOC-Lab?style=for-the-badge\&color=red)



\# 🛡️ Automated SOC \& Incident Response Lab

\### Powered by Wazuh SIEM \& Active Response Automation



<p align="center">

&nbsp; <img src="https://img.shields.io/badge/SIEM-Wazuh-blue?style=flat-square\&logo=wazuh" alt="Wazuh">

&nbsp; <img src="https://img.shields.io/badge/Automation-PowerShell%20%26%20Bash-orange?style=flat-square\&logo=powershell" alt="Automation">

&nbsp; <img src="https://img.shields.io/badge/Threat%20Intel-VirusTotal-blue?style=flat-square\&logo=virustotal" alt="VirusTotal">

</p>



</div>



---



\## 📖 Project Overview

This project implements a lab-scale \*\*Cyber Security Operations Center (SOC)\*\* using Wazuh SIEM. The primary focus is automating \*\*Threat Detection\*\* and \*\*Active Response\*\* on Windows endpoints by leveraging third-party integrations and custom automation scripts to achieve near \*\*0-second MTTR (Mean Time To Respond)\*\*.



\### 🚀 Key Features

\* \*\*Real-time Endpoint Monitoring:\*\* Integrated \*\*Sysmon\*\* and \*\*Wazuh FIM\*\* for deep visibility.

\* \*\*Threat Intelligence:\*\* Automated malicious file hash validation via \*\*VirusTotal API\*\*.

\* \*\*Active Response:\*\* Custom scripts to sever attacker connections and remove malware instantly.

\* \*\*Log Centralization:\*\* Real-time monitoring of authentication logs, file access, and PowerShell activities.



---



\## 🏗️ Architecture \& Topology



| Role | OS / Platform | Function |

| :--- | :--- | :--- |

| \*\*Attacker\*\* | Ubuntu (10.10.5.17) | Simulating Nmap scanning \& Hydra SSH Brute Force |

| \*\*SIEM Manager\*\* | Wazuh Manager (10.10.5.12) | Centralized Logging \& Alerting Engine |

| \*\*Endpoint Agent\*\* | Windows 10/11 | Target monitoring \& Active Response execution |



---



\## 📂 Repository Structure

```text

.

├── configs/

│   ├── agent\_config.conf   # Centralized Agent \& FIM configuration

│   └── ossec\_config.conf   # Manager-side Active Response rules

├── scripts/

│   ├── Auto-Block-BruteForce.sh     # Bash script for SSH IP Banning

│   └── Advanced-Malware-Containment.ps1 # PowerShell Malware Kill-Switch

├── evidence/               # Attack simulation screenshots \& logs

└── docs/                   # Full lab documentation


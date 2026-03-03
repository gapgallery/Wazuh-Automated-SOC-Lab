<div align="center">

# 🛡️ Automated SOC & Incident Response Lab
### Powered by Wazuh SIEM & Active Response Automation

A comprehensive lab environment for **Real-time Threat Detection** and **Automated Containment** using Wazuh, PowerShell, and Bash integration.

[![last commit](https://img.shields.io/github/last-commit/gapgallery/Wazuh-Automated-SOC-Lab?style=flat-square&color=blue)](https://github.com/gapgallery/Wazuh-Automated-SOC-Lab)
[![repo size](https://img.shields.io/github/repo-size/gapgallery/Wazuh-Automated-SOC-Lab?style=flat-square&color=69KiB)](https://github.com/gapgallery/Wazuh-Automated-SOC-Lab)
[![license](https://img.shields.io/github/license/gapgallery/Wazuh-Automated-SOC-Lab?style=flat-square&color=not%20specified)](https://github.com/gapgallery/Wazuh-Automated-SOC-Lab)
[![issues](https://img.shields.io/github/issues/gapgallery/Wazuh-Automated-SOC-Lab?style=flat-square&color=0%20open)](https://github.com/gapgallery/Wazuh-Automated-SOC-Lab)
[![stars](https://img.shields.io/github/stars/gapgallery/Wazuh-Automated-SOC-Lab?style=flat-square)](https://github.com/gapgallery/Wazuh-Automated-SOC-Lab)

</div>

---

## 📊 Status
Tampilan indikator performa lab secara real-time:
* **Detection Engine:** Wazuh SIEM v4.x
* **MTTR Target:** Near 0-second (Automated)
* **Status:** Operational 🟢

---

## 🔥 Features
* **Real-time Monitoring:** Deep visibility menggunakan **Sysmon** dan **Wazuh FIM**.
* **Automated Response:** Sever attacker connections & malware removal via custom scripts.
* **Threat Intel:** Integrasi API **VirusTotal** untuk validasi hash file otomatis.
* **Log Centralization:** Monitoring terpusat untuk auth logs, file access, dan PowerShell.

---

## 🏗️ Architecture & Topology
| Role | OS / Platform | Function |
| :--- | :--- | :--- |
| **Attacker** | Ubuntu (10.10.5.17) | Simulated Hydra SSH Brute Force |
| **SIEM Manager** | Wazuh Manager | Centralized Alerting Engine |
| **Endpoint Agent** | Windows 10/11 | Active Response Execution |

---

## 📂 Repository Structure
```text
.
├── configs/             # Agent & Manager configurations
├── scripts/             # PowerShell & Bash automation
├── evidence/            # Simulation logs & screenshots
└── docs/                # Full lab documentation
🛡️ Attack Simulation Example
Brute Force Attack (Hydra)
Detection confirmed via Rule ID 2501 (User authentication failure).

Evidence: See /evidence/hydra.png for terminal logs.

⚙️ Dependencies
Wazuh Agent & Manager

Sysmon (Windows)

VirusTotal API Key

PowerShell 5.1+ / Bash
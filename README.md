# Network Security & Scanning — Lab Deliverables

**Author:** Your Name  
**Date:** 2025-10-31

## Objective
Learn reconnaissance, scanning, and network traffic analysis; produce an Nmap scan report and OpenVAS vulnerability report.

## Steps (summary)
1. Reconnaissance: whois, nslookup, Google dorking, Shodan (passive); ping sweep, banner grabbing (active)
2. Port & Service Scanning: nmap TCP/UDP (-sS, -sU), service detection (-sV), OS detection (-O)
3. Vulnerability Scanning: OpenVAS/Nessus setup and scan Metasploitable2
4. Packet Analysis: Wireshark capture of HTTP/FTP/DNS traffic; filter for credentials
5. Firewall basics: simple iptables rules and blocking a port-scan attempt

## Deliverables
- Nmap Scan Report + OpenVAS Vulnerability Report (in REPORT/)  
- GitHub Repo with detailed scan analysis (this repo)  
- 5-min Demo Video showing a scan & findings (place in artifacts/video/)

## Repo Structure
```
network-security-scanning-task/
├─ README.md
├─ REPORT/
│  ├─ NMAP_Scan_Report.md
│  └─ OPENVAS_Vulnerability_Report.md
├─ scripts/
│  ├─ run_scans.sh
│  └─ capture_tcpdump.sh
├─ cheat-sheets/
│  └─ network_cheatsheet.md
├─ video/
│  └─ walkthrough_script.md
├─ artifacts/
│  ├─ screenshots/
│  ├─ pcap/
│  └─ video/
├─ firewall/
│  └─ iptables_examples.md
└─ .gitignore
```

## How to use
1. Populate REPORT/ with your nmap and OpenVAS outputs (PDF/MD).  
2. Put screenshots in artifacts/screenshots/, capture files in artifacts/pcap/, and video in artifacts/video/.  
3. Push to your GitHub account (use `gh` or git CLI).

## Quick push (example)
```bash
git init
git add .
git commit -m "Initial commit — network security scanning task"
gh repo create <your-username>/network-security-scanning-task --public --source=. --remote=origin --push
```

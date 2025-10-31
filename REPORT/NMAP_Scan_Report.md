# Nmap Scan Report

**Target:** <target IP or hostname>  
**Scan date:** YYYY-MM-DD  
**Scanner:** nmap version: <version>

## 1. Scope & Objectives
- Identify open ports and running services for the target.
- Capture service versions and potential misconfigurations.

## 2. Command(s) used
```bash
nmap -sS -Pn -sV -O -p- <target> -oN nmap_full_scan.txt
nmap -sU -Pn -p- <target> -oN nmap_udp_scan.txt
```

## 3. Summary (top findings)
- Open TCP ports: 21/22/80/... (list)
- Open UDP ports: ... (list)
- Services & versions: e.g., Apache 2.2.8, vsftpd 2.3.4
- Possible issues: outdated software, anonymous FTP, weak SSL/TLS

## 4. Full nmap output (attach or paste link)
- `REPORT/nmap_full_scan.txt` (include as artifact)

## 5. Recommendations
- Patch/update identified vulnerable services.
- Apply least privilege and remove unnecessary services.
- Implement network segmentation and firewall rules.

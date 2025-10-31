#!/bin/bash
# Example scan script - edit TARGET before running
TARGET="<TARGET_IP_OR_HOSTNAME>"
echo "[*] Running quick TCP SYN scan and version detection"
nmap -sS -Pn -sV -p- $TARGET -oN REPORT/nmap_full_scan.txt
echo "[*] Running UDP scan (may take longer)"
nmap -sU -Pn -p- $TARGET -oN REPORT/nmap_udp_scan.txt
echo "[*] Done. Outputs in REPORT/"

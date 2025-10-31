# Nmap Scan Report

**Target:** Metaspolitable
**Scan date:** 2025-10-31
**Scanner:** nmap version: 7.95

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

## 4. Full nmap output 
- nmap -sU -sS 192.168.101.129
Starting Nmap 7.95 ( https://nmap.org ) at 2025-10-31 05:24 EDT
Nmap scan report for 192.168.101.129
Host is up (0.0021s latency).
Not shown: 996 open|filtered udp ports (no-response), 884 filtered tcp ports (no-response), 93 closed tcp ports (reset)
PORT     STATE SERVICE
21/tcp   open  ftp
22/tcp   open  ssh
23/tcp   open  telnet
25/tcp   open  smtp
53/tcp   open  domain
80/tcp   open  http
111/tcp  open  rpcbind
139/tcp  open  netbios-ssn
445/tcp  open  microsoft-ds
512/tcp  open  exec
513/tcp  open  login
514/tcp  open  shell
1099/tcp open  rmiregistry
1524/tcp open  ingreslock
2049/tcp open  nfs
2121/tcp open  ccproxy-ftp
3306/tcp open  mysql
5432/tcp open  postgresql
5900/tcp open  vnc
6000/tcp open  X11
6667/tcp open  irc
8009/tcp open  ajp13
8180/tcp open  unknown
53/udp   open  domain
111/udp  open  rpcbind
137/udp  open  netbios-ns
2049/udp open  nfs

Nmap done: 1 IP address (1 host up) scanned in 17.80 seconds
- nmap -sV 192.168.101.129
Starting Nmap 7.95 ( https://nmap.org ) at 2025-10-31 05:23 EDT
Nmap scan report for 192.168.101.129
Host is up (0.0022s latency).
Not shown: 977 filtered tcp ports (no-response)
PORT     STATE SERVICE      VERSION
21/tcp   open  ftp          vsftpd 2.3.4
22/tcp   open  ssh          OpenSSH 4.7p1 Debian 8ubuntu1 (protocol 2.0)
23/tcp   open  telnet       Linux telnetd
25/tcp   open  smtp         Postfix smtpd
53/tcp   open  domain       ISC BIND 9.4.2
80/tcp   open  http         Apache httpd 2.2.8 ((Ubuntu) DAV/2)
111/tcp  open  rpcbind      2 (RPC #100000)
139/tcp  open  netbios-ssn  Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
445/tcp  open  netbios-ssn  Samba smbd 3.X - 4.X (workgroup: WORKGROUP)
512/tcp  open  exec?
513/tcp  open  login?
514/tcp  open  shell?
1099/tcp open  java-rmi     GNU Classpath grmiregistry
1524/tcp open  bindshell    Metasploitable root shell
2049/tcp open  nfs          2-4 (RPC #100003)
2121/tcp open  ccproxy-ftp?
3306/tcp open  mysql?
5432/tcp open  postgresql   PostgreSQL DB 8.3.0 - 8.3.7
5900/tcp open  vnc          VNC (protocol 3.3)
6000/tcp open  X11          (access denied)
6667/tcp open  irc          UnrealIRCd
8009/tcp open  ajp13        Apache Jserv (Protocol v1.3)
8180/tcp open  http         Apache Tomcat/Coyote JSP engine 1.1
Service Info: Hosts:  metasploitable.localdomain, irc.Metasploitable.LAN; OSs: Unix, Linux; CPE: cpe:/o:linux:linux_kernel

Service detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 176.78 seconds

- nmap -O 192.168.101.129 
Starting Nmap 7.95 ( https://nmap.org ) at 2025-10-31 05:24 EDT
Nmap scan report for 192.168.101.129
Host is up (0.0016s latency).
Not shown: 897 filtered tcp ports (no-response), 80 closed tcp ports (reset)
PORT     STATE SERVICE
21/tcp   open  ftp
22/tcp   open  ssh
23/tcp   open  telnet
25/tcp   open  smtp
53/tcp   open  domain
80/tcp   open  http
111/tcp  open  rpcbind
139/tcp  open  netbios-ssn
445/tcp  open  microsoft-ds
512/tcp  open  exec
513/tcp  open  login
514/tcp  open  shell
1099/tcp open  rmiregistry
1524/tcp open  ingreslock
2049/tcp open  nfs
2121/tcp open  ccproxy-ftp
3306/tcp open  mysql
5432/tcp open  postgresql
5900/tcp open  vnc
6000/tcp open  X11
6667/tcp open  irc
8009/tcp open  ajp13
8180/tcp open  unknown
Aggressive OS guesses: Actiontec MI424WR-GEN3I WAP (96%), DD-WRT v24-sp2 (Linux 2.4.37) (95%), Linux 3.2 (94%), Linux 4.4 (92%), Microsoft Windows XP SP3 or Windows 7 or Windows Server 2012 (92%), Microsoft Windows XP SP3 (90%), VMware Player virtual NAT device (88%), BlueArc Titan 2100 NAS device (86%)
No exact OS matches for host (test conditions non-ideal).

OS detection performed. Please report any incorrect results at https://nmap.org/submit/ .
Nmap done: 1 IP address (1 host up) scanned in 17.09 seconds

## 5. Recommendations
- Patch/update identified vulnerable services.
- Apply least privilege and remove unnecessary services.
- Implement network segmentation and firewall rules.

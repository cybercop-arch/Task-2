# Network Cheat Sheet (Nmap / Wireshark / Netcat / tcpdump)

## Nmap
- TCP SYN scan: `nmap -sS -Pn -p- <target>`
- Service/version: `-sV`, OS detect: `-O`, scripts: `-sC` or `--script=...`
- UDP scan: `nmap -sU -Pn -p- <target>`

## Wireshark / tcpdump
- tcpdump capture: `sudo tcpdump -i any host <target> -w capture.pcap`
- Wireshark filter examples: `ip.addr == <target>`, `http`, `ftp`, `tcp.flags.syn == 1 && tcp.flags.ack == 0`

## Netcat
- Banner grab: `echo -e "HEAD / HTTP/1.0\r\n\r\n" | nc <target> 80`
- File transfer: `nc -l 9000 > file` (receive) and `nc <target> 9000 < file` (send)

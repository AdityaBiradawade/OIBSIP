# Task 1 — Basic Network Scanning with Nmap

This task focuses on performing a basic network scan using Nmap to identify open ports and running services on the target machine within the local network.
Nmap is a powerful network reconnaissance tool widely used in the cybersecurity for mapping networks and detecting vulnerablities.

# Tools Used:-
1) Virtual box
2) Kali Linux
3) Nmap 7.95

Step 1:
installing Nmap
sudo apt install nmap

step2:
Performing network scan
nmap 192.168.0.103

# scan results 

nmap 192.168.0.103
Starting Nmap 7.95 ( https://nmap.org ) at 2025-11-15 11:25 IST
Nmap scan report for 192.168.0.103
Host is up (0.000014s latency).
Not shown: 998 closed tcp ports (reset)
PORT   STATE SERVICE
22/tcp open  ssh
80/tcp open  http

Nmap done: 1 IP address (1 host up) scanned in 0.18 seconds

# Analysis of Findings:
1) Port 22(SSH)-open
  - SSH stands for Secure Shell.
  - Used for remote login and command execution.
  - Important for administrators, but also targeted by attackers.
  - should be protected with:
       (1) Strong passwords
       (2) SSH keys
       (3) Disabled root login

2) Port 80 (HTTP)-OPEN
   - HTTP stands for Hypertext Transfer Protocol.
   - HTTP indicates a web server is running.
   - Commonly used for websites and web applications.
   - if not secured, the service may be vulnerable to:
       (1) Cross-site scripting (XSS)
       (2) SQL injection
       (3) Directory traversal

# Summary
- Host is reachable (up).
- Only 2 out of 1000 ports are open.
- Open ports = potential attack surfaces.
- Scanning helps understand what services are exposed.

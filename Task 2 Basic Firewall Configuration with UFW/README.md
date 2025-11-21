# Task 2 Basic Firewall Configuration with UFW

# 📌 Objective
This task demonstrates how to configure a basic firewall on a Linux system using UFW (Uncomplicated Firewall).
The goal is to allow SSH traffic while denying HTTP traffic, then verify that the firewall rules are active.

# 🛠 Tools Used
- UFW (Uncomplicated Firewall)
- Virtual box (Kali Linux)

⚙️ Steps Performed

# install UFW 
sudo apt install ufw 
- This installs the firewall tool and prepares it for configuration.

# Allow SSH
sudo ufw allow ssh
- TO ensure remote access remains available, SSH (port 22) was allowed.

# Deny HTTP Traffic
sudo ufw deny http
- To block web traffic on port 80, the following rule was applied.

# Enable UFW Firewall
sudo ufw enable
- After configuring the rules, UFW was enabled.

# Verify Firewall Status
sudo ufw status
- To confirm the rules applied correctly, the status was checked.

# output
Status: active

To                         Action      From
--                         ------      ----
22/tcp                     ALLOW       Anywhere                  
80/tcp                     DENY        Anywhere                  
22/tcp (v6)                ALLOW       Anywhere (v6)             
80/tcp (v6)                DENY        Anywhere (v6)             

this confirms that:
- SSH is allowed
- HTTP is denied

# ✅ Task Completed
This configuration ensures secure remote access(SSH) while blocking unnecessary HTTP traffic.
Suitable for basic server hardening.

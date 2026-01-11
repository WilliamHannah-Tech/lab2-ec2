🚀 Lab 2 — EC2 Startup Script (User Data Automation)
🎯 Objective

This lab introduces Linux automation and cloud initialization by using an EC2 User Data startup script to automatically configure a server at launch.

You will write a Bash script that sets up an EC2 instance to host a front-facing static website — with no manual setup after deployment.

🧰 Technical Requirements
☁️ Environment

AWS EC2 (Amazon Linux or Ubuntu)

Script must be compatible with EC2 User Data

✅ No SSH configuration required for grading

🛠️ Startup Script Requirements (User Data)

Your startup script must:

✅ Be written in Bash
✅ Run automatically when the instance launches
✅ Perform the following tasks:

Install a web server (Apache or Nginx)

Create an HTML page

Serve the content publicly via HTTP (port 80)

🌐 Web Page Content Requirements

The generated web page must include:

✅ Your name
✅ A background color or background image
✅ At least one embedded image
✅ Three distinct content sections, such as:

👤 About Me

🧩 Project Description

📩 Contact / Footer

HTML/CSS can be inline or in separate files.

📦 Deliverables

You must submit:

1) 🧾 Bash startup script file

startup.sh

2) 🖼️ Screenshots

📸 Screenshot of the running EC2 instance

🌐 Screenshot of the rendered web page in a browser

3) 🧠 Brief explanation of script logic

A short paragraph describing what your script does step-by-step

🖼️ Screenshot Section (Paste Your Images Here)
📸 Screenshot #1 — Running EC2 Instance

🖼️ (Paste your AWS EC2 “Instance running” screenshot here)
✅ Must show instance state: Running

🌐 Screenshot #2 — Rendered Web Page

🖼️ (Paste browser screenshot here showing your site loaded over HTTP)
✅ Must show the page in a browser using your instance Public IP / DNS

🧠 Script Logic Explanation (Example)

✅ What the script does:

Detects whether the instance is running Amazon Linux or Ubuntu

Installs a web server (Apache)

Enables + starts the web server so it runs automatically

Creates an index.html file inside the web root directory (/var/www/html)

The site becomes accessible publicly over HTTP (port 80)
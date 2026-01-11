#!/bin/bash
# Lab 2 — EC2 Startup Script
# Author: Charles Keyes

# Update system packages
yum update -y

# Install Apache web server
yum install -y httpd

# Start and enable Apache at boot
systemctl start httpd
systemctl enable httpd

# Create website directory 
WEB_ROOT="/var/www/html"

# Create HTML page with inline CSS
cat <<EOF > $WEB_ROOT/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Charles Keyes - EC2 Startup Script Lab</title>
    <style>
        body {
            background-color: #000000;     
            color: #f8fafc;
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #800000;    
            padding: 20px;
            text-align: center;
        }
        section {
            padding: 20px;
        }
        img {
            max-width: 800px;
            display: block;
            margin: 20px auto;
            border-radius: 8px;
        }
        footer {
            background-color: #800000;   
            text-align: center;
            padding: 10px;
            font-size: 14px;
        }
    </style>
</head>
<body>

<header>
    <h1>Charles Keyes Jr</h1>
    <p>EC2 Startup Script Automation Lab</p>
</header>

<section>
    <h2>Who Am I?</h2>       
    <p>
        I am one of The Knights of Ren. I’m someone who feels too much and tries to hide it behind anger and strength. I wear a mask not because I need it, but because it helps me feel in control when everything inside me feels loud and confusing.

I come from a powerful family with big expectations, and that pressure made me feel like I was never enough. Part of me wants to be strong and fearless, like the legends before me. Another part of me is scared, lonely, and unsure of who I’m supposed to be.

I chose the dark side because it promised certainty and power—no doubts, no weakness. But the truth is, I’m always fighting myself. I’m not evil because I enjoy it; I’m lost, and I’m trying to prove that my pain means something. 
    </p>
</section>

<section>
    <h2>The Dark Side</h2>       
    <p>
        The dark side feels like someone finally stopped telling you to calm down.

It takes everything you’re told to hide—anger, fear, jealousy, pain—and says: good. It tells you those feelings aren’t weaknesses; they’re fuel. When you’re hurt or furious, the dark side answers immediately. No patience. No meditation. Just power now.

At first, it feels honest. Clean. You don’t have to pretend to be balanced or pure. You don’t have to forgive. You don’t have to wait your turn. If someone wronged you, the dark side gives you the strength to strike back and feel seen.
    </p>
</section>

<img src="https://wallpapercave.com/wp/wp11336029.jpg">   

<section>
    <h2>Contact</h2>
    <p>
        Email: cekdesigns@gmail.com<br>
      
    </p>
</section>

<footer>  
    <p>&copy; Keyes Open Doors Inc. All rights reserved. </p>
</footer>

</body>
</html>
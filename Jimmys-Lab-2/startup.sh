#!/bin/bash
# Simple EC2 User Data Script

# 1. Update system and install Apache
yum update -y
yum install -y httpd

# 2. Start and enable Apache
systemctl start httpd
systemctl enable httpd

# 3. Create a simple static website
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>Jimmy Robertson - EC2 Lab</title>
    <style>
        body {
            background: linear-gradient(135deg, #000000, #0f9d58);
            color: white;
            font-family: Arial, sans-serif;
            text-align: center;
            margin: 0;
            padding: 0;
        }
        h1 {
            padding: 30px 0;
        }
        section {
            margin: 30px auto;
            padding: 20px;
            width: 80%;
            background-color: rgba(0, 0, 0, 0.75);
            border-radius: 10px;
        }
        img {
            width: 250px;
            border-radius: 8px;
            margin-top: 15px;
        }
    </style>
</head>

<body>

<h1>Jimmy Robertson</h1>

<section>
    <h2>About Me</h2>
    <p>My name is Jimmy Robertson, and I am a member of the Knights of the Sith Lords. I enjoy learning about technology, cloud services, and how automation can make setting up systems faster and easier. This project helps me gain hands-on experience with Amazon Web Services and understand how servers can be configured automatically.</p>
</section>

<section>
    <h2>Project Description</h2>
    <p>This project uses a startup script to automatically set up a website on an Amazon EC2 server. When the server turns on, the script installs a web server, creates a web page with text, colors, and an image, and makes the site available on the internet. Everything happens automatically without needing to log into the server.</p>
    <img src="https://tse1.explicit.bing.net/th/id/OIP.6AhwPGL40EhVOgXAxTk3jAAAAA?cb=defcachec2&pid=ImgDet&w=203&h=145&c=7&o=7&rm=3">
</section>

<section>
    <h2>Contact</h2>
    <p>Email: jcrobertson23@yahoo.com</p>
</section>

</body>
</html>
EOF


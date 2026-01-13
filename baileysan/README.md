### SingleA - Lab02
### Lab 2 — EC2 Startup Script *User Data Automation*
---------
This bash script is designed to run automatically when the EC2 instance launches via the `user_data.sh` file. 

### Web Server
- Updates all system packages via linux command `yum update -y`
- Installs Apache web server `httpd`
- Starts Apache and enables it to run on boot

### Retrieve Instance Metadata
- Fetches instance information

### Generate HTML Page
- Includes:
    
    - A custom Japanese-style background, kinda cyberpunk style
    - Image of the lovely Megumichan
    - About me section as requested
    - Project Description
    - Contact / Footer info

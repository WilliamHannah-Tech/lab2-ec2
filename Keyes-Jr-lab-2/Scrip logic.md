
This bash startup script runs automatically at EC2 launch using the user data file.  
It updates the system packages, installs the Apache web server, and ensures the service  on boot.  The script then creates a static HTML page .
Once the instance finishes creating the website it's publicly available using the instance’s public IP address.
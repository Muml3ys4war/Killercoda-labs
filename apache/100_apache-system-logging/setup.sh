apt-get install apache2 -y
systemctl start apache2
a2dissite /etc/apache2/site-available/000-default.conf
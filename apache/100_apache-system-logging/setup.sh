apt-get install apache2 -y
systemctl start apache2
cd /etc/apache2/sites-available; 
a2dissite 000-default.conf
cd 

touch /tmp/finished
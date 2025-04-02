Verify the Installation of apache on the system and Configure logging directive (ErrorLog/CustomLog) on the main configuration file.

<br>

### Solution

<details>
<summary> Solution </summary>
Verify the Installation of Apache on the system

```plain
systemctl status apache2
```{{exec}}
Wait few seconds if apache2 is not active or running

To view more information on Apache , run
```plain
apache2ctl -V
```{{exec}}
what information does it give ?

Check for the httpd_root and config file location
```plain
apache2ctl -V | grep -iE 'httpd_root|server_config_file'
```{{exec}}

Open Apache's main configuration file :
Make sure you are in httpd_root directory (cd httpd_root)
```plain
vi apache.conf
```{{exec}}

Add or Modify the following directives :
```plain
ErrorLog "/var/log/apache2/error_log"
CustomLog "/var/log/apache2/access_log" combined
````

Check for syntax error with apache2ctl

```plain
apache2ctl configtest
```

If the Syntax is Ok , then restart the Apache2 service

```plain
systemctl reload apache2
systemctl status apache2 --no-pager
```{{exec}}

Generate Log and verify logging
```plain
curl http://localhost
tail -5 /var/log/apache2/access_log
```{{exec}}

You can similarly generate error logs and verify it in the error_log file
</details>


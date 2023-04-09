From centos:latest
Run yum install httpd zip unzip -y
Add https://www.free-css.com/assets/files/free-css-templates/download/page290/wave-cafe.zip /var/www/html/
Workdir /var/www/html
Run unzip https://www.free-css.com/assets/files/free-css-templates/download/page290/wave-cafe.zip
Run rm -rf wave-cafe.zip 
Run cp -rf wave-cafe/* .
Run rm -rf wave-cafe
Expose 80
CMD ["/usr/sbin/httpd", "-D" , "FOREGROUND"]

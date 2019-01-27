#cat www.conf > php-fpm_www.yourdomain.com.conf
cat www.conf | sed 's/www/www.yourdomain.com/' | sed 's/\=\ apache/\=\ sshuser/g' > php-fpm_www.yourdomain.com.conf

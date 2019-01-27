#cat www.conf > php-fpm_www.yourdomain.com.conf
#cat www.conf | sed 's/www/www.yourdomain.com/' | sed 's/\=\ apache/\=\ sshuser/g' > php-fpm_www.yourdomain.com.conf
cat www.conf | sed 's/www/www.yourdomain.com/' | sed 's/\=\ apache/\=\ sshuser/g' | sed 's/\/var\/opt\/rh\/rh-php71\/lib\/php\/session/\/var\/opt\/rh\/rh-php71\/lib\/php\/session\/www.yourdomain.com/g' | sed 's/\/var\/opt\/rh\/rh-php71\/lib\/php\/wsdlcache/\/var\/opt\/rh\/rh-php71\/lib\/php\/wsdlcache\/www.yourdomain.com/g' > php-fpm_www.yourdomain.com.conf
cat php-fpm_more_settings.conf >> php-fpm_www.yourdomain.com.conf

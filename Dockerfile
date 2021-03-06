FROM centos/systemd

MAINTAINER "Your Name" <you@example.com>

RUN echo "ip_resolve=4" >> /etc/yum.conf
RUN rm -rf /etc/localtime
RUN ln -s /usr/share/zoneinfo/Asia/Shanghai /etc/localtime

RUN yum -y --enablerepo=extras install epel-release centos-release-scl
RUN yum -y install httpd wget
RUN yum -y install nginx; systemctl enable nginx.service
RUN yum -y install scl-utils

RUN yum -y install rh-php71 rh-php71-php rh-php71-php-fpm

#RUN yum clean all
RUN yum makecache fast

RUN useradd sshuser
RUN usermod -aG apache sshuser
RUN mv /etc/opt/rh/rh-php71/php-fpm.d/www.conf /etc/opt/rh/rh-php71/php-fpm.d/www.conf.bak
COPY php-fpm_www.yourdomain.com.conf /etc/opt/rh/rh-php71/php-fpm.d/php-fpm_www.yourdomain.com.conf.bak
COPY php-fpm_www.yourdomain.com.conf /etc/opt/rh/rh-php71/php-fpm.d/php-fpm_0_www.yourdomain.com.conf


EXPOSE 80 443 22

CMD ["/usr/sbin/init"]

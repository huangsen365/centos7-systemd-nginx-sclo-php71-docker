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

EXPOSE 80

CMD ["/usr/sbin/init"]

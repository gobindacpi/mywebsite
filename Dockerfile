FROM centos:7

RUN yum -y install httpd

COPY index.html /var/www/html/


ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND"]

EXPOSE 80

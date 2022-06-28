FROM centos:latest
MAINTAINER dhruv1998jain@gmail.com 
RUN yum install -y httpd \
  zip \
 unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page247/kindle.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip kindle.zip
RUN cp -rvf markus-kindle/*
RUN rm -rf -MACOSX markus-kindle kindle.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80

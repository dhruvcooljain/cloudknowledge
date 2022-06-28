FROM centos:latest
MAINTAINER dhruv1998jain@gmail.com 
RUN yum install -y httpd \
zip \
unzip 
ADD https://www.free-css.com/assets/files/free-css-templates/download/page280/webwing.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip webwing.zip
RUN cp -rvf html/*
RUN rm -rf -html webwing.zip
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80

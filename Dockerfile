FROM centos:latest
MAINTAINER gyanpraka@gmail.com
RUN yum install -y httpd \
  zip \
 unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page23/balloons.zip /var/www/html/
WORKDIR /var/ww/html
RUN unzip balloons.zip
RUN cp -rvf balloons/* .
RUN rm -rf balloons balloons.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

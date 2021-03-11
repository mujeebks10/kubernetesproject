FROM centos:latest
MAINTAINER : mujeebks10@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page7/blue-n-orange.zip /var/www/html
WORKDIR /var/www/html
RUN unzip blue-n-orange.zip
RUN cp rvf blue-n-orange/* .
RUN rm -rf blue-n-orange blue-n-orange.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80

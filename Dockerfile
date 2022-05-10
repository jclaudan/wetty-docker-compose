FROM php:7.2-apache
RUN apt update && apt install -y git
RUN sed -i 's#www-data:x:33:33:www-data:/var/www:/usr/sbin/nologin#www-data:x:33:33:www-data:/home/www-data:/bin/sh#' /etc/passwd
RUN mkhomedir_helper www-data
RUN su www-data -c 'git config --global init.defaultBranch main && git config --global user.email "max.mustermann@example.com" && git config --global user.name "Max Mustermann"'
COPY src/ /var/www/html/
RUN chmod u=rw /var/www/html/ -R
RUN chmod go=r /var/www/html/ -R
RUN chmod a+x /var/www/html/
RUN mkdir /coding && chown www-data:www-data -R /coding

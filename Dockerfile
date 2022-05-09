FROM php:7.2-apache
RUN apt update && apt install -y git
RUN git config --global init.defaultBranch main && git config --global user.email "max.mustermann@example.com" && git config --global user.name "Max Mustermann"
COPY src/ /var/www/html/
RUN chmod u=rw /var/www/html/ -R
RUN chmod go=r /var/www/html/ -R
RUN chmod a+x /var/www/html/

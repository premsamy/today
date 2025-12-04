FROM ubuntu
RUN apt-get update
RUN apt install apache2 -y
COPY login_page/ /var/www/html/
ENV name task
CMD ["apache2ctl", "-D", "FOREGROUND"]

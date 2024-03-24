
FROM ubuntu:latest


LABEL maintainer="Viacheslav Peleshok <s97076@pollub.edu.pl>"


RUN apt-get update && apt-get upgrade -y


RUN apt-get install -y apache2


COPY index.html /var/www/html/index.html


EXPOSE 8080


CMD ["apache2ctl", "-D", "FOREGROUND"]
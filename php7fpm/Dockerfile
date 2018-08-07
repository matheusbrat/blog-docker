FROM php:7.0-fpm

RUN docker-php-ext-install mysqli

RUN apt-get update && apt-get upgrade -y
RUN apt-get install sendmail  -y # mailutils sendmail-bin
RUN make -C /etc/mail
RUN /etc/init.d/sendmail reload
RUN echo "php_admin_value[sendmail_path] = /usr/sbin/sendmail -t -i -X /var/log/sendmail/sendmail.log" >> /usr/local/etc/php-fpm.conf
RUN echo -e "$(hostname -i)\t$(hostname) $(hostname).localhost" >> /etc/hosts

COPY starter.sh starter.sh

EXPOSE 9000
CMD ["sh", "starter.sh"]


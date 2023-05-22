#!/bin/bash

export DEBIAN_FRONTEND=noninteractive
cp  -f /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
ln -sf /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime
dpkg-reconfigure --frontend noninteractive tzdata

supervisord -c /etc/supervisor/supervisord.conf &
supervisorctl -c /etc/supervisor/supervisord.conf &
php-fpm

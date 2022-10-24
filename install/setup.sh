#!/bin/bash

sed -i 's/ipvar HOME_NET any/ipvar HOME_NET {home_ip}/g' /etc/snort/snort.conf
sed -i 's/#output alert_syslog:/output alert_syslog:/g' /etc/snort/snort.conf
sed -i '40 i auth.info @{syslog_server_ip}' /etc/rsyslog.conf
sed -i '41 i & ~' /etc/rsyslog.conf

systemctl restart rsyslog.service
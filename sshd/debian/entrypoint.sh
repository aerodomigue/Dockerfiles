#!/bin/bash

mkdir -p /root/.ssh/
echo "Port $SSH_PORT" >> /etc/ssh/sshd_config;
echo "$PUBLIC_KEY" > /root/.ssh/authorized_keys
/bin/systemctl restart autofs &
exec /sbin/init
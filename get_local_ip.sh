#!/bin/sh

sed '/wordpress.test/d' /etc/hosts >/etc/hosts.tmp && cat /etc/hosts.tmp >/etc/hosts && rm /etc/hosts.tmp

echo "$(getent hosts host.docker.internal | awk '{ print $1 }') wordpress.test" >>/etc/hosts

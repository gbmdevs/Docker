#!/bin/bash


echo '* Incializacao do React *'
# Incluir mais Watcher para Requisição
echo fs.inotify.max_user_watches=524288 | tee -a /etc/sysctl.conf && sysctl -p


cat /proc/sys/fs/inotify/max_user_watches

sleep infinity
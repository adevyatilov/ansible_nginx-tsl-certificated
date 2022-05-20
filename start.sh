#!/usr/bin/env bash

# $1 имя пользователя от которого будет выполняться playbook на хостах 

REMOTE_USER=$1

if [ $REMOTE_USER ]; then
    keys="-u $REMOTE_USER --ask-vault-password"
fi

# Запуск плейбука
ansible-playbook $keys configure_nginx.yaml







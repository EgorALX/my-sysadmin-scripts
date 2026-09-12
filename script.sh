#!/usr/bin/env bash

username=$1

if [ -z "$username" ]; then
  echo "Нужно указать имя пользователя"
  echo "Пример: ./script.sh alice"
  exit 1
fi

logfile="$(pwd)/setup.log"

mkdir -p "users/$username" && cd "users/$username" || exit 1
echo "# Настройки для $username" > .bashrc
echo "alias ll='ls -la'" >> .bashrc
echo "Привет, $username! Твоя папка готова: users/$username"
echo "$(date) - создан пользователь $username" >> "$logfile"
echo "Готово. Запись добавлена в $logfile"

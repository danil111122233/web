#!/bin/bash

# Сохранить все переменные окружения в файл
printenv > all_env_vars.txt

# Получить имя текущего пользователя
current_user=$(whoami)

# Отфильтровать переменные окружения, не содержащие имя текущего пользователя
grep -v "$current_user" all_env_vars.txt > filtered_env_vars.txt

echo "Переменные окружения сохранены в 'all_env_vars.txt'"
echo "Отфильтрованные переменные окружения сохранены в 'filtered_env_vars.txt'"

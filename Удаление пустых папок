#!/bin/bash

# Проверяем, передан ли аргумент (имя папки)
if [ -z "$1" ]; then
    echo "Не указано имя папки."
    exit 1
fi

# Получаем имя папки
folder_name="$1"

# Путь к домашней директории
home_dir=$HOME

# Полный путь к папке
folder_path="${home_dir}/${folder_name}"

# Проверяем существование папки
if [ ! -d "${folder_path}" ]; then
    echo "Папка ${folder_name} не найдена в домашней директории."
    exit 1
fi

# Проверяем, пустая ли папка
if [ $(ls -A "${folder_path}" | wc -l) -eq 0 ]; then
    # Удаляем папку, если она пустая
    rm -r "${folder_path}"
    echo "Папка ${folder_name} удалена."
else
    echo "Папка ${folder_name} не пустая, поэтому не удалена."
fi

#!/bin/bash

# Обновляем систему
sudo dnf update -y

# Устанавливаем необходимые зависимости
sudo dnf install -y yum-utils device-mapper-persistent-data lvm2

# Добавляем репозиторий Docker
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

# Устанавливаем Docker Engine
sudo dnf install -y docker-ce docker-ce-cli containerd.io

# Запускаем службу Docker
sudo systemctl start docker

# Включаем автозапуск службы Docker при загрузке системы
sudo systemctl enable docker.service

#!/bin/bash

# Установка Flutter
echo "Устанавливаем Flutter..."
git clone https://github.com/flutter/flutter.git -b stable

# Добавление в PATH
echo 'export PATH="$PATH:/workspaces/$mobilki/flutter/bin"' >> ~/.bashrc
source ~/.bashrc

# Проверка установки
echo "Проверяем установку..."
flutter --version

# Настройка для web (если нужно)
flutter config --enable-web

# Получение зависимостей
flutter pub get

echo "Настройка завершена!"
# Используем базовый образ
FROM php:8.1-fpm

# Обновляем репозитории и устанавливаем tzdata
RUN apt-get update && apt-get install -y tzdata

# Устанавливаем дополнительные зависимости (например, Nginx или MySQL)
# RUN apt-get install -y nginx

# Копируем файлы в контейнер
COPY . /var/www/html/

# Открываем порты, если нужно
EXPOSE 80

# Настроим часовой пояс (если необходимо)
RUN ln -fs /usr/share/zoneinfo/Europe/Tallinn /etc/localtime && dpkg-reconfigure -f noninteractive tzdata

# Запуск php-fpm
CMD ["php-fpm"]


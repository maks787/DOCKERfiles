# Используем базовый образ MySQL
FROM mysql:8.0

# Устанавливаем временную зону
RUN apt-get update && \
    apt-get install -y tzdata && \
    dpkg-reconfigure -f noninteractive tzdata
	ENV TZ=Europe/Tallinn
# Копируем файл конфигурации my.cnf, если он у вас есть
COPY my.cnf /etc/mysql/my.cnf

# Копируем и выполняем SQL-скрипты для инициализации
COPY ./docker-entrypoint-initdb.d /docker-entrypoint-initdb.d

# Устанавливаем переменные окружения для MySQL
ENV MYSQL_ROOT_PASSWORD=rootpassword
ENV MYSQL_DATABASE=ads_db
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=userpassword

# Открываем порт для подключения к базе данных
EXPOSE 3306

# Стартуем MySQL
CMD ["mysqld"]


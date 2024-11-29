-- Создание базы данных
CREATE DATABASE IF NOT EXISTS ads_db;

-- Создание пользователя с паролем
CREATE USER IF NOT EXISTS 'user'@'%' IDENTIFIED BY 'userpassword';
CREATE USER IF NOT EXISTS 'root'@'localhost' IDENTIFIED BY '123';

-- Назначение прав пользователю
GRANT ALL PRIVILEGES ON ads_db.* TO 'user'@'%';
GRANT ALL PRIVILEGES ON *.* TO 'root'@'localhost' WITH GRANT OPTION;

-- Применение изменений
FLUSH PRIVILEGES;

-- Создание таблицы ads
CREATE TABLE IF NOT EXISTS ads (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    main_photo VARCHAR(255),
    price DECIMAL(10, 2),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Вставка данных в таблицу ads
INSERT INTO ads (title, description, main_photo, price, created_at) VALUES
('iphone', '12 pro max', NULL, 1200.00, '2024-11-02 16:46:26'),
('bmw', 'black', 'aa', 1100.00, '2024-11-15 06:54:59'),
('iphone12', 'aaa', 'ss', 111.00, '2024-11-15 07:01:02');

-- Создание таблицы users
CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    is_admin BOOLEAN DEFAULT FALSE
);

-- Вставка данных в таблицу users (пример, можно добавить свои значения)
INSERT INTO users (username, password, is_admin) VALUES
('user1', 'password123', FALSE),
('admin', 'adminpassword', TRUE);


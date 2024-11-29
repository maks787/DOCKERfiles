<?php
// Подключение к базе данных
require 'config.php';

// Получение данных из базы
$stmt = $pdo->query("SELECT * FROM ads LIMIT 10");
$ads = $stmt->fetchAll(PDO::FETCH_ASSOC);
?>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Объявления</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <div class="logo">
            <h1>Мои Объявления</h1>
        </div>
        <nav>
            <ul>
                <li><a href="index.php">Главная</a></li>
                <li><a href="list_ads.php">Добавить Объявление</a></li>
            </ul>
        </nav>
    </header>

    <main>
        <section class="ads-list">
            <h2>Список Объявлений</h2>
            <?php foreach ($ads as $ad): ?>
                <div class="ad">
                    <img src="images/<?= htmlspecialchars($ad['main_photo']) ?>" alt="<?= htmlspecialchars($ad['title']) ?>">
                    <div class="ad-details">
                        <h3><?= htmlspecialchars($ad['title']) ?></h3>
                        <p><?= htmlspecialchars($ad['description']) ?></p>
                        <p class="price">Цена: <?= htmlspecialchars($ad['price']) ?> руб.</p>
                    </div>
                </div>
            <?php endforeach; ?>
        </section>
    </main>

    <footer>
        <p>&copy; 2024 Мои Объявления</p>
    </footer>
</body>
</html>


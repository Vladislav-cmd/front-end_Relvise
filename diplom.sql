-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 22 2022 г., 10:03
-- Версия сервера: 10.4.11-MariaDB
-- Версия PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `diplom`
--

-- --------------------------------------------------------

--
-- Структура таблицы `links`
--

CREATE TABLE `links` (
  `id` int(11) UNSIGNED NOT NULL,
  `long_link` varchar(255) NOT NULL,
  `short_link` varchar(255) NOT NULL,
  `author` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `links`
--

INSERT INTO `links` (`id`, `long_link`, `short_link`, `author`) VALUES
(30, 'https://vk.com/id40359559', 'ыыы', 'Виктор'),
(28, 'https://vk.com/id40359559', 'вквк', 'Влад'),
(24, 'http://localhost/phpmyadmin/sql.php?server=1&db=diplom&table=links&pos=0', 'kontakt', 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `email` varchar(100) NOT NULL,
  `login` varchar(70) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `email`, `login`, `pass`) VALUES
(13, 'test@yandex.ru', 'Test', '$2y$10$2hPbEfozTyV/qdNswF2K2Os6PANdphu5fdBNqbxO7lJJKjal.Bn2.'),
(14, 'jean41@yandex.ru', 'Влад', '$2y$10$0prmNKrrXoX/aMygM5LOsumDJCnwFiGEZxf5Ca6pDlaeLQTPt6ChO'),
(15, 'jean41@yandex.ru', 'John', '$2y$10$dz/VrQYJUZIYmO0HJnEYF.zgDngT7K.25takTpQQd2ErIL1cIAZie'),
(16, 'jean41@yandex.ru', 'Виктор', '$2y$10$ERqsqXWd8JS2rxifoS36AuJ3OlkTqXkLkZwfXB2ef4evmi17HffSe'),
(12, 'jean41@yandex.ru', 'Admin', '$2y$10$cJ1SYvA0K4tVJFC113SfQOoEgZpNikxxXOQGWczWC2E5oMZGaMir6');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

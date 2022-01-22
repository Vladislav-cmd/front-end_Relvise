-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 22 2022 г., 10:04
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
-- База данных: `hometask`
--

-- --------------------------------------------------------

--
-- Структура таблицы `items`
--

CREATE TABLE `items` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `price` int(5) UNSIGNED NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `items`
--

INSERT INTO `items` (`id`, `title`, `price`, `category`) VALUES
(1, 'Кружка Мужская', 300, 'cups'),
(2, 'Кепка красная', 150, 'hats'),
(3, 'Кепка синяя', 200, 'hats'),
(4, 'Кружка Женская', 400, 'cups'),
(5, 'Красная футблока', 550, 'shirts'),
(6, 'Футболка \"Рик и Морти\"', 700, 'shirts');

-- --------------------------------------------------------

--
-- Структура таблицы `items_1`
--

CREATE TABLE `items_1` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(40) NOT NULL,
  `price` int(20) UNSIGNED NOT NULL,
  `category` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `items_1`
--

INSERT INTO `items_1` (`id`, `title`, `price`, `category`) VALUES
(1, 'Кружка Мужская', 300, 'cups'),
(2, 'Кепка красная', 150, 'hats'),
(3, 'Кепка синяя', 200, 'hats'),
(4, 'Кружка Женская', 400, 'cups'),
(5, 'Красная футболка', 550, 'shirts'),
(6, 'Футболка \"Рик и Морти\"', 700, 'shirts');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `item_id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `item_id`) VALUES
(122, 1, 3),
(121, 1, 2),
(120, 1, 3),
(119, 1, 2),
(118, 1, 3),
(117, 1, 2),
(116, 1, 3),
(115, 1, 2),
(114, 1, 3),
(113, 1, 2),
(112, 1, 3),
(111, 1, 2),
(110, 1, 3),
(109, 1, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `orders_1`
--

CREATE TABLE `orders_1` (
  `id` int(11) UNSIGNED NOT NULL,
  `users_id` varchar(20) NOT NULL,
  `items_id` int(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(150) NOT NULL,
  `pass` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `pass`) VALUES
(1, 'john', 'some_pass'),
(2, 'alex', 'some_pass');

-- --------------------------------------------------------

--
-- Структура таблицы `users_1`
--

CREATE TABLE `users_1` (
  `id` int(11) UNSIGNED NOT NULL,
  `login` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users_1`
--

INSERT INTO `users_1` (`id`, `login`, `pass`) VALUES
(1, 'john', 'some_pass'),
(2, 'alex', 'some_pass');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `items_1`
--
ALTER TABLE `items_1`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders_1`
--
ALTER TABLE `orders_1`
  ADD UNIQUE KEY `id` (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users_1`
--
ALTER TABLE `users_1`
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `items_1`
--
ALTER TABLE `items_1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `users_1`
--
ALTER TABLE `users_1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

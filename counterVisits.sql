-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 18 2017 г., 13:26
-- Версия сервера: 5.7.17-0ubuntu0.16.04.1
-- Версия PHP: 7.0.15-0ubuntu0.16.04.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `counterVisits`
--

-- --------------------------------------------------------

--
-- Структура таблицы `counterData`
--

CREATE TABLE `counterData` (
  `id` int(11) NOT NULL,
  `domain` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `counterData`
--

INSERT INTO `counterData` (`id`, `domain`, `ip`, `date`) VALUES
(1, 'www.google.com', '123.53.23.13', '2017-04-18 15:23:19'),
(2, 'countervisits', '\r\n\r\n127.0.0.1\r\n', '2017-03-02 12:26:55'),
(3, 'countervisits', '\r\n\r\n127.0.0.1\r\n', '2017-03-02 12:28:50'),
(7, '138.197.11.25', '128.199.201.63', '2017-03-02 13:10:42'),
(8, '138.197.11.25', '128.199.201.63', '2017-03-02 13:15:50'),
(9, '138.197.11.25', '128.199.201.63', '2017-04-18 17:17:56'),
(10, '138.197.11.25', '128.199.201.63', '2017-04-18 17:19:11'),
(11, '138.197.11.25', '128.199.201.63', '2017-04-18 14:21:09');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `counterData`
--
ALTER TABLE `counterData`
  ADD PRIMARY KEY (`id`),
  ADD KEY `domain` (`domain`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `counterData`
--
ALTER TABLE `counterData`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

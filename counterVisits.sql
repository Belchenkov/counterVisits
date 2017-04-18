-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1:3306
-- Время создания: Апр 18 2017 г., 15:45
-- Версия сервера: 5.7.13-log
-- Версия PHP: 7.0.8

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

CREATE TABLE IF NOT EXISTS `counterData` (
  `id` int(11) NOT NULL,
  `domain` varchar(50) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `counterData`
--

INSERT INTO `counterData` (`id`, `domain`, `ip`, `date`) VALUES
(1, 'www.google.com', '123.53.23.13', '2017-04-18 15:23:19'),
(2, 'countervisits', '\r\n\r\n127.0.0.1\r\n', '2017-03-02 12:26:55'),
(3, 'countervisits', '\r\n\r\n127.0.0.1\r\n', '2017-03-02 12:28:50'),
(4, 'countervisits', '\r\n\r\n\r\n', '2017-03-02 12:33:17');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

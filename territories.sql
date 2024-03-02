-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 27 2024 г., 07:34
-- Версия сервера: 5.5.64-MariaDB
-- Версия PHP: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `c1tstu`
--

-- --------------------------------------------------------

--
-- Структура таблицы `territories`
--

CREATE TABLE IF NOT EXISTS `territories` (
  `id` int(11) NOT NULL,
  `title_uz` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `territories`
--

INSERT INTO `territories` (`id`, `title_uz`) VALUES
(8, 'Qoraqalpogʻiston Respublikasi'),
(9, 'Buxoro viloyati'),
(10, 'Samarqand viloyati'),
(11, 'Navoiy viloyati'),
(12, 'Andijon viloyati'),
(13, 'Fargʻona viloyati'),
(14, 'Surxondaryo viloyati'),
(15, 'Sirdaryo viloyati'),
(16, 'Xorazm viloyati'),
(17, 'Toshkent viloyati'),
(18, 'Qashqadaryo viloyati'),
(19, 'Jizzax viloyati'),
(21, 'Namangan viloyati'),
(22, 'Toshkent shahri');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `territories`
--
ALTER TABLE `territories`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `territories`
--
ALTER TABLE `territories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

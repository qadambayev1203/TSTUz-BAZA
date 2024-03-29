-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Фев 27 2024 г., 07:32
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
-- Структура таблицы `districts`
--

CREATE TABLE IF NOT EXISTS `districts` (
  `id` int(11) NOT NULL,
  `territory_id` int(11) NOT NULL,
  `title_uz` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `districts`
--

INSERT INTO `districts` (`id`, `territory_id`, `title_uz`) VALUES
(1, 8, 'Boʻzatov tumani'),
(3, 14, 'Bandixon tumani'),
(4, 16, 'Tuproqqal''a tumani'),
(10, 8, 'Nukus shahar'),
(12, 8, 'Amudaryo tumani'),
(13, 8, 'Beruniy tumani'),
(14, 8, 'Qonlikoʻl tumani'),
(15, 8, 'Qoraoʻzak tumani'),
(16, 8, 'Kegeyli tumani'),
(17, 8, 'Qoʻngʻirot tumani'),
(18, 8, 'Muynoq tumani'),
(19, 8, 'Nukus tumani'),
(20, 8, 'Taxtakoʻprik tumani'),
(21, 8, 'Toʻrtkoʻl tumani'),
(22, 8, 'Xoʻjayli tumani'),
(23, 8, 'Chimboy tumani'),
(24, 8, 'Shoʻmanay tumani'),
(25, 8, 'Ellikqal''a tumani'),
(26, 9, 'Buxoro shahar'),
(27, 9, 'Buxoro tuman'),
(28, 9, 'Vobkent tuman'),
(29, 9, 'Gʻijduvon tuman'),
(30, 9, 'Jondor tuman'),
(32, 9, 'Kogon tuman'),
(33, 9, 'Olot tuman'),
(34, 9, 'Peshku tuman'),
(35, 9, 'Romitan tuman'),
(36, 9, 'Shofirkon tuman'),
(37, 9, 'Qorakoʻl tuman'),
(38, 9, 'Qorovulbozor tuman'),
(39, 10, 'Samarqand shahar'),
(40, 10, 'Oqdaryo tumani'),
(41, 10, 'Bulungʻur tumani'),
(42, 10, 'Jomboy tumani'),
(43, 10, 'Kattaqoʻrgʻon tumani'),
(44, 10, 'Kattaqoʻrgʻon shahar'),
(45, 10, 'Qoʻshrabod tumani'),
(46, 10, 'Narpay tumani'),
(47, 10, 'Nurobod tumani'),
(48, 10, 'Payariq tumani'),
(49, 10, 'Pastdargʻom tumani'),
(50, 10, 'Paxtachi tumani'),
(51, 10, 'Samarqand tumani'),
(53, 10, 'Tayloq tumani'),
(54, 10, 'Urgut tumani'),
(55, 11, 'Navoiy shahar'),
(56, 11, 'Karmana tumani'),
(57, 11, 'Navbaxor tumani'),
(58, 11, 'Nurota tumani - Gʻozgʻon shahri'),
(59, 11, 'Xatirchi tumani'),
(60, 11, 'Qiziltepa tumani'),
(61, 11, 'Konimex tumani'),
(62, 11, 'Uchquduq tumani'),
(63, 11, 'Zarafshon shahar'),
(64, 11, 'Tomdi tumani'),
(65, 12, 'Andijon shahar'),
(66, 12, 'Xonobod shahar'),
(67, 12, 'Andijon tumani'),
(68, 12, 'Asaka tumani'),
(69, 12, 'Baliqchi tumani'),
(70, 12, 'Boʻz tumani'),
(71, 12, 'Buloqboshi tumani'),
(72, 12, 'Jalolquduq tumani'),
(73, 12, 'Izboskan tumani'),
(74, 12, 'Ulugʻnor tumani'),
(75, 12, 'Qoʻrgʻontepa tumani'),
(76, 12, 'Marxamat tumani'),
(77, 12, 'Oltinkoʻl tumani'),
(78, 12, 'Paxtaobod tumani'),
(79, 12, 'Hoʻjaobod tumani'),
(80, 12, 'Shaxrixon tumani'),
(82, 13, 'Margʻilon shahar'),
(83, 13, 'Fargʻona shahar'),
(84, 13, 'Quvasoy shahar'),
(85, 13, 'Qoʻqon shahar'),
(86, 13, 'Bogʻdod tumani'),
(87, 13, 'Beshariq tumani'),
(88, 13, 'Buvayda tumani'),
(89, 13, 'Dangʻara tumani'),
(90, 13, 'Yozyovon tumani'),
(91, 13, 'Oltiariq tumani'),
(92, 13, 'Qoʻshtepa tumani'),
(93, 13, 'Rishton tumani'),
(94, 13, 'Soʻx tumani'),
(95, 13, 'Toshloq tumani'),
(96, 13, 'Uchkoʻprik tumani'),
(97, 13, 'Fargʻona tumani'),
(98, 13, 'Furqat tumani'),
(99, 13, 'Oʻzbekiston tumani'),
(100, 13, 'Quva tumani'),
(101, 14, 'Angor tumani'),
(102, 14, 'Boysun tumani'),
(103, 14, 'Denov tumani'),
(104, 14, 'Jarqoʻrgʻon tumani'),
(105, 14, 'Qiziriq tumani'),
(106, 14, 'Qumqoʻrgʻon tumani'),
(107, 14, 'Muzrabot tumani'),
(108, 14, 'Oltinsoy tumani'),
(109, 14, 'Sariosiyo tumani'),
(110, 14, 'Termiz tumani'),
(111, 14, 'Termiz shahar'),
(112, 14, 'Uzun tumani'),
(113, 14, 'Sherobod tumani'),
(114, 14, 'Shoʻrchi tumani'),
(115, 15, 'Oqoltin tumani'),
(116, 15, 'Boyovut tumani'),
(117, 15, 'Guliston tumani'),
(118, 15, 'Mirzaobod tumani'),
(119, 15, 'Sayxunobod tumani'),
(120, 15, 'Sirdaryo tumani'),
(121, 15, 'Sardoba tumani'),
(122, 15, 'Xovos tumani'),
(123, 15, 'Guliston shahar'),
(124, 15, 'Shirin shahar'),
(126, 15, 'Yangier shahar'),
(127, 16, 'Urganch shahar'),
(128, 16, 'Bogʻot tumani'),
(129, 16, 'Gurlan tumani'),
(130, 16, 'Xozarasp tumani'),
(131, 16, 'Xiva tumani'),
(132, 16, 'Xonqa tumani'),
(133, 16, 'Urganch tumani'),
(134, 16, 'Qoʻshkoʻpir tumani'),
(135, 16, 'Shovot tumani'),
(136, 16, 'Yangiariq tumani'),
(137, 16, 'Yangibozor tumani'),
(138, 17, 'Angren shahar'),
(139, 17, 'Bekobod shahar'),
(140, 17, 'Olmaliq shahar'),
(141, 17, 'Chirchiq shahar'),
(142, 17, 'Bekobod tumani'),
(143, 17, 'Boʻka tumani'),
(144, 17, 'Boʻstonliq tumani'),
(145, 17, 'Qibray tumani'),
(146, 17, 'Zangiota tumani'),
(148, 17, 'Quyichirchiq tumani'),
(149, 17, 'Oqqoʻrgʻon tumani'),
(150, 17, 'Oxongaron tumani'),
(151, 17, 'Parkent tumani'),
(152, 17, 'Pskent tumani'),
(153, 17, 'Oʻrtachirchiq tumani - Yangihayot tumani'),
(154, 17, 'Chinoz tumani'),
(155, 17, 'Yuqorichirchiq tumani'),
(156, 17, 'Yangiyoʻl tumani - Yangihayot tumani'),
(158, 18, 'Qarshi shahar'),
(159, 18, 'Gʻuzor tumani'),
(160, 18, 'Qarshi tumani'),
(161, 18, 'Kasbi tumani'),
(162, 18, 'Koson tumani'),
(163, 18, 'Kitob tumani'),
(164, 18, 'Mirishkor tumani'),
(165, 18, 'Muborak tumani'),
(166, 18, 'Nishon tumani'),
(167, 18, 'Chiroqchi tumani'),
(168, 18, 'Shaxrisabz tumani'),
(170, 18, 'Qamashi tumani'),
(171, 18, 'Dexqonobod tumani'),
(172, 18, 'Yakkabogʻ tumani'),
(173, 19, 'Jizzax shahar'),
(174, 19, 'Baxmal tumani'),
(175, 19, 'Doʻstlik tumani'),
(176, 19, 'Gʻallaorol tumani'),
(177, 19, 'Sh.Rashidov tumani'),
(178, 19, 'Zarbdor tumani'),
(179, 19, 'Zafarobod tumani'),
(180, 19, 'Zomin tumani'),
(181, 19, 'Paxtakor tumani'),
(182, 19, 'Mirzachoʻl tumani'),
(183, 19, 'Forish tumani'),
(184, 19, 'Yangiobod tumani'),
(185, 21, 'Namangan shahar'),
(186, 21, 'Mingbuloq tumani'),
(189, 21, 'Pop tumani'),
(190, 21, 'Norin tumani'),
(191, 21, 'Toʻraqoʻrgʻon tumani'),
(192, 21, 'Uychi tumani'),
(194, 21, 'Chortoq tumani'),
(195, 21, 'Chust tumani'),
(196, 21, 'Yangiqoʻrgʻon tumani'),
(198, 22, 'Yunusobod tumani'),
(199, 22, 'Mirobod tumani'),
(200, 22, 'Yakkasaroy tumani'),
(201, 22, 'Olmazor tumani'),
(202, 22, 'Bektemir tumani - Yangihayot tumani'),
(203, 22, 'Yashnobod tumani'),
(204, 22, 'Chilonzor tumani'),
(205, 22, 'Uchtepa tumani'),
(207, 22, 'Mirzo Ulugʻbek tumani'),
(208, 22, 'Sergeli tumani - Yangihayot tumani'),
(209, 10, 'Ishtixon tumani'),
(210, 9, 'Kogon shahar'),
(211, 19, 'Arnasoy tumani'),
(212, 22, 'Shayxontoxur tumani'),
(214, 21, 'Namangan tumani'),
(215, 21, 'Uchqoʻrgʻon tumani'),
(216, 21, 'Kosonsoy tumani'),
(217, 16, 'Xiva shahar'),
(218, 8, 'Taxiatosh'),
(219, 18, 'Shaxrisabz shahar'),
(220, 17, 'Toshkent tumani'),
(221, 17, 'Yangiyoʻl shahar'),
(222, 17, 'Ohangaron shahar'),
(223, 17, 'Nurafshon shahar');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=224;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

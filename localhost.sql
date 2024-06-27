-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 29 2024 г., 06:35
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
-- Структура таблицы `ad_types`
--

CREATE TABLE IF NOT EXISTS `ad_types` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `admissions`
--

CREATE TABLE IF NOT EXISTS `admissions` (
  `id` int(11) NOT NULL,
  `citizenship_t` varchar(255) NOT NULL DEFAULT 'Гражданство',
  `citizenship_v` varchar(255) DEFAULT NULL,
  `full_name_t` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'Ф.И.О.',
  `full_name_v` text CHARACTER SET utf8,
  `email_t` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT 'Email',
  `email_v` varchar(255) DEFAULT NULL,
  `phone_t` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Телефон',
  `phone_v` varchar(50) DEFAULT NULL,
  `languages_t` varchar(255) NOT NULL DEFAULT 'Язык обучения',
  `languages_v` text,
  `edu_program_t` varchar(255) NOT NULL DEFAULT 'Образовательная программа',
  `edu_program_v` text,
  `learning_phase_t` varchar(255) NOT NULL DEFAULT 'Этап обучения',
  `learning_phase_v` text,
  `form_of_study_t` varchar(255) NOT NULL DEFAULT 'Форма обучения',
  `form_of_study_v` text,
  `faculty_t` varchar(255) NOT NULL DEFAULT 'Факультет',
  `faculty_v` text,
  `directions_t` varchar(255) NOT NULL DEFAULT 'Образовательные направления',
  `directions_v` text,
  `status_id` int(11) NOT NULL DEFAULT '2',
  `sms` varchar(30) DEFAULT NULL,
  `sms_datetime` timestamp NULL DEFAULT NULL,
  `comment` text,
  `passport` text,
  `diplom` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `ads`
--

CREATE TABLE IF NOT EXISTS `ads` (
  `id` int(11) NOT NULL,
  `title_uz` text NOT NULL,
  `title_eng` text NOT NULL,
  `title_ru` text NOT NULL,
  `descr_uz` text,
  `descr_eng` text,
  `descr_ru` text,
  `button_text_uz` text,
  `button_text_eng` text,
  `button_text_ru` text,
  `button_icon` varchar(100) DEFAULT NULL,
  `img` text NOT NULL,
  `link` text,
  `status_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `favorite` int(11) DEFAULT NULL,
  `ad_type_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `appeals`
--

CREATE TABLE IF NOT EXISTS `appeals` (
  `id` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `territory_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `neighborhood_id` int(11) NOT NULL,
  `adress` text NOT NULL,
  `fio` text NOT NULL,
  `birthday` date NOT NULL,
  `gender` varchar(50) NOT NULL,
  `employment` varchar(50) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `tel2` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `file` text NOT NULL,
  `appeal` text NOT NULL,
  `answer` text,
  `answer_link` text,
  `status_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `blog_categories`
--

CREATE TABLE IF NOT EXISTS `blog_categories` (
  `id` int(11) NOT NULL,
  `title_uz` text NOT NULL,
  `title_eng` text NOT NULL,
  `title_ru` text NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
  `id` int(11) NOT NULL,
  `blog_category_id` int(11) NOT NULL,
  `title_uz` text NOT NULL,
  `title_eng` text NOT NULL,
  `title_ru` text NOT NULL,
  `descr_uz` text NOT NULL,
  `descr_eng` text NOT NULL,
  `descr_ru` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `end_date` timestamp NULL DEFAULT NULL,
  `img` text,
  `link` text,
  `text_uz` longtext NOT NULL,
  `text_eng` longtext NOT NULL,
  `text_ru` longtext NOT NULL,
  `favorite` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `certificateholders`
--

CREATE TABLE IF NOT EXISTS `certificateholders` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `surname` varchar(255) DEFAULT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `comment` text,
  `email` varchar(100) DEFAULT NULL,
  `tel` varchar(50) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `clubusers`
--

CREATE TABLE IF NOT EXISTS `clubusers` (
  `id` int(11) NOT NULL,
  `fio` text CHARACTER SET utf8,
  `birthday` date DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `address` text CHARACTER SET utf8,
  `company` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `job` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `bio` text CHARACTER SET utf8,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `datas`
--

CREATE TABLE IF NOT EXISTS `datas` (
  `id` int(11) NOT NULL,
  `adress` text NOT NULL,
  `email` text NOT NULL,
  `tel` text NOT NULL,
  `1_menus` text NOT NULL,
  `2_menus` text NOT NULL,
  `descr_uz` text NOT NULL,
  `descr_eng` text NOT NULL,
  `descr_ru` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `department_types`
--

CREATE TABLE IF NOT EXISTS `department_types` (
  `id` int(11) NOT NULL,
  `title_uz` text NOT NULL,
  `title_eng` text NOT NULL,
  `title_ru` text NOT NULL,
  `descr_uz` text NOT NULL,
  `descr_eng` text NOT NULL,
  `descr_ru` text NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `departments`
--

CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(11) NOT NULL,
  `department_type_id` int(11) NOT NULL,
  `title_uz` text NOT NULL,
  `title_eng` text NOT NULL,
  `title_ru` text NOT NULL,
  `descr_uz` text,
  `descr_eng` text,
  `descr_ru` text,
  `status_id` int(11) NOT NULL,
  `img` text,
  `img_icon` text,
  `text_uz` longtext,
  `text_eng` longtext,
  `text_ru` longtext,
  `parent_id` int(11) NOT NULL,
  `favorite` int(11) DEFAULT NULL,
  `number_text_1` text,
  `number_icon_1` text,
  `number_1` int(11) DEFAULT NULL,
  `number_text_2` text,
  `number_icon_2` text,
  `number_2` int(11) DEFAULT NULL,
  `number_text_3` text,
  `number_icon_3` text,
  `number_3` int(11) DEFAULT NULL,
  `number_text_4` text,
  `number_icon_4` text,
  `number_4` int(11) DEFAULT NULL,
  `stipendiya` varchar(255) DEFAULT NULL,
  `talablar` varchar(255) DEFAULT NULL,
  `kontrakt` varchar(255) DEFAULT NULL,
  `sirtqi` varchar(255) DEFAULT NULL,
  `kechki` varchar(255) DEFAULT NULL,
  `masofaviy` varchar(255) DEFAULT NULL,
  `talimtili` varchar(255) DEFAULT NULL,
  `page_type_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `districts`
--

CREATE TABLE IF NOT EXISTS `districts` (
  `id` int(11) NOT NULL,
  `territory_id` int(11) NOT NULL,
  `title_uz` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `donators`
--

CREATE TABLE IF NOT EXISTS `donators` (
  `id` int(11) NOT NULL,
  `fio` varchar(255) DEFAULT NULL,
  `card_n_u_m` varchar(255) DEFAULT NULL,
  `card_m` varchar(20) DEFAULT NULL,
  `card_y` varchar(20) DEFAULT NULL,
  `summ` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `bank_info` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `employee_types`
--

CREATE TABLE IF NOT EXISTS `employee_types` (
  `id` int(11) NOT NULL,
  `title_uz` text NOT NULL,
  `title_eng` text NOT NULL,
  `title_ru` text NOT NULL,
  `descr_uz` text NOT NULL,
  `descr_eng` text NOT NULL,
  `descr_ru` text NOT NULL,
  `status_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `full_name_uz` text NOT NULL,
  `full_name_eng` text NOT NULL,
  `full_name_ru` text NOT NULL,
  `socials` int(11) DEFAULT NULL,
  `employee_type_id` int(11) NOT NULL,
  `employee_type_2_ru` text,
  `employee_type_3_ru` text,
  `employee_type_2_uz` text,
  `employee_type_3_uz` text,
  `employee_type_2_eng` text,
  `employee_type_3_eng` text,
  `department_id` int(11) NOT NULL,
  `status_id` int(11) NOT NULL,
  `img` text,
  `text_uz` longtext,
  `text_eng` longtext,
  `text_ru` longtext,
  `orcid` varchar(255) DEFAULT NULL,
  `scauthorid` varchar(255) DEFAULT NULL,
  `passport_pin` varchar(255) DEFAULT NULL,
  `passport_number1` varchar(255) DEFAULT NULL,
  `passport_number2` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `waddress` text,
  `tel` text,
  `email` text,
  `facebook` text,
  `telegram` text,
  `blog` text,
  `instagram` text,
  `youtube` text,
  `favorite` int(11) NOT NULL,
  `ple` varchar(255) DEFAULT NULL,
  `plr` varchar(255) DEFAULT NULL,
  `plu` varchar(255) DEFAULT NULL,
  `pla` varchar(255) DEFAULT NULL,
  `plat` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `evaluation_ranks`
--

CREATE TABLE IF NOT EXISTS `evaluation_ranks` (
  `id` int(11) NOT NULL,
  `evaluation_id` int(11) NOT NULL,
  `i1` int(11) DEFAULT NULL,
  `i2` int(11) DEFAULT NULL,
  `i3` int(11) DEFAULT NULL,
  `i4` int(11) DEFAULT NULL,
  `i5` int(11) DEFAULT NULL,
  `i6` int(11) DEFAULT NULL,
  `i7` int(11) DEFAULT NULL,
  `i8` int(11) DEFAULT NULL,
  `i9` int(11) DEFAULT NULL,
  `i10` int(11) DEFAULT NULL,
  `u1` int(11) DEFAULT NULL,
  `u2` int(11) DEFAULT NULL,
  `u3` int(11) DEFAULT NULL,
  `u4` int(11) DEFAULT NULL,
  `u5` int(11) DEFAULT NULL,
  `u6` int(11) DEFAULT NULL,
  `u7` int(11) DEFAULT NULL,
  `u8` int(11) DEFAULT NULL,
  `u9` int(11) DEFAULT NULL,
  `u10` int(11) DEFAULT NULL,
  `u11` int(11) DEFAULT NULL,
  `u12` int(11) DEFAULT NULL,
  `u13` int(11) DEFAULT NULL,
  `u14` int(11) DEFAULT NULL,
  `u15` int(11) DEFAULT NULL,
  `typ` int(11) DEFAULT '1',
  `st` int(11) DEFAULT '9',
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `evaluations`
--

CREATE TABLE IF NOT EXISTS `evaluations` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `files`
--

CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) NOT NULL,
  `title` mediumtext,
  `link` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `code` varchar(100) NOT NULL,
  `status_id` int(11) NOT NULL,
  `st` int(11) NOT NULL DEFAULT '0',
  `group_type_id` int(11) NOT NULL,
  `faculty_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `h_sections`
--

CREATE TABLE IF NOT EXISTS `h_sections` (
  `id` int(11) NOT NULL,
  `title_uz` text NOT NULL,
  `title_eng` text NOT NULL,
  `title_ru` text NOT NULL,
  `descr_uz` text,
  `descr_eng` text,
  `descr_ru` text,
  `img` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `images`
--

CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL,
  `title` mediumtext,
  `link` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `lessons`
--

CREATE TABLE IF NOT EXISTS `lessons` (
  `id` int(11) NOT NULL,
  `teacher` varchar(255) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `lesson` varchar(255) NOT NULL,
  `faculty_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `links`
--

CREATE TABLE IF NOT EXISTS `links` (
  `id` int(11) NOT NULL,
  `title_uz` text NOT NULL,
  `title_eng` text NOT NULL,
  `title_ru` text NOT NULL,
  `link` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `logos`
--

CREATE TABLE IF NOT EXISTS `logos` (
  `id` int(11) NOT NULL,
  `img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `menu_types`
--

CREATE TABLE IF NOT EXISTS `menu_types` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `hight_menu` int(11) DEFAULT NULL,
  `menu_type_id` int(11) NOT NULL,
  `title_uz` text NOT NULL,
  `title_eng` text NOT NULL,
  `title_ru` text NOT NULL,
  `icon` varchar(155) DEFAULT NULL,
  `descr_uz` text,
  `descr_eng` text,
  `descr_ru` text,
  `link_id` text,
  `status_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `neighborhoods`
--

CREATE TABLE IF NOT EXISTS `neighborhoods` (
  `id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `title_uz` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `numbers`
--

CREATE TABLE IF NOT EXISTS `numbers` (
  `id` int(11) NOT NULL,
  `title_uz` text NOT NULL,
  `title_eng` text NOT NULL,
  `title_ru` text NOT NULL,
  `number` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `page_types`
--

CREATE TABLE IF NOT EXISTS `page_types` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL,
  `page_type_id` int(11) NOT NULL,
  `title_uz` text NOT NULL,
  `title_eng` text NOT NULL,
  `title_ru` text NOT NULL,
  `descr_uz` text,
  `descr_eng` text,
  `descr_ru` text,
  `status_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `img` text,
  `text_uz` longtext,
  `text_eng` longtext,
  `text_ru` longtext,
  `favorite` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `partners`
--

CREATE TABLE IF NOT EXISTS `partners` (
  `id` int(11) NOT NULL,
  `title_uz` text NOT NULL,
  `title_eng` text NOT NULL,
  `title_ru` text NOT NULL,
  `img` text NOT NULL,
  `status_id` int(11) NOT NULL,
  `descr_uz` text NOT NULL,
  `descr_eng` text NOT NULL,
  `descr_ru` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `socials`
--

CREATE TABLE IF NOT EXISTS `socials` (
  `id` int(11) NOT NULL,
  `socials` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id` bigint(20) unsigned NOT NULL,
  `title_ru` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_uz` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_eng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `tappeals`
--

CREATE TABLE IF NOT EXISTS `tappeals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` text,
  `email` text,
  `title` text,
  `text` text,
  `status_id` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `tblogs`
--

CREATE TABLE IF NOT EXISTS `tblogs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title_uz` text,
  `title_eng` text,
  `title_ru` text,
  `text_uz` text,
  `text_eng` text,
  `text_ru` text,
  `status_id` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `territories`
--

CREATE TABLE IF NOT EXISTS `territories` (
  `id` int(11) NOT NULL,
  `title_uz` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `titles`
--

CREATE TABLE IF NOT EXISTS `titles` (
  `id` int(11) NOT NULL,
  `title_uz` text NOT NULL,
  `title_eng` text NOT NULL,
  `title_ru` text NOT NULL,
  `descr_uz` text NOT NULL,
  `descr_eng` text NOT NULL,
  `descr_ru` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `tportfolios`
--

CREATE TABLE IF NOT EXISTS `tportfolios` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `img` text,
  `title_uz` text,
  `title_eng` text,
  `title_ru` text,
  `status_id` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `user_types`
--

CREATE TABLE IF NOT EXISTS `user_types` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` text COLLATE utf8mb4_unicode_ci,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type_id` int(11) NOT NULL DEFAULT '2',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) NOT NULL,
  `link` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `wactivities`
--

CREATE TABLE IF NOT EXISTS `wactivities` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `st_y` varchar(255) DEFAULT NULL,
  `end_y` varchar(255) DEFAULT NULL,
  `who_uz` text,
  `who_eng` text,
  `who_ru` text,
  `where_uz` text,
  `where_eng` text,
  `where_ru` text,
  `status_id` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ad_types`
--
ALTER TABLE `ad_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `admissions`
--
ALTER TABLE `admissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `appeals`
--
ALTER TABLE `appeals`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `certificateholders`
--
ALTER TABLE `certificateholders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `clubusers`
--
ALTER TABLE `clubusers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `datas`
--
ALTER TABLE `datas`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `department_types`
--
ALTER TABLE `department_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `donators`
--
ALTER TABLE `donators`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `employee_types`
--
ALTER TABLE `employee_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `evaluation_ranks`
--
ALTER TABLE `evaluation_ranks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `h_sections`
--
ALTER TABLE `h_sections`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `links`
--
ALTER TABLE `links`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu_types`
--
ALTER TABLE `menu_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `neighborhoods`
--
ALTER TABLE `neighborhoods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `numbers`
--
ALTER TABLE `numbers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `page_types`
--
ALTER TABLE `page_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Индексы таблицы `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tappeals`
--
ALTER TABLE `tappeals`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tblogs`
--
ALTER TABLE `tblogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `territories`
--
ALTER TABLE `territories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `titles`
--
ALTER TABLE `titles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tportfolios`
--
ALTER TABLE `tportfolios`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `wactivities`
--
ALTER TABLE `wactivities`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ad_types`
--
ALTER TABLE `ad_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `admissions`
--
ALTER TABLE `admissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `ads`
--
ALTER TABLE `ads`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `appeals`
--
ALTER TABLE `appeals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `certificateholders`
--
ALTER TABLE `certificateholders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `clubusers`
--
ALTER TABLE `clubusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `datas`
--
ALTER TABLE `datas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `department_types`
--
ALTER TABLE `department_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `donators`
--
ALTER TABLE `donators`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `employee_types`
--
ALTER TABLE `employee_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `evaluation_ranks`
--
ALTER TABLE `evaluation_ranks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `h_sections`
--
ALTER TABLE `h_sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `links`
--
ALTER TABLE `links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `neighborhoods`
--
ALTER TABLE `neighborhoods`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `numbers`
--
ALTER TABLE `numbers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `page_types`
--
ALTER TABLE `page_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `socials`
--
ALTER TABLE `socials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tappeals`
--
ALTER TABLE `tappeals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tblogs`
--
ALTER TABLE `tblogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `territories`
--
ALTER TABLE `territories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `titles`
--
ALTER TABLE `titles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `tportfolios`
--
ALTER TABLE `tportfolios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `user_types`
--
ALTER TABLE `user_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `wactivities`
--
ALTER TABLE `wactivities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Ноя 15 2018 г., 19:22
-- Версия сервера: 5.6.41
-- Версия PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `igroteka`
--

-- --------------------------------------------------------

--
-- Структура таблицы `games`
--

CREATE TABLE `games` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `genre` text NOT NULL,
  `releaseyear` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `games`
--

INSERT INTO `games` (`id`, `title`, `genre`, `releaseyear`) VALUES
(1, 'Resident Evil 	', 'survival horror', 1996),
(2, 'Operation Europe - Path to Victory ', 'strategy', 1993),
(3, 'Vanguard Bandits ', 'JRPG', 1998),
(4, 'Medal of Honor: Underground', 'шутер от первого лица', 2000),
(5, 'Pro Evolution Soccer 2', 'Sport ', 2002),
(6, 'Dead Space ', 'Action , Horror', 2008);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `games`
--
ALTER TABLE `games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

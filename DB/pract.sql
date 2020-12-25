-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 24 2020 г., 15:19
-- Версия сервера: 10.3.13-MariaDB
-- Версия PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `pract`
--

-- --------------------------------------------------------

--
-- Структура таблицы `adress`
--

CREATE TABLE `adress` (
  `id` int(11) NOT NULL,
  `id_sity` int(11) NOT NULL,
  `id_countr` int(11) NOT NULL,
  `id_obl` int(11) NOT NULL,
  `id_ray` int(11) NOT NULL,
  `id_street` int(11) NOT NULL,
  `id_house` int(11) NOT NULL,
  `id_kv` int(11) NOT NULL,
  `id_block` int(11) NOT NULL,
  `id_korp` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `id_temi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_staty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `block`
--

CREATE TABLE `block` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `com`
--

CREATE TABLE `com` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_temi` int(11) NOT NULL,
  `text` text NOT NULL,
  `date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `countr`
--

CREATE TABLE `countr` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `house`
--

CREATE TABLE `house` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `korp`
--

CREATE TABLE `korp` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `kv`
--

CREATE TABLE `kv` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `obl`
--

CREATE TABLE `obl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `previl`
--

CREATE TABLE `previl` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_previl` int(11) NOT NULL,
  `id_adress` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `ray`
--

CREATE TABLE `ray` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `sity`
--

CREATE TABLE `sity` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `stati`
--

CREATE TABLE `stati` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `stati`
--

INSERT INTO `stati` (`id`, `name`) VALUES
(1, 'adm');

-- --------------------------------------------------------

--
-- Структура таблицы `staty`
--

CREATE TABLE `staty` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `street`
--

CREATE TABLE `street` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `temi`
--

CREATE TABLE `temi` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `id_sozd` int(11) NOT NULL,
  `id_stati` int(11) NOT NULL,
  `text` text NOT NULL,
  `data` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `temi`
--

INSERT INTO `temi` (`id`, `name`, `id_sozd`, `id_stati`, `text`, `data`) VALUES
(1, 'Kryt', 1, 1, 'Hello world', '2020-12-24 00:00:00.000000');

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'Hi', '123321');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `adress`
--
ALTER TABLE `adress`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sity` (`id_sity`,`id_countr`,`id_obl`,`id_ray`,`id_street`,`id_house`,`id_kv`,`id_block`,`id_korp`),
  ADD KEY `id_countr` (`id_countr`),
  ADD KEY `id_block` (`id_block`),
  ADD KEY `id_obl` (`id_obl`),
  ADD KEY `id_kv` (`id_kv`),
  ADD KEY `id_house` (`id_house`),
  ADD KEY `id_ray` (`id_ray`),
  ADD KEY `id_korp` (`id_korp`),
  ADD KEY `id_street` (`id_street`);

--
-- Индексы таблицы `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_temi` (`id_temi`,`id_user`,`id_staty`),
  ADD KEY `id_staty` (`id_staty`),
  ADD KEY `id_user` (`id_user`);

--
-- Индексы таблицы `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `com`
--
ALTER TABLE `com`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`,`id_temi`),
  ADD KEY `id_temi` (`id_temi`);

--
-- Индексы таблицы `countr`
--
ALTER TABLE `countr`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `house`
--
ALTER TABLE `house`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `korp`
--
ALTER TABLE `korp`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `kv`
--
ALTER TABLE `kv`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `obl`
--
ALTER TABLE `obl`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `previl`
--
ALTER TABLE `previl`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`,`id_previl`,`id_adress`),
  ADD KEY `id_previl` (`id_previl`),
  ADD KEY `id_adress` (`id_adress`);

--
-- Индексы таблицы `ray`
--
ALTER TABLE `ray`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sity`
--
ALTER TABLE `sity`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `stati`
--
ALTER TABLE `stati`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `staty`
--
ALTER TABLE `staty`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `street`
--
ALTER TABLE `street`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `temi`
--
ALTER TABLE `temi`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_sozd` (`id_sozd`,`id_stati`),
  ADD KEY `id_stati` (`id_stati`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `adress`
--
ALTER TABLE `adress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `bans`
--
ALTER TABLE `bans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `block`
--
ALTER TABLE `block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `com`
--
ALTER TABLE `com`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `countr`
--
ALTER TABLE `countr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `house`
--
ALTER TABLE `house`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `korp`
--
ALTER TABLE `korp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `kv`
--
ALTER TABLE `kv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `obl`
--
ALTER TABLE `obl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `previl`
--
ALTER TABLE `previl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `ray`
--
ALTER TABLE `ray`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `sity`
--
ALTER TABLE `sity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `stati`
--
ALTER TABLE `stati`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `staty`
--
ALTER TABLE `staty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `street`
--
ALTER TABLE `street`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `temi`
--
ALTER TABLE `temi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `adress`
--
ALTER TABLE `adress`
  ADD CONSTRAINT `adress_ibfk_1` FOREIGN KEY (`id_countr`) REFERENCES `countr` (`id`),
  ADD CONSTRAINT `adress_ibfk_2` FOREIGN KEY (`id_block`) REFERENCES `block` (`id`),
  ADD CONSTRAINT `adress_ibfk_3` FOREIGN KEY (`id_obl`) REFERENCES `obl` (`id`),
  ADD CONSTRAINT `adress_ibfk_4` FOREIGN KEY (`id_kv`) REFERENCES `kv` (`id`),
  ADD CONSTRAINT `adress_ibfk_5` FOREIGN KEY (`id_house`) REFERENCES `house` (`id`),
  ADD CONSTRAINT `adress_ibfk_6` FOREIGN KEY (`id_sity`) REFERENCES `sity` (`id`),
  ADD CONSTRAINT `adress_ibfk_7` FOREIGN KEY (`id_ray`) REFERENCES `ray` (`id`),
  ADD CONSTRAINT `adress_ibfk_8` FOREIGN KEY (`id_korp`) REFERENCES `korp` (`id`),
  ADD CONSTRAINT `adress_ibfk_9` FOREIGN KEY (`id_street`) REFERENCES `street` (`id`);

--
-- Ограничения внешнего ключа таблицы `bans`
--
ALTER TABLE `bans`
  ADD CONSTRAINT `bans_ibfk_1` FOREIGN KEY (`id_staty`) REFERENCES `staty` (`id`),
  ADD CONSTRAINT `bans_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `bans_ibfk_3` FOREIGN KEY (`id_temi`) REFERENCES `temi` (`id`);

--
-- Ограничения внешнего ключа таблицы `com`
--
ALTER TABLE `com`
  ADD CONSTRAINT `com_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `com_ibfk_2` FOREIGN KEY (`id_temi`) REFERENCES `temi` (`id`);

--
-- Ограничения внешнего ключа таблицы `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `profile_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `profile_ibfk_2` FOREIGN KEY (`id_previl`) REFERENCES `previl` (`id`),
  ADD CONSTRAINT `profile_ibfk_3` FOREIGN KEY (`id_adress`) REFERENCES `adress` (`id`);

--
-- Ограничения внешнего ключа таблицы `temi`
--
ALTER TABLE `temi`
  ADD CONSTRAINT `temi_ibfk_1` FOREIGN KEY (`id_sozd`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `temi_ibfk_2` FOREIGN KEY (`id_stati`) REFERENCES `stati` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

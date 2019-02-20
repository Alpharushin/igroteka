-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Фев 20 2019 г., 20:03
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
  `releaseyear` int(11) NOT NULL,
  `description` text NOT NULL,
  `photo` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `games`
--

INSERT INTO `games` (`id`, `title`, `genre`, `releaseyear`, `description`, `photo`) VALUES
(1, 'Resident Evil 	', 'survival horror', 1996, '24 июля 1998 года. В окрестностях небольшого города Раккун-Сити недавно начали происходить чудовищные убийства. В полицейских рапортах указывалось, что нападения совершались группами примерно из 10 человек, а жертвы были как будто съедены. Полиции не удалось найти убийц, и тогда к делу привлекли специальный отряд «S.T.A.R.S.» (англ. Special Tactics And Rescue Squad — Специальный Тактический Спасательный Отряд), разбитый на команды «Альфа» и «Браво».\r\n\r\nСначала на расследование отправляется команда «Браво», с которой вскоре теряется связь. После этого на их поиски посылают команду «Альфа». Во время облёта местности, где с командой «Браво» была потеряна связь, бойцы команды «Альфа» замечают столб дыма, исходящий с земли, и принимают решение высадиться. После высадки члены отряда осторожно осматривают территорию. Выясняется, что дым шёл от вертолёта команды «Браво», однако найти самих членов команды им не удаётся, что также странно, в вертолёте лежит их нетронутое снаряжение…\r\n\r\nКоманда «Альфа» начинает прочёсывать местность. Всё идёт нормально, но вдруг член команды Джозеф Фрост находит в траве пистолет. Подняв его, он вскрикивает, заметив, что рукоятку до сих пор сжимает чья-то оторванная рука. Внезапно на него набрасываются ужасающего вида собаки. Джозеф оказывается застигнутым врасплох, другие члены команды тоже не успевают среагировать. Он пытается отбиться от собак, но силы неравны, и он погибает ужасной смертью прямо на глазах у товарищей.\r\n\r\nОстальным бойцам удаётся уничтожить тварей. В это время пилот команды «Альфа» Брэд Викерс, услышав выстрелы, теряет самообладание и улетает, бросив команду. Видя улетающий вертолёт, бойцы теряются, однако вскоре неподалёку раздаётся рычание собак. Решив, что Джозефу уже не помочь, они спасаются бегством, на бегу отстреливаясь от тварей. Вскоре они замечают какой-то особняк и направляются туда. Дверь оказывается не запертой… ', '-647740487.png'),
(2, 'Operation Europe ', 'strategy', 1993, 'Операция Европа: Путь к победе, 1939-1945 - это историческая военная игра использующая сценарии европейских и североафриканских битв второй мировой войны. Игра позволяет одному или двум игрокам выступать в качестве командующих войск держав Оси или Союзников. Игра уделяет основное внимание военным действиям, а дипломатию оставляет на долю политиканов.\r\nШесть сценариев охватывают все шесть лет войны. Каждый из них представляет какую-то большую операцию, проводившуюся в ходе войны. Подробное рассмотрение шести великих сражений - Вторжения во Францию, Битвы в Северной Африке, Великое танковое сражение под Курском, Высадка в Нормандии, Битва за Котел, а также Битва за Берлин включает в себя весьма достоверное моделирование оперативно-тактической обстановки основанное на замечательных источниках. Сотни исторических персонажей, соблюдение исторической правды, внимание к столь мелким деталям, как вооружение отдельных полков, все это добавляет очень приятный реализм в эту интенсивную тактико-стратегическую игру. ', '1165821856.png'),
(3, 'Vanguard Bandits ', 'JRPG', 1998, 'Vanguard Bandits — тактическая ролевая игра, действие которой разворачивается на изометрической карте, разделённой на равные квадраты. Игрок управляет отрядом из нескольких человек, сражаясь против группы вражеских АТАКов — подобная система напоминает Final Fantasy Tactics и игры серии Front Mission. Битва происходит в пошаговом режиме; каждый персонаж в свой ход может перемещаться, атаковать противника или использовать поддерживающие способности. Любое действие затрачивает определённое количество очков действия (англ. AP, Action Points), кроме того, использование атак увеличивает количество очков усталости (англ. FP, Faint Points). Если величина FP достигает 100, то на персонаж временно не может выполнять никаких действий и получает больше урона от противников. Когда герой атакует или защищается, он и его оппонент переносятся на отдельное трёхмерное «поле битвы», где каждый выполняет выбранное действие. Тем не менее, анимацию битвы можно отключить — в этом случае игрок увидит лишь итог сражения (количество потерянных очков здоровья). После завершения сражения, которое называется миссией, обычно происходит диалог между персонажами и дальнейшее развитие сюжетной линии. Перед началом следующей миссии игрок может проверить статус своего отряда, поговорить с несколькими персонажами, поменять экипировку АТАКов или посетить магазин (в определённые отрезки игры). ', '1205137548.png'),
(4, 'Medal of Honor: Underground', 'шутер от первого лица', 2000, 'Главная героиня игры — молодая девушка по имени Манон Батист. Её персонаж основан на Элен Дешам Адамс (англ.)русск.) состоявшей в Французском Движении Сопротивления. В оригинальной «Medal of Honor» Манон Батист была координатором Джимми Паттерсона, который получал от неё задания. Игра начинается в 1940 году после того, как немецкие войска вошли во Францию, сдавшуюся без боя. Изначально Манон Батист не присоединяется к Движению Сопротивления в течение первых лет войны, но на протяжении игры становится заметен её подъём от наивного добровольца до закаленного ветерана, который в конечном счете принят на работу американцами в Управление стратегических служб, как и Джимми Паттерсон. Именно там она сыграет ключевую роль в освобождении Парижа. ', '-338789115.jpg'),
(5, 'Pro Evolution Soccer 2', 'Sport ', 2002, 'Pro Evolution Soccer 2 или Winning Eleven 6 является второй игрой Konami из серии Pro Evolution Soccer. Это последняя игра в серии, вышедшая на PlayStation. ', '-536257075.jpg'),
(6, 'Dead Space ', 'Action , Horror', 2008, 'В Dead Space под управлением игрока находится инженер Айзек Кларк, пытающийся выбраться с гигантского космического корабля «Ишимура». Ему противостоят некроморфы — погибшие члены экипажа «Ишимуры», воскресшие и превратившиеся в чудовищ под действием инопланетного сигнала. Игра выполнена в эстетике кинофильмов «Чужой», «Нечто» и «Сквозь горизонт», используя как внезапные нападения врагов, так и пугающие картины насилия и телесных трансформаций, чтобы внушить игроку чувство страха и тревоги.\r\n\r\nИгра была высоко оценена критиками индустрии, а на всех платформах в сумме было продано более 4 миллионов копий игры. В дальнейшем выпускались игры-продолжения, рассказывающие дальнейшую историю Айзека Кларка — Dead Space 2 (2011) и Dead Space 3 (2013), а также игры-ответвления, комиксы и анимационные фильмы. ', '1012176365.jpg'),
(8, 'Half-Life', 'Экшн , Фантастика', 1999, 'История игры рассказывается без помощи видеовставок, разрывов во времени и подобных им приёмов. Развитие сюжета происходит при помощи скриптовых сцен, функционирующих непосредственно внутри игрового действия. Игровой процесс и подача сюжета при таком подходе образуют единое целое. Игра не разделена на уровни или миссии; деление игрового мира на карты вызвано техническими ограничениями. За всеми событиями игрок наблюдает глазами главного героя — Гордона Фримена. Выслушивая очередной монолог или же наблюдая за важным сюжетным событием, игрок не утрачивает контроль над главным героем, за исключением нескольких скриптовых сцен. В то же время самого персонажа нельзя увидеть со стороны или услышать его голос. Все эти приёмы способствуют погружению игрока в игровую реальность, создавая эффект присутствия', '-301252413.jpg'),
(11, 'General Chaos', 'тактика в реальном времени', 1994, 'Игрок может выбрать одну из четырёх команд солдат. Три из них состоят из пяти солдат различной специализации, одна — из двух коммандос. Действие игры происходит на одном экране и заключается в сражении между двумя командами с использованием огнестрельного оружия, гранат и рукопашного боя. Управление осуществляется с помощью курсора. В основном режиме прохождения нужно выбирать места проведения боя на карте, постепенно продвигаясь к базе врага (красная). Если же в бою выигрывает враг, то продвигается в сторону синей базы.\r\n\r\nИгра имеет несколько режимов многопользовательской игры и поддерживает специальный адаптер, позволяющий подключать к игровой консоли четыре геймпада. Возможна игра двух игроков друг против друга или до четырёх игроков на одной стороне против компьютера. Также есть режим обучения. В игре присутствуют следующие разновидности солдатов: гранатомётчик, огнемётчик, автоматчик, минокидатель, гранатометатель.\r\n\r\nИгра выполнена в юмористическом, карикатурном стиле. ', '207776104.jpg'),
(12, 'Sonic', 'Action', 1991, 'Sonic the Hedgehog выполнена в двухмерной графике. По сюжету главный герой игры, ёж по имени Соник впервые встречается со злодеем доктором Роботником, который стремится захватить власть над всем миром. Учёный использует разных зверей для создания своих роботов, называемых бадниками (англ. Badnik), и пытается заполучить шесть мистических драгоценных камней, Изумрудов Хаоса, чтобы ещё больше усилить своё могущество. Соник стремится освободить своих друзей, уничтожить машины Роботника, получить камни первым и нарушить планы злодея[14].\r\n\r\nИгроку предстоит пройти шесть разнообразных игровых зон («Green Hill», «Marble», «Spring Yard», «Labyrinth», «Star Light» и «Scrap Brain»), каждая из которых поделена на три акта и заполнена определёнными врагами-роботами[15]. Если на пути не встречаются препятствия, Соник быстро набирает скорость. При достаточно быстром беге ёжик без проблем преодолевает мёртвые петли, а при сворачивании в колючий клубок он ещё быстрее скатывается со склонов и может пробить стены в труднодоступных местах, но медленно поднимается в гору. Также Соник сворачивается в шар во время прыжка для атаки врагов-роботов. За каждого убитого врага игроку начисляются очки. Значительно ограничивает скорость движения главного героя вода. Если игрок проходит уровень под водой, то у него ограничен запас воздуха: если долго не выпрыгивать на поверхность или не касаться пузырей с воздухом, персонаж утонет[16]. Прохождение каждого акта ограничено десятью минутами; в зависимости от затраченного на прохождение времени в конце акта игроку присуждаются бонусные очки[17]. В случае смерти Соника прохождение игры начинается заново, либо с контрольной точки. Дойдя до конца первых двух актов зоны, игрок должен отметить их завершение, коснувшись таблички с изображением доктора Роботника; в конце третьего акта игрока ждёт сражение с боссом — самим Роботником, управляющим разнообразными боевыми машинами[18]. ', '312440053.jpg');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

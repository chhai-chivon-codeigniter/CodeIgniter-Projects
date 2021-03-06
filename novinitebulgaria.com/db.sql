-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 14, 2017 at 11:38 AM
-- Server version: 5.7.17-0ubuntu0.16.04.1
-- PHP Version: 5.6.30-1+deb.sury.org~xenial+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `novini`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `article_id` int(10) UNSIGNED NOT NULL,
  `folder` int(10) UNSIGNED DEFAULT NULL COMMENT 'folder with images',
  `image` varchar(255) DEFAULT NULL,
  `image_link` varchar(255) DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL COMMENT 'time created',
  `time_update` int(10) UNSIGNED NOT NULL COMMENT 'time updated',
  `visibility` tinyint(1) NOT NULL DEFAULT '1',
  `category` varchar(20) NOT NULL,
  `in_slider` tinyint(1) NOT NULL DEFAULT '0',
  `url` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `from_public` tinyint(1) NOT NULL DEFAULT '0',
  `ageRestrict` tinyint(1) NOT NULL DEFAULT '0',
  `topNews` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `sub_for` int(11) NOT NULL,
  `nav` tinyint(1) NOT NULL DEFAULT '0',
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `sub_for`, `nav`, `views`) VALUES
(7, 'българия', 0, 1, 19),
(8, 'dasd', 0, 1, 7),
(10, 'dqwqwdqw', 0, 1, 7),
(11, '3', 0, 1, 5),
(12, 'dqwdqw2', 0, 1, 7),
(13, 'dqwdqw', 12, 0, 0),
(15, 'хот', 0, 0, 2),
(16, 'дадас', 0, 0, 3),
(18, 'интомно', 15, 0, 4),
(19, 'Интимно', 0, 0, 4),
(20, 'скандали', 0, 0, 1),
(21, 'нова-телевизия', 0, 0, 2),
(22, 'Земетресения', 0, 0, 4),
(23, 'Лайвстайл', 0, 0, 5),
(24, 'слухове', 0, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `activity` varchar(255) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `time` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(10) UNSIGNED NOT NULL,
  `abbr` varchar(5) NOT NULL,
  `name` varchar(30) NOT NULL,
  `currency` varchar(10) CHARACTER SET utf8 NOT NULL,
  `flag` varchar(255) CHARACTER SET utf8 NOT NULL,
  `currencyKey` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `abbr`, `name`, `currency`, `flag`, `currencyKey`) VALUES
(1, 'bg', 'bulgarian', 'лв', 'bg.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `stupids`
--

CREATE TABLE `stupids` (
  `id` int(11) NOT NULL,
  `num` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` longtext CHARACTER SET utf8 NOT NULL,
  `basic_description` text CHARACTER SET utf8 NOT NULL,
  `price` varchar(20) CHARACTER SET utf8 NOT NULL,
  `old_price` varchar(20) CHARACTER SET utf8 NOT NULL,
  `abbr` varchar(5) CHARACTER SET utf8 NOT NULL,
  `for_id` int(11) NOT NULL COMMENT ' ',
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `title`, `description`, `basic_description`, `price`, `old_price`, `abbr`, `for_id`, `type`, `name`) VALUES
(1, 'Реформаторският блок потвърди желанието си да управлява с ГЕРБ', 'Призиви за връщане на ДСБ в Реформаторския блок и за обединение на десницата, анализ на участието на министрите от блока в изпълнителната власт, избор на нови ръководни органи на съюза - това бяха основните акценти на приключилия в събота първи конгрес на РБ. Другата цел на събирането беше да се демонстрира единството на партиите от блока преди предсрочните парламентарни избори на 26 март.В залата в столичния "Интер Експо Център" се събраха около 2000 представители на СДС, ДБГ, БЗНС...', '', '', '', 'bg', 1, 'article', ''),
(2, 'Бюджетът на София за 2017 г. - запазване на данъците и намаляване на инвестициите', 'Бюджетът на София за тази година остава почти без промяна в сравнение с предходната. Общината ще преразпредели 1.328 млрд. лв., или с 63 млн. лв. повече от 2016 г. Свиват се разходите за изграждане и ремонти на улици, а приходите на столицата остават сходни с тези от миналата година. В четвъртък Столичният общински съвет прие бюджета с 46 гласа "за", 10 "против" и 2 "въздържал се" от общо 58 гласували. По време на обсъждането общинските съветници Милка Христова (БСП) и Иво Божков (Реформаторски...', '', '', '', 'bg', 2, 'article', ''),
(3, 'Румен Радев отива в Брюксел на първата си официална визита в чужбина', 'В понеделник и вторник (30 и 31 януари) новият държавен глава Румен Радев ще направи първото си работно посещение. Както обеща още преди встъпването си в длъжност, то ще бъде в Брюксел. Там Радев ще има срещи на най-високо ниво с представители на НАТО, Съвета на ЕС, Европейския парламент и Европейската комисия.В понеделник, 30 януари, президентът ще проведе срещи с председателя на Европейския съвет Доналд Туск, с председателя на Европейската комисия Жан-Клод Юнкер и с новия...', '', '', '', 'bg', 3, 'article', ''),
(4, 'Търг за пътища по \'Региони в растеж\' за 35 млн. лв. е временно спрян заради жалба', 'Компанията "Мегаинвест холд" обжалва решение на Агенция "Пътна инфраструктура" (АПИ) във връзка с обществена поръчка за строителство на три отсечки в Северна България на обща стойност 35 млн. лв. Компанията обжалва решението на АПИ, с което се поставя нов краен срок за подаване на оферти по поръчката, тъй като търгът беше спрян заради предишни жалби в Комисията за защита на конкуренцията (КЗК). Жалбата на дружеството е с дата 25 януари, ден преди новия краен срок за подаване на оферти по...', '', '', '', 'bg', 4, 'article', ''),
(5, 'Патова ситуация с пет партии в парламента, прогнозира \'Алфа Рисърч\'', '7% е общественото доверие в главния прокурор Сотир Цацаров според изследването. Ако изборите бяха следващата неделя, новият парламент би се оказал в патова ситуация, близка до тази през 2013 г., като в Народното събрание не би имало партия със самостоятелно мнозинство, а възможните коалиции биха били доста трудни, сочи регулярното тримесечно проучване на "Алфа Рисърч", осъществявано съвместно с "Нова телевизия". То е проведено между 14 и 22 януари и показва, че ГЕРБ има около 4%...', '', '', '', 'bg', 5, 'article', ''),
(6, 'Агенция \'Митници\' отчете 6.8% ръст на приходите от акциз през 2016 г.', 'През миналата година Агенция "Митници" е събрала 8.3 млрд. лв., става ясно от годишния доклад на институцията. Сумата е с 3.5% над планираното в Закона за бюджета (ЗДБРБ) за миналата година и с 2.4% повече от отчетеното през 2015 г. Въпреки това приходите от ДДС от внос са по-малко на годишна база, като от агенцията обясняват това с ниските цени на петрола и останалите суровини.Приходите от акцизи нарастват с 6.8% на годишна база и достигат 4.9 млрд. лв. Общият размер на акциза...', '', '', '', 'bg', 6, 'article', ''),
(7, 'Илко Семерджиев: Лекарите и пациентите да бъдат спокойни, че гласът им ще бъде чут', 'Връщане на свободния избор на пациентите на лекар и лечебно заведение, възстановяване на договорното начало между Българския лекарски съюз и Националната здравноосигурителна каса (НЗОК) и на спокойствието сред лекарите и пациентите. Това са трите приоритета на служебния вицепремиер и министър на здравеопазването д-р Илко Семерджиев, които той открои при приемането на поста. Семерджиев отбеляза, че има философски различия за това как трябва да се развива системата на здравеопазването с...', '', '', '', 'bg', 7, 'article', ''),
(8, 'Стани моя аптека', '- Множество сигнали има срещу собственика на най-голямата верига аптеки в България- Бизнесменът и хората му оказвали натиск върху съседните обекти да пазаруват от склада им, за да не отворят аптека с ниски цени, която да съсипе бизнеса им- Специализираната прокуратура не откри престъпление в това и препрати преписката в Комисията за защита на конкуренцията  Страх. Това е обяснението, с което от години фармацевтите се оправдават, че не могат да противодействат на...', '', '', '', 'bg', 8, 'article', ''),
(9, 'Асо, дама, поп, шпионин в играта между Русия и България', 'Какво е РИСИ Руският институт за стратегически изследвания е създаден през 1992 г., но получава по-значима роля през 2009 г., когато президентът Дмитрий Медведев издава декрет, в който променя статута му в научна институция, финансирана от държавния бюджет и на подчинение към президентската администрация.Според уебсайта на организацията нейната основна задача е да осигурява информационна подкрепа на администрацията на президента, на правителството, на Държавната дума, на...', '', '', '', 'bg', 9, 'article', ''),
(10, 'Топ обявите за работа на Karieri.bg', 'Всеки служител притежава свой собствен пакет от умения, лични качества, опит, цели и поведение, който го прави уникален и който задължително се различава от този на всеки друг от колегите му. Тези разлики понякога са толкова сериозни, че влизат в противоречие с вижданията на останалите от екипа и могат да доведат до конфликти. Това не означава, че изходът от тези конфликти задължително трябва да е негативен.Затова е добре да знаете как да се справяте с такива ситуации и да се учите...', '', '', '', 'bg', 10, 'article', ''),
(11, 'Картел на дупки', '- Две големи поръчки - за магистрала "Хемус" и за пакет от пътища, показаха, че няма ясни нови "силни", а Делян Пеевски се насочва предимно към жп сектора- От 2013 г. насам в сектора има негласен картел, който напоследък изглежда разклатен- Вероятно несигурността ще продължи до избора на нова власт"Има малък брой големи фирми, които се занимават със строителство и които биха могли помежду си да постигнат съглашение за разпределение на пазара. Това е...', '', '', '', 'bg', 11, 'article', ''),
(12, 'Първите десет не стигат', 'Тази неделя близо 15 хиляди румънци излязоха в студа на улиците на Букурещ, за да протестират срещу намеренията на новото правителство да реабилитира десетки осъдени за корупция политици. Сред протестиращите беше и румънският президент, основен противник на готвените промени. Сред другите критици на спорното решение на правителството са главният прокурор, Върховният съд, ръководителят на антикорупционната агенция, дипломати и граждански сдружения.Няколко дни след тези събития отвъд...', '', '', '', 'bg', 12, 'article', ''),
(13, 'КЗК временно спря поръчка за ремонти на НДК за 700 хил.лв.', 'Поръчка за текущи и аварийни строително-ремонтни работи в и около сградния фонд на Националния дворец на културата, е временно спряна заради жалба в Комисията за защита на конкуренцията (КЗК).Фирмата "Иберис груп" е подала жалба на 15 декември с искане за временна мярка спиране на процедурата и регулаторът е приел искането на жалбоподателя.Ремонтът по сградата на НДК е част от предвидените дейности, във връзка с провеждането на Българското председателство на Съвета на ЕС...', '', '', '', 'bg', 13, 'article', ''),
(14, 'Служебното правителство обещава приемственост и стабилност', '"Ще следя от близо за нулева толерантност на служебното правителство към случаите на корупция", заяви Радев и подчерта, че заявките за приемственост не се отнасят за порочни практики в министерствата, които трябва да бъдат преустановени от министрите. На две кратки церемонии тази сутрин президентът Румен Радев първо официално представи новия служебен кабинет, оглавяван от проф. Огнян Герджиков, а веднага след това новият премиер пое властта от досегашния министър-председател в оставка Бойко...', '', '', '', 'bg', 14, 'article', ''),
(15, 'Президентът на собствен ход', 'Темата накратко- Съставът на служебното правителство разсея най-големите опасения за Румен Радев- Изборът на министри поне на пръв поглед показва, че новият президент няма да преследва рязка смяна във външнополитическия курс- В съставянето на кабинета все пак има лек реверанс към БСП Когато по време на предизборната кампания сегашният президент Румен Радев заговори за статута на Крим и премахването на санкциите срещу Русия, изявленията му прозвучаха като...', '', '', '', 'bg', 15, 'article', ''),
(16, 'Вен диаграми* в демократичния спектър', 'Темата накратко- Лидерът на ДСБ Радан Кънев обяви създаване на надпартийна платформа за "Нова Република" и покани партията на Христо Иванов "Да, България" за съвместно равнопоставено участие в предсрочните избори- Христо Иванов обяви, че "Да, България" ще се яви самостоятелно на изборите- В този момент шансовете от поотделното им участие във вота са трудно изчислими Два месеца преди предсрочните парламентарни избори в политическото представителство на опозиционно настроената...', '', '', '', 'bg', 16, 'article', ''),
(17, 'Euler Hermes: Строителството е секторът с най-висок риск', 'Ограничаването на инвестициите в инфраструктурни проекти прави строителния сектор най-рисков в страната. Това се посочва в анализ на международната компания за застраховане на търговски кредити Euler Hermes.Една категория по-надолу се нареждат сектор транспорт, текстил, електроника и телекомуникации, производство и търговия с метали.С най-малък и най-голям потенциалНиските маржове и насищането на пазара са определящи за секторите електроника и...', '', '', '', 'bg', 17, 'article', ''),
(18, 'Петър Москов: Половин милиард дългове на болниците трябва да бъдат опростени', 'Държавата да плати натрупаните през годините дългове на 65-те държавни болници, които в момента са 411 млн. лв., а общините да се погрижат за техните клиники. Това ще залегне в предизборната програма на Реформаторския блок, съобщи д-р Петър Москов, министър на здравеопазването в оставка. Задълженията на клиниките към доставчиците са над половин милиард лева, а в момента 150 млн. лв. са просрочени. Субсидията ще послужи, за да отбремени клиниките и те да могат да работят по-добре. Освен това,...', '', '', '', 'bg', 18, 'article', ''),
(19, 'Христо Иванов: В политическата класа цари прокорупционен консенсус', '"Този доклад показва едно десетгодишно циклене и игри на дребно за залъгване на комисията. Особено техническият доклад в това отношение е едно доста мрачно и депресиращо четиво". Така председателят на "ДА България" коментира публикуваният десетгодишен доклад по Механизма за сътрудничество и проверка за България. В сряда той представи коментар на партията относно доклада, както и идеите относно извършването на съдебна реформа."Това, което лъсва, е една картина на траен политически...', '', '', '', 'bg', 19, 'article', ''),
(20, 'Президентът Румен Радев назначи служебното правителство', 'Президентът Румен Радев показа експедитивност. Само за три дни от встъпването си в длъжност той насрочи изборите за 26 март, назначи част от администрацията си и издаде указ за състава на служебното правителство. Премиер ще бъде бившият председател на Народното събрание по време на управлението на НДСВ юристът проф. Огнян Герджиков.В кабинета ще има четирима вицепремиери, като двама от тях ще съвместяват постовете с тези на министри, и още 15 отделни министерства. Генерал Стефан...', '', '', '', 'bg', 20, 'article', ''),
(21, '\'Трансперънси интернешънъл\': България остава първа в ЕС по корупция', '<p>България за поредна година остава най-корумпираната страна в Европейския съюз, а в световната класация отстъпва с 6 позиции и пада до 75-ото място сред общо 176 страни. Това показват новите данни в Индекса за възприятие на корупцията през 2016 г. на &quot;Прозрачност без граници&quot;. Тази година международната неправителствена организация оценява нивото на корупцията в рекорден брой държави &ndash; 176. Завишеният брой страни и напредъкът на други държави е и причината България да падне в класацията, докато...</p>\r\n', '', '', '', 'bg', 21, 'article', ''),
(22, 'Държавната зона в Божурище получи още 115 дка земя', 'Нови 115 дка земя ще бъдат добавени към държавната икономическа зона "София – Божурище". Парцелът заедно с изградените на него 29 сгради ще бъде апортиран в капитала на "Национална компания Индустриални зони" (НКИЗ). Това стана ясно от решение на правителството да отнеме от Министерството на отбраната управлението на имота в местността Матерка край село Гурмазово. Земята ще се използва за предоставяне на терени на инвеститори и за изграждане на инфраструктура към зоната.Забавена...', '', '', '', 'bg', 22, 'article', ''),
(23, 'Бюджетен излишък от 1 млрд. лв. и за януари', 'Януари бюджетът ще е на излишък от 1 млрд. лв., обяви премиерът Бойко Борисов на последното заседание на кабинета. В контекста на това в какво финансово здраве оставят държавата министрите разгледаха и подробна разбивка на бюджета за миналата година. Той е с излишък от 1.47 млрд. лв., или 1.6% от прогнозирания брутен вътрешен продукт (БВП). По план бюджетът трябваше да е на дефицит от 1.8 млрд. лв. за годината, като държавата беше завършвала на минус и предходните седем години....', '', '', '', 'bg', 23, 'article', ''),
(24, 'Правителството разпредели 73 млн. лв. за борба с безработицата на последното си заседание', 'Увеличаване на заплащането по определени програми, отделяне на средства за безработни, които искат да стартират работа в друг град, обезщетение за майки, които се върнат на работа преди края на първата година от майчинството. Такъв е планът за действие по заетостта през 2017 г., приет на последното заседание на министрите от кабинета "Борисов" в сряда. Финансирането му е за 73 млн. лв., като сумата е заложена в бюджета за активни политики на пазара на труда.Очакванията са над 23 хил....', '', '', '', 'bg', 24, 'article', ''),
(25, 'ЕК: Мониторингът ще отпадне, когато България си изпълни ангажиментите', 'Десет години след въвеждането на мониторинга, който Европейската комисия извършва на България и Румъния в областта на съдебната реформа, борбата с корупцията и организираната престъпност, отпадането му все още изглежда далеч за България. Това става ясно от публикувания днес доклад на ЕК, в който се прави десетгодишен обзор на механизма.На брифинг в Брюксел високопоставен представител на комисията обобщи заключенията за двете държави така: България е стигнала най-далеч в...', '', '', '', 'bg', 25, 'article', ''),
(26, '\'Дневник\': Екоинспекцията в Бургас разреши два нови строежа на Иракли', 'СнимкаИнституциите очевидно не успяват да спрат строителните апетити на последните незастроени плажове въпреки многократните уверения, че се прави всичко възможно да се опазятАкцентДвата проекта очевидно са едно цяло и заедно надхвърлят 10 дка - размер, над който екооценката е задължителна, но въпреки това според РИОСВ - Бургас, от нея няма нужда.На Иракли - един от трите диви плажа, на които миналата пролет депутатите забраниха със закон всякаква стопанска...', '', '', '', 'bg', 26, 'article', ''),
(27, 'Парламентът премахна тавана от 35 години за концесиите', 'Най-дългосрочните концесии ще се одобряват от парламентаОграничението от 35 години като максимален срок на концесиите отпада, а освен концесии за строителство и услуги оттук нататък ще има такива и за ползване на държавна и общинска собственост. Променят се и лицата, които могат да откриват процедури по концесии - такива вече ще бъдат министрите и кметовете, а не Министерският съвет и общинските съвети, които обаче ще одобряват основните актове за тях. Самите процедури също ще бъдат няколко -...', '', '', '', 'bg', 27, 'article', ''),
(28, 'Огнян Герджиков ще бъде служебен премиер (обновена)', 'Бившият председател на парламента Огнян Герджиков е приел поканата на президента Румен Радев да оглави служебния кабинет, който се очаква да бъде назначен до края на работната седмица. Държавният глава издаде указ, с който официално го назначи на поста. С друг той разпуска Народното събрание на 27 януари 2017 г. и насрочва избори за 26 март 2017 г.По-рано през деня на "Дондуков" 2 бяха забелязани да влизат политици, които по неофициална информация са сред вероятните бъдещи министри....', '', '', '', 'bg', 28, 'article', ''),
(29, 'България се завърна на дълговия пазар с рекордно ниска доходност', '<p>Държавата се завърна на пазара на вътрешен дълг след осем месеца пауза. Очаквано интересът към аукциона за 10.5-годишни ДЦК беше много висок, а постигната доходност - 1.76%, е на исторически рекордно ниско ниво, което означава, че разходите за бюджета и данъкоплатците по новия дълг ще са по-ниски. Причините за това са отрицателните лихви на ЕЦБ, които създават глад за емитенти като България (предлагащи комбинация от ниска задлъжнялост и положителна доходност) и високата ликвидност във...</p>\r\n', '', '', '', 'bg', 29, 'article', ''),
(30, 'МРРБ и варненска фирма влязоха в спор за непочистени пътища', '<p>Регионалният министър в оставка Лиляна Павлова обяви през миналата седмица, че фирмата, отговорна за почистването на четвъртокласните пътища в четири общини в област Варна, ще бъде санкционирана. Тогава тя обясни, че фирмата, която отговаря за пет общини, е декларирала налична техника, но се е оказало, че има само един роторен снегорин за всички тези общини и &quot;не може да пробие снежна покривка&quot;. Оказа се, че това не е съвсем вярно. Проверка на &quot;Капитал&quot; установи, че проблемът не е...</p>\r\n', '', '', '', 'bg', 30, 'article', ''),
(31, '', '', '', '', '', 'bg', 8, 'categorie', 'Топ Клюки'),
(32, '', '', '', '', '', 'bg', 7, 'categorie', 'България'),
(33, '', '', '', '', '', 'bg', 10, 'categorie', 'Скандални'),
(34, '', '', '', '', '', 'bg', 11, 'categorie', 'Хайлайв'),
(35, '', '', '', '', '', 'bg', 12, 'categorie', 'Спорт'),
(36, '', '', '', '', '', 'bg', 13, 'categorie', 'бокс'),
(37, '', '', '', '', '', 'bg', 14, 'categorie', 'asdasd'),
(38, '', '', '', '', '', 'bg', 15, 'categorie', 'Хот Арена'),
(39, '', '', '', '', '', 'bg', 16, 'categorie', 'Спортове'),
(40, '', '', '', '', '', 'bg', 18, 'categorie', 'Интимно'),
(51, '', '', '', '', '', 'bg', 19, 'categorie', 'Интимно'),
(52, '', '', '', '', '', 'bg', 20, 'categorie', 'Скандали'),
(53, '', '', '', '', '', 'bg', 21, 'categorie', 'НоваТВ'),
(54, '', '', '', '', '', 'bg', 22, 'categorie', 'Земетресения'),
(55, '', '', '', '', '', 'bg', 23, 'categorie', 'Лайвстайл'),
(56, '', '', '', '', '', 'bg', 24, 'categorie', 'слухове');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(100) NOT NULL,
  `notify` tinyint(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `notify`, `last_login`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin@admin.admin', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `value_store`
--

CREATE TABLE `value_store` (
  `id` int(11) NOT NULL,
  `my_key` varchar(50) NOT NULL,
  `value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `value_store`
--

INSERT INTO `value_store` (`id`, `my_key`, `value`) VALUES
(1, 'last', 'Последни'),
(2, 'mostRead', 'Най-четени'),
(3, 'addedOn', 'Добавена на'),
(5, 'lastGossips', 'Топ Клюки'),
(6, 'highLife', 'Хайлайв'),
(7, 'seeMore', 'Виж останалите'),
(8, 'home', 'Начало'),
(9, 'views', 'Прегледа'),
(10, 'noItems', 'Няма намерени статии'),
(11, 'headerFirstText', 'ТОП Таблоид! Всички клюки, слухове и новини тръгват от тук!'),
(12, 'headerSecondText', 'Клюки, инриги, хайлайв, българия'),
(13, 'aboutUs', 'brbrbrbr'),
(14, 'category', 'Kатегория'),
(16, 'addYourArticle', 'Добави твоя статия'),
(17, 'close', 'Отказ'),
(18, 'addTheArticle', 'Добави'),
(23, 'addArticle', 'Добави твоя новина!'),
(24, 'thetitle', 'Заглавие'),
(25, 'thedescription', 'Текст на новината'),
(26, 'coverImage', 'Снимка'),
(28, 'publicPublishInfo', 'Новините които добавяте след като бъдат прегледани се публикуват в раздел "Читателски новини".'),
(29, 'fbshare', 'Споделяне'),
(30, 'mostReadCategories', 'Най-гледани категорий'),
(32, 'othersFromThisCategory', 'Други от тази категория'),
(33, 'userPublics', 'Читателски новини'),
(34, 'homeBottomText', 'Таблоид - номер 1!! Тук можете да откриете всички клюки в българия и българския хайлайв.'),
(35, 'yes', 'Да'),
(36, 'no', 'Не'),
(37, 'confirmAgeRestrict', 'Потвърждавам, че имам 18 години!'),
(38, 'headerTextTop', 'ТОП НОВИНА'),
(39, 'free', 'Безплатно'),
(40, 'resultsFor', 'Резултати за - ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nameU` (`name`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stupids`
--
ALTER TABLE `stupids`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `art_id_abbr` (`abbr`,`for_id`,`type`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `value_store`
--
ALTER TABLE `value_store`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `stupids`
--
ALTER TABLE `stupids`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `value_store`
--
ALTER TABLE `value_store`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

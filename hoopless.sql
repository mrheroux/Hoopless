-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 21, 2017 at 10:31 PM
-- Server version: 5.7.18-0ubuntu0.16.04.1
-- PHP Version: 7.0.18-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hoopless`
--

-- --------------------------------------------------------

--
-- Table structure for table `abilities`
--

CREATE TABLE `abilities` (
  `id` int(11) NOT NULL,
  `category` enum('Web skills','Web tools','Art skills','Art tools','Robotic skills','Robotic tools','Game skills','Game tools','Software skills','Software tools','Languages') NOT NULL,
  `name` varchar(255) NOT NULL,
  `score` tinyint(4) NOT NULL,
  `started` date DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `abilities`
--

INSERT INTO `abilities` (`id`, `category`, `name`, `score`, `started`, `timestamp`) VALUES
(1, 'Web skills', 'CSS3', 5, NULL, '2016-07-25 05:08:40'),
(2, 'Web skills', 'HTML5', 5, NULL, '2016-07-25 05:08:40'),
(3, 'Web skills', 'MySQL', 5, NULL, '2016-07-25 05:08:40'),
(4, 'Web skills', 'PHP', 5, NULL, '2016-07-25 05:08:40'),
(5, 'Web skills', 'Javascript', 5, NULL, '2016-07-25 05:08:40'),
(6, 'Web skills', 'JQuery', 4, NULL, '2016-07-25 05:08:40'),
(7, 'Web skills', 'XML', 4, NULL, '2016-07-25 05:08:40'),
(8, 'Web skills', 'JSON', 4, NULL, '2016-07-25 05:08:40'),
(9, 'Web skills', 'Bootstrap Framework', 4, NULL, '2016-07-25 05:08:40'),
(10, 'Web skills', 'Java', 3, NULL, '2016-07-25 05:08:40'),
(11, 'Game skills', 'DarkBasic', 3, NULL, '2016-07-25 05:08:40'),
(12, 'Game skills', 'Lua', 5, NULL, '2016-07-25 05:08:40'),
(13, 'Web skills', 'Wordpress', 4, NULL, '2016-07-25 05:08:40'),
(14, 'Software skills', 'Object-oriented programming', 5, NULL, '2016-07-25 05:08:40'),
(15, 'Web skills', 'AngularJS', 2, NULL, '2016-07-25 05:08:40'),
(48, 'Game skills', 'Three.js', 3, NULL, '2016-07-29 19:54:55'),
(17, 'Robotic skills', 'Fanuc Karel', 5, NULL, '2016-07-25 05:08:40'),
(18, 'Software skills', 'C++', 3, NULL, '2016-07-25 05:08:40'),
(19, 'Art tools', 'ZBrush', 4, NULL, '2016-07-25 05:49:44'),
(20, 'Art tools', 'Adobe Illustrator', 4, NULL, '2016-07-25 05:08:40'),
(21, 'Art tools', 'Adobe Photoshop', 4, NULL, '2016-07-25 05:08:40'),
(38, 'Web tools', 'Git / Git Flow', 4, '2012-01-03', '2016-07-25 05:08:40'),
(23, 'Web skills', 'Coldfusion', 2, NULL, '2016-07-25 05:08:40'),
(24, 'Software skills', 'Visual Basic .NET (VB.NET)', 4, NULL, '2016-07-31 15:59:15'),
(25, 'Software skills', 'Borland C++', 3, NULL, '2016-07-25 05:08:40'),
(26, 'Web skills', 'SEO', 4, NULL, '2016-07-25 05:08:40'),
(27, 'Web skills', 'Command line', 3, NULL, '2016-07-25 05:08:40'),
(28, 'Software skills', 'Microsoft Visual C - C#', 3, NULL, '2016-07-25 05:08:40'),
(29, 'Art tools', 'Sketchup', 4, NULL, '2016-07-25 07:00:00'),
(30, 'Web tools', 'Notepad++', 5, NULL, '2016-07-25 05:10:13'),
(31, 'Languages', 'English (native)', 5, NULL, '2016-07-25 00:11:41'),
(32, 'Languages', 'Russian (survivable)', 2, '2011-06-04', '2016-07-25 01:44:25'),
(33, 'Web skills', 'Ruby', 1, NULL, '2016-07-25 05:10:13'),
(34, 'Web skills', 'Python', 2, NULL, '2016-07-25 05:10:13'),
(35, 'Web tools', 'Internet Explorer', 5, NULL, '2016-07-25 05:10:13'),
(36, 'Web tools', 'Windows', 5, '1992-10-01', '2016-07-25 05:10:21'),
(37, 'Web tools', 'Mac', 3, '1993-08-01', '2016-07-25 05:10:13'),
(39, 'Web tools', 'Linux', 4, '2003-08-01', '2016-07-25 05:11:00'),
(41, 'Web skills', 'Apache', 4, NULL, '2016-07-25 06:49:49'),
(42, 'Web skills', 'Actionscript', 3, NULL, '2016-07-25 06:49:23'),
(44, 'Art tools', 'Wacom Tablet Intuos 4', 5, NULL, '2016-07-25 05:50:22'),
(45, 'Web tools', 'CPanel', 4, NULL, '2016-07-25 16:27:28'),
(46, 'Web tools', 'Mozilla Firefox', 5, NULL, '2016-07-25 16:27:28'),
(47, 'Web tools', 'Google Chrome', 5, NULL, '2016-07-25 16:37:11'),
(49, 'Game skills', 'Ruby', 1, NULL, '2016-07-29 19:55:46'),
(50, 'Game skills', 'Javascript', 5, NULL, '2016-07-29 19:55:13'),
(51, 'Game skills', 'Visual Basic 6.0', 4, NULL, '2016-07-29 19:56:05'),
(52, 'Game skills', 'Visual Basic .NET (VB.NET)', 4, NULL, '2016-07-31 15:59:15'),
(53, 'Game skills', 'C Programming', 3, NULL, '2016-07-29 19:56:38'),
(54, 'Game skills', 'C++', 3, NULL, '2016-07-29 19:56:46'),
(55, 'Game skills', 'Actionscript', 3, NULL, '2016-07-29 19:56:57'),
(56, 'Robotic tools', 'Visual Basic .NET (VB.NET)', 4, NULL, '2016-08-02 13:28:33'),
(57, 'Web skills', 'Bash (Unix shell)', 4, NULL, '2016-07-31 18:53:14'),
(58, 'Art tools', 'CAD (DraftSight)', 3, NULL, '2016-08-02 12:48:36'),
(59, 'Art tools', 'Kerkythea (Render)', 3, NULL, '2016-08-02 12:48:36'),
(60, 'Art skills', 'Perspective', 4, NULL, '2016-08-02 12:50:13'),
(61, 'Art skills', 'Human Anatomy', 4, NULL, '2016-08-02 12:50:13'),
(62, 'Art skills', 'Creativity', 4, NULL, '2016-08-02 12:51:28'),
(63, 'Art tools', 'Pen and Ink', 3, NULL, '2016-08-02 12:53:27'),
(64, 'Art tools', 'Acrylics', 4, NULL, '2016-08-02 12:53:27'),
(65, 'Art tools', 'Watercolor', 3, NULL, '2016-08-02 12:54:07'),
(66, 'Web tools', 'Oil Painting', 3, NULL, '2016-08-02 12:54:07'),
(67, 'Robotic skills', 'Understanding of 6-Axis Industrial Robots', 4, NULL, '2016-08-02 13:27:02'),
(68, 'Art tools', 'FANUC Controller Software', 3, NULL, '2016-08-02 13:28:33'),
(69, 'Robotic tools', 'Fanuc Controller / Teach Pendant', 5, NULL, '2016-08-02 13:35:53'),
(70, 'Robotic skills', 'Icon Design', 4, NULL, '2016-08-02 13:38:14'),
(71, 'Robotic skills', 'PR (Position Register) on FANUC TPP', 5, NULL, '2016-08-02 13:39:06'),
(72, 'Robotic skills', 'Documentation (Web Based)', 4, NULL, '2016-08-02 13:39:54'),
(73, 'Robotic skills', 'TP Programming', 5, NULL, '2016-08-02 13:44:12'),
(74, 'Robotic skills', 'Rj32 Framework', 4, NULL, '2016-08-02 14:12:23'),
(75, 'Web skills', 'Drupal', 3, NULL, '2016-07-25 05:08:40'),
(76, 'Web skills', 'SASS (SCSS)', 5, NULL, '2016-07-25 05:08:40');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `name` longtext,
  `abbreviation` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `abbreviation`) VALUES
(1, 'English', 'EN'),
(2, 'Albanian ', 'SQ'),
(3, 'Arabic ', 'AR'),
(4, 'Armenian ', 'HY'),
(5, 'Basque ', 'EU'),
(6, 'Bengali ', 'BN'),
(7, 'Bulgarian ', 'BG'),
(8, 'Catalan ', 'CA'),
(9, 'Cambodian ', 'KM'),
(10, 'Chinese (Mandarin) ', 'ZH'),
(11, 'Croatian ', 'HR'),
(12, 'Czech ', 'CS'),
(13, 'Danish ', 'DA'),
(14, 'Dutch ', 'NL'),
(15, 'Afrikaans', 'AF'),
(16, 'Estonian ', 'ET'),
(17, 'Fiji ', 'FJ'),
(18, 'Finnish ', 'FI'),
(19, 'French ', 'FR'),
(20, 'Georgian ', 'KA'),
(21, 'German ', 'DE'),
(22, 'Greek ', 'EL'),
(23, 'Gujarati ', 'GU'),
(24, 'Hebrew ', 'HE'),
(25, 'Hindi ', 'HI'),
(26, 'Hungarian ', 'HU'),
(27, 'Icelandic ', 'IS'),
(28, 'Indonesian ', 'ID'),
(29, 'Irish ', 'GA'),
(30, 'Italian ', 'IT'),
(31, 'Japanese ', 'JA'),
(32, 'Javanese ', 'JW'),
(33, 'Korean ', 'KO'),
(34, 'Latin ', 'LA'),
(35, 'Latvian ', 'LV'),
(36, 'Lithuanian ', 'LT'),
(37, 'Macedonian ', 'MK'),
(38, 'Malay ', 'MS'),
(39, 'Malayalam ', 'ML'),
(40, 'Maltese ', 'MT'),
(41, 'Maori ', 'MI'),
(42, 'Marathi ', 'MR'),
(43, 'Mongolian ', 'MN'),
(44, 'Nepali ', 'NE'),
(45, 'Norwegian ', 'NO'),
(46, 'Persian ', 'FA'),
(47, 'Polish ', 'PL'),
(48, 'Portuguese ', 'PT'),
(49, 'Punjabi ', 'PA'),
(50, 'Quechua ', 'QU'),
(51, 'Romanian ', 'RO'),
(52, 'Russian ', 'RU'),
(53, 'Samoan ', 'SM'),
(54, 'Serbian ', 'SR'),
(55, 'Slovak ', 'SK'),
(56, 'Slovenian ', 'SL'),
(57, 'Spanish ', 'ES'),
(58, 'Swahili ', 'SW'),
(59, 'Swedish  ', 'SV'),
(60, 'Tamil ', 'TA'),
(61, 'Tatar ', 'TT'),
(62, 'Telugu ', 'TE'),
(63, 'Thai ', 'TH'),
(64, 'Tibetan ', 'BO'),
(65, 'Tonga ', 'TO'),
(66, 'Turkish ', 'TR'),
(67, 'Ukrainian ', 'UK'),
(68, 'Urdu ', 'UR'),
(69, 'Uzbek ', 'UZ'),
(70, 'Vietnamese ', 'VI'),
(71, 'Welsh ', 'CY'),
(72, 'Xhosa ', 'XH');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_id` int(25) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_id`, `title`) VALUES
(1, 'top-menu'),
(2, 'case-studies');

-- --------------------------------------------------------

--
-- Table structure for table `menu_item`
--

CREATE TABLE `menu_item` (
  `item_id` int(11) NOT NULL,
  `menu_id` int(25) NOT NULL,
  `node_id` int(25) NOT NULL,
  `parent_id` int(25) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `weight` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_item`
--

INSERT INTO `menu_item` (`item_id`, `menu_id`, `node_id`, `parent_id`, `title`, `weight`) VALUES
(1, 1, 2, NULL, 'Portfolio', 0),
(2, 1, 12, 2, 'Web Dev', 2),
(3, 1, 13, 2, 'Design', 0),
(4, 1, 14, 2, 'Robotics', 1),
(5, 1, 15, 2, 'Game Design', 0),
(6, 1, 17, NULL, 'Case Studies', 1),
(7, 1, 37, NULL, 'Resume', -7),
(8, 1, 4, NULL, 'Contact', -10),
(13, 2, 18, NULL, 'Programming Luck', 0),
(15, 2, 19, NULL, 'Programming Afflictions', 0),
(16, 2, 20, NULL, 'Selecting Web Site Colors', 0),
(17, 2, 21, NULL, 'Calculating Pairs that Add up to 10 with AngularJS', 0),
(18, 2, 22, NULL, '3d Sculpting Broadsword with ZBrush', 0),
(19, 2, 23, NULL, 'Website Instance Class', 0),
(20, 2, 26, NULL, 'Determining Square Root', 0),
(21, 2, 27, NULL, 'Solving Robot Scrap By Controlling Variables', 0),
(22, 2, 28, NULL, 'Robots Process Optimization', 0);

-- --------------------------------------------------------

--
-- Table structure for table `node`
--

CREATE TABLE `node` (
  `node_id` int(11) NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `page_heading` varchar(255) DEFAULT NULL,
  `meta_description` varchar(1000) DEFAULT NULL,
  `change_freq` enum('always','hourly','daily','weekly','monthly','yearly','never') NOT NULL DEFAULT 'weekly',
  `priority` decimal(2,1) DEFAULT '0.5',
  `template` enum('default','view') DEFAULT 'default' COMMENT 'header/footer disabled (1) enabled (null)',
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `node`
--

INSERT INTO `node` (`node_id`, `parent_id`, `permission_id`, `title`, `page_heading`, `meta_description`, `change_freq`, `priority`, `template`, `timestamp`) VALUES
(1, 0, NULL, 'Home', 'Full-Stack Developer', 'A full-stack developer\'s home', 'weekly', '1.0', 'default', '2017-08-19 01:37:51'),
(2, 1, NULL, 'Portfolio', 'Portfolio', 'Works completed', 'weekly', '1.0', 'default', '2017-08-19 01:38:10'),
(4, 1, NULL, 'Contact', 'Contact', 'Contact and connect', 'monthly', '0.5', 'default', '2017-08-19 01:38:10'),
(5, 33, NULL, 'Nodes', 'Nodes', 'Node Settings', 'weekly', '0.0', 'default', '2017-08-19 01:38:10'),
(6, 1, NULL, 'Users', 'Users', 'Change group permissions, account settings, create an account, manage user groups, send a message to another user, etc', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(7, 6, NULL, 'Sign-in', 'Sign-in', 'Sign-in to your account.', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(8, 6, 4, 'Settings', 'Settings', 'Update your settings', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(9, 6, NULL, 'Sign Up', 'Sign Up', 'Sign up for an account', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(11, 10, NULL, 'Sitemap XML', 'Sitemap XML', NULL, 'weekly', '0.5', 'view', '2017-08-22 01:28:44'),
(12, 2, NULL, 'Web Development', 'Web Development', 'Web design and development', 'weekly', '0.7', 'default', '2017-08-19 01:38:10'),
(13, 2, NULL, 'Art Design', 'Art Design', 'Art design', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(14, 2, NULL, 'Robotics Development', 'Robotics Development', 'Robotics development', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(15, 2, NULL, 'Game Design', 'Game Design', 'Game design', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(16, 33, NULL, 'Development', 'Development', 'dev', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(17, 1, NULL, 'Case Studies', 'Case Studies', 'Studies about a situation that have been studied over time.', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(18, 17, NULL, 'Luck', 'Luck', 'luck', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(19, 17, NULL, 'Afflictions', 'Afflictions', 'afflictions', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(20, 17, NULL, 'Color Selection', 'Color Selection', 'color selection', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(21, 17, NULL, 'Pair 10', 'Pair 10', NULL, 'monthly', '0.5', 'default', '2017-08-19 01:39:10'),
(22, 17, NULL, 'Broadsword', 'Broadsword', 'Broadsword', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(23, 17, NULL, 'Instance', 'Instance', 'instance', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(25, 1, NULL, 'Search', 'Search', 'Search', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(26, 17, NULL, 'Determining Square Root', 'Determining Square Root', 'Robot determining square root', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(27, 17, NULL, 'Solving Scrap', 'Solving Scrap', 'Robotics Solving Scrap', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(28, 17, NULL, 'Process Optimization', 'Process Optimization', 'Process Optimization', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(33, 1, NULL, 'Administration', 'Administration', 'Description', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(35, 5, NULL, 'Edit', 'Edit', 'Edit nodes', 'weekly', '0.5', 'default', '2017-08-19 01:38:10'),
(36, 1, NULL, 'Title', NULL, 'Description', 'weekly', '0.5', 'default', '2017-08-19 01:39:10'),
(37, 3, NULL, 'Resume PDF', 'Resume', NULL, 'weekly', '0.5', NULL, '2017-08-19 01:39:11');

-- --------------------------------------------------------

--
-- Table structure for table `node_alias`
--

CREATE TABLE `node_alias` (
  `alias_id` int(11) NOT NULL,
  `node_id` int(11) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `retired` tinyint(1) DEFAULT NULL,
  `redirect_node_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `node_alias`
--

INSERT INTO `node_alias` (`alias_id`, `node_id`, `alias`, `retired`, `redirect_node_id`, `user_id`, `timestamp`) VALUES
(1, 1, '/', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(2, 2, '/portfolio', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(4, 4, '/contact', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(5, 5, '/admin/node/settings', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(6, 6, '/users', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(7, 7, '/users/sign-in', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(8, 8, '/users/settings', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(9, 9, '/users/sign-up', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(10, 10, '/site-map', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(11, 11, '/sitemap.xml', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(12, 12, '/portfolio/web-design-and-development', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(13, 13, '/portfolio/art-design', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(14, 14, '/portfolio/robotics-development', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(15, 15, '/portfolio/game-design', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(16, 16, '/dev', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(17, 17, '/case-studies', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(18, 18, '/case-studies/php/luck', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(19, 19, '/case-studies/php/afflictions', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(20, 20, '/snippets/color-selection', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(21, 21, '/case-studies/angularjs/pair-10', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(22, 22, '/case-studies/3d/broadsword', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(23, 23, '/case-studies/php/instance', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(24, 25, '/search', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(25, 26, '/case-studies/robotics/squareroot', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(26, 27, '/case-studies/robotics/solving-scrap', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(27, 28, '/case-studies/robotics/single-program', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(28, 30, '/case-studies/angularjs', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(29, 31, '/case-studies/php', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(30, 32, '/case-studies/robotics', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(31, 33, '/admin', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(32, 34, '/case-studies/3d', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(33, 35, '/admin/node/edit', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(34, 36, '/new-page', NULL, NULL, NULL, '2017-05-26 12:35:01'),
(35, 37, '/resume-pdf', NULL, NULL, NULL, '2017-08-01 23:29:53');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `category` enum('art','game','web','robot') NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `media` varchar(255) DEFAULT NULL,
  `href` varchar(255) NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `year` year(4) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `category`, `title`, `media`, `href`, `thumbnail`, `year`) VALUES
(60, 'robot', 'Eliminating Scrap', 'Designed and Programmed (ASP.Net, VB.Net, KARNEL, FANUC, HTML, CSS, etc.)', 'solving-scrap.jpg', 'solving-scrap.jpg', 2009),
(1, 'web', 'Hazardous Materials Table Lookup', 'Designed, developed, and maintained (LAMP)', 'jnh-hmt.jpg', 'jnh-hmt.jpg', 2015),
(2, 'web', 'GHS Labeling System', 'Designed, developed, and maintained (LAMP)', 'jnh-ghs-label.jpg', 'jnh-ghs-label.jpg', 2015),
(3, 'web', 'Gameframe Website', 'Designed and developed (HTML, CSS, Javascript)', 'gameframe.jpg', 'gameframe.jpg', 2005),
(4, 'web', 'JNH Website', 'Designed, developed, and maintained (LAMP)', 'jnh-main.jpg', 'jnh-main.jpg', 2016),
(5, 'web', 'PHP Example Website', 'Designed and developed (LAMP)', 'php-class-site.jpg', 'php-class-site.jpg', 2009),
(6, 'web', 'Air Emission Reporting System', 'Designed, developed, and maintained (LAMP)', 'jnh-air-emission-report.jpg', 'jnh-air-emission-report.jpg', 2014),
(7, 'web', 'Compliance Files', 'Designed, developed, and maintained (LAMP)', 'jnh-compliance-files.jpg', 'jnh-compliance-files.jpg', 2015),
(8, 'web', 'Dashboard', 'Designed, developed, and maintained (LAMP)', 'jnh-dashboard.jpg', 'jnh-dashboard.jpg', 2015),
(10, 'web', 'Groundwater Direction Calculator', 'Designed, developed, and maintained (LAMP)', 'jnh-groundwater.jpg', 'jnh-groundwater.jpg', 2005),
(11, 'web', 'Safety Data Sheet Info', 'Designed, developed, and maintained (LAMP)', 'jnh-sds-info.jpg', 'jnh-sds-info.jpg', 2016),
(12, 'web', 'Set User Group', 'Designed, developed, and maintained (LAMP)', 'jnh-set-user-groups.jpg', 'jnh-set-user-groups.jpg', 2015),
(13, 'web', 'Training System', 'Designed, developed, and maintained (LAMP)', 'jnh-training.jpg', 'jnh-training.jpg', 2015),
(14, 'web', 'Waste Labeling System', 'Designed, developed, and maintained (LAMP)', 'jnh-waste-label.jpg', 'jnh-waste-label.jpg', 2015),
(15, 'web', 'Game Development Website', 'Designed, developed, and maintained (LAMP)', 'game-dev-site3.jpg', 'game-dev-site3.jpg', 2006),
(16, 'web', 'Game Development Website', 'Designed, developed, and maintained (LAMP)', 'game-dev-site2.jpg', 'game-dev-site2.jpg', 2005),
(17, 'web', 'Game Development Website', 'Designed, developed, and maintained (LAMP)', 'game-dev-site.jpg', 'game-dev-site.jpg', 2005),
(18, 'web', 'Trailside Lodge', 'Designed and developed (HTML and CSS)', 'trailside-logde.jpg', 'trailside-logde.jpg', 2003),
(19, 'art', 'Hyena', 'Painted (Wood Stain)', 'hyena-on-wood.jpg', 'hyena-on-wood.jpg', 2015),
(20, 'art', 'John L Norris Art Center', 'Painted (Watercolors)', 'john-l-norris-art-center.jpg', 'john-l-norris-art-center.jpg', 2005),
(21, 'art', 'Self Portrait', 'Digital Design', 'portrait.jpg', 'portrait.jpg', 2010),
(22, 'art', 'Train Demo', 'Digital Design (Rendered on PSP&reg;)', 'train-demo.jpg', 'train-demo.jpg', 2005),
(23, 'art', 'Hamsa The All-Seeing', 'Painted (Arcylic)', 'hansen-the-all-seeing.jpg', 'hansen-the-all-seeing.jpg', 2015),
(24, 'art', NULL, 'Painted (Arcylic)', 'conscience.jpg', 'conscience.jpg', 2012),
(25, 'art', 'Oni Form', 'Digital Design (Photoshop)', 'oni-form.jpg', 'oni-form.jpg', 2012),
(26, 'art', 'Ace of Spades', 'Painted (Arcylic)', 'ace-of-spades.jpg', 'ace-of-spades.jpg', 2012),
(27, 'art', 'JNH Logo', '3D Digital Design (Sketchup, Kerkythea, etc.)', 'jnh-logo.jpg', 'jnh-logo.jpg', 2015),
(28, 'art', 'Seedling', 'Painted (Sketch Mix Media)', 'seedling.jpg', 'seedling.jpg', 2011),
(29, 'art', 'Computing Monster', 'Painted (Mixed Media)', 'computing-monster.jpg', 'computing-monster.jpg', 2011),
(30, 'art', 'Taken', 'Digital Design (Photoshop)', 'taken.jpg', 'taken.jpg', 2009),
(31, 'art', 'Roy Wind', 'Painted (Pen and Ink)', 'roy-wind.jpg', 'roy-wind.jpg', 2003),
(32, 'art', 'Dirty Toilet', 'Digital Design (Photoshop)', 'dirty-toilet.jpg', 'dirty-toilet.jpg', 2008),
(33, 'art', 'Random Landscape', 'Digital Design (Photoshop)', 'random-landscape-design.jpg', 'random-landscape-design.jpg', 2008),
(34, 'art', 'Sword', '3D Sculpture (Zbrush)', 'fathers-sword.jpg', 'fathers-sword.jpg', 2016),
(35, 'art', NULL, 'Digital Design (mspaint.exe)', 'lacking-spirit.jpg', 'lacking-spirit.jpg', 2003),
(36, 'art', 'Pick My Brain', 'Digital Design (Photoshop)', 'pick-my-brain.jpg', 'pick-my-brain.jpg', 2008),
(38, 'art', 'Playing Dead', 'Digital Design (Photoshop)', 'playing-dead.jpg', 'playing-dead.jpg', 2010),
(39, 'game', 'HUD', 'Digital Design (Photoshop)', 'hud.jpg', 'hud.jpg', 2005),
(40, 'game', 'Project Vercon', 'Digital Desigin (Illustrator)', 'vercon-parts.jpg', 'vercon-parts.jpg', 2004),
(41, 'game', 'Character Design', 'Digital Design (Photoshop)', 'a-true-oni.jpg', 'a-true-oni.jpg', 2008),
(42, 'game', 'Level Editor', 'Programmed (C#)', 'level-editor1.png', 'level-editor1.jpg', NULL),
(43, 'game', 'Level Editor', 'Programmed (C#)', 'level-editor2.png', 'level-editor2.jpg', NULL),
(44, 'game', 'Window Large Sprite', 'Digital Design', 'window_large.png', 'window_large.jpg', 2005),
(45, 'game', 'Walls Sprite', 'Digital Design', 'wall-type.png', 'wall-type.jpg', 2005),
(46, 'game', 'Tileset Sprites', 'Digital Design', 'tileset-demo.png', 'tileset-demo.jpg', 2005),
(47, 'game', 'Seat Sprite', 'Digital Design', 'seat.png', 'seat.jpg', 2005),
(48, 'game', 'Game Screenshot', 'Digital Design (Rendered on PSP&reg;)', 'screenshot3.png', 'screenshot3.jpg', 2005),
(49, 'game', 'Game Screenshot', 'Digital Design (Rendered on PSP&reg;)', 'screenshot2.png', 'screenshot2.jpg', 2005),
(50, 'game', 'Game Screenshot', 'Digital Design (Rendered on PSP&reg;)', 'screenshot1.png', 'screenshot1.jpg', 2005),
(51, 'game', 'Nightstand Sprite', 'Digital Design', 'nightstand.png', 'nightstand.jpg', 2005),
(52, 'game', 'ISO Character Design', 'Digital Design', 'iso-character.png', 'iso-character.jpg', 2005),
(53, 'game', 'PSP Font (Built Font Lib in SDK)', 'Digital Design', 'font.png', 'font.jpg', 2005),
(54, 'game', 'Chest Sprite', 'Digital Design', 'chest.png', 'chest.jpg', 2005),
(55, 'game', 'Bed Sprite', 'Digital Design', 'bed.png', 'bed.jpg', 2005),
(56, 'robot', 'Teaching Robot to Find a Square Root', 'Designed and Programmed (KARNEL)', 'squareroot.jpg', 'squareroot.jpg', 2009),
(57, 'robot', 'Cut All Suite', 'Designed and Programmed (ASP.Net, VB.Net, KARNEL, FANUC, HTML, CSS, etc.)', 'cut-all.jpg', 'cut-all.jpg', 2009),
(58, 'robot', 'Robot Controller Setup', NULL, 'computer-controller.jpg', 'computer-controller.jpg', 2009),
(59, 'web', 'Hazardous Waste Shipping System', 'Designed, developed, and maintained (LAMP)', 'manifest.jpg', 'manifest.jpg', 2015),
(61, 'web', 'Demonstration of SSH Access Using SSH Keys ', 'SSH, Putty, BASH, Pageant', 'ssh.jpg', 'ssh.jpg', 2016),
(62, '', 'Castleton State College CMS Proposal', 'Wordpress (PHP, HTML, CSS)', 'castleton.jpg', 'castleton.jpg', 2012),
(63, 'web', 'Castleton State College CMS Proposal', 'Wordpress (PHP, HTML, CSS)', 'castleton.jpg', 'castleton.jpg', 2012),
(64, 'game', '3D Game Engine', 'MySQL, HTML5, Javascript', 'javascript-game-engine.jpg', 'javascript-game-engine.jpg', 2016),
(65, 'robot', 'Formula Example', 'Pen Paper, et al.', 'robot-calc-e.jpg', 'robot-calc-e.jpg', 2009),
(66, 'game', 'Menu Design WIP', 'Digital Design - Fireworks', 'menu-design1.jpg', 'menu-design1.jpg', 2006),
(67, 'art', 'Death Valley Unfinished', 'Acrylic', 'death-valley.jpg', 'death-valley.jpg', 2012),
(68, 'art', 'MrHeroux Logo Design', '3D Sculpture', 'hx-logo-design.jpg', 'hx-logo-design.jpg', 2016),
(69, '', 'PSP Game Engine Render Lava', 'Lua (PSP Game Engine)', 'render-lava-level.jpg', 'render-lava-level.jpg', 2006),
(70, '', 'Tileset Lava Test', NULL, 'render-lava.jpg', 'render-lava.jpg', 2005),
(71, 'game', 'PSP Game Engine Render Lava', 'Lua (PSP Game Engine)', 'render-lava-level.jpg', 'render-lava-level.jpg', 2006),
(72, 'game', 'Tileset Lava Test', NULL, 'render-lava.jpg', 'render-lava.jpg', 2005),
(73, 'game', 'Character Low Polygon 3D Design', '3D Sculpture (Blender)', 'character-blender.jpg', 'character-blender.jpg', 2006),
(74, 'art', 'Ouroboros Sketch', 'Photoshop and Wacom Intuos 4', 'line-practice.jpg', 'line-practice.jpg', 2016);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `date` datetime DEFAULT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `title`, `content`, `date`, `last_modified`) VALUES
(1, 'Choosing Colors For Your Web Page', '<p>In general, it is recommended that a website should follow the 60/30/10 rule. This refers to the practice of using one color for 60% of the page, one color for 30%, and one color for 10%. The 10% is used for call to actions, such as my shopping cart. This practice makes balancing your color pallet easier. Of course, there are exception to this rule, such as with sites featuring deserve images.</p><p>Another good idea, is to consider using your company\'s colors. If they work it will help add cohesion to your marketing.</p><p>Now there are a lot of colors to choose from. For this site, currently I picked blue for a number of reasons, including</p><ul><li>Between different genders, the most preferred color is blue.</li><li>Blue symbolizes trust, loyalty, wisdom, confidence, intelligence, faith, truth, and heaven.</li><li>Blue is considered beneficial to the mind and body.</li></ul><p>In short, always you should always consider the meaning of the colors you are representing.</p>', '2016-08-02 00:00:00', '2016-08-02 16:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `post_tag_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`post_tag_id`, `post_id`, `tag_id`, `last_modified`) VALUES
(1, 1, 1, '2016-08-02 16:30:19');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `last_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`tag_id`, `title`, `last_modified`) VALUES
(1, 'Web Design and Development', '2016-08-02 16:30:13');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `full_name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `job_title` varchar(255) DEFAULT NULL,
  `lat` float(10,6) DEFAULT NULL,
  `lng` float(10,6) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `locality` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `postal_code` varchar(25) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `office_number` varchar(50) DEFAULT NULL,
  `fax_number` varchar(50) DEFAULT NULL,
  `mobile_number` varchar(50) NOT NULL,
  `home_number` varchar(50) DEFAULT NULL,
  `salt` varchar(32) CHARACTER SET utf8 NOT NULL,
  `password` varchar(92) CHARACTER SET utf8 NOT NULL,
  `timezone` varchar(50) CHARACTER SET utf8 DEFAULT 'US/Eastern',
  `dateformat` varchar(100) DEFAULT NULL,
  `timeformat` varchar(100) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `full_name`, `email`, `company`, `job_title`, `lat`, `lng`, `street_address`, `locality`, `region`, `postal_code`, `country`, `office_number`, `fax_number`, `mobile_number`, `home_number`, `salt`, `password`, `timezone`, `dateformat`, `timeformat`, `timestamp`) VALUES
(3, 'admin', 'admin@example.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, '686a6345c775992ef897e5e75b017bcd', '$6$50$MWonXqsDeUy7gjEz3FUlqWcrjAr2rB166sdK0/Ktc2lVykokmsvxbFKHwwYBwu4u3EMVJG6tb7LBR6gAFzcCn/', 'US/Eastern', 'F j, Y', 'g:i a', '2014-03-21 09:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `user_authentication`
--

CREATE TABLE `user_authentication` (
  `ua_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `remote_address` varchar(255) DEFAULT NULL,
  `authenticated` tinyint(1) DEFAULT NULL,
  `sign_in_time` datetime DEFAULT NULL,
  `sign_out_time` datetime DEFAULT NULL,
  `stay_signed_in` tinyint(1) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_authentication`
--

INSERT INTO `user_authentication` (`ua_id`, `user_id`, `remote_address`, `authenticated`, `sign_in_time`, `sign_out_time`, `stay_signed_in`, `token`, `timestamp`) VALUES
(12, NULL, '127.0.0.1', 0, NULL, NULL, NULL, NULL, '2017-04-19 00:56:29'),
(11, NULL, '127.0.0.1', 0, NULL, NULL, NULL, NULL, '2017-04-18 03:54:21'),
(10, NULL, '127.0.0.1', 0, NULL, NULL, NULL, NULL, '2017-04-18 03:54:16'),
(9, NULL, '127.0.0.1', 0, NULL, NULL, NULL, NULL, '2017-04-18 03:51:36'),
(8, NULL, '127.0.0.1', 0, NULL, NULL, NULL, NULL, '2017-04-18 03:49:57'),
(7, NULL, '127.0.0.1', 0, NULL, NULL, NULL, NULL, '2017-04-18 03:48:31'),
(13, NULL, '127.0.0.1', 0, NULL, NULL, NULL, NULL, '2017-04-19 00:56:59'),
(14, NULL, '127.0.0.1', 0, NULL, NULL, NULL, NULL, '2017-04-19 00:57:08'),
(15, 3, '127.0.0.1', 0, NULL, '2017-06-03 12:58:08', NULL, NULL, '2017-04-19 01:23:21'),
(16, 3, '127.0.0.1', 1, '2017-04-18 21:24:04', '2017-06-03 20:28:57', 0, NULL, '2017-04-19 01:24:04'),
(17, NULL, '127.0.0.1', 0, NULL, NULL, NULL, NULL, '2017-04-19 02:39:52'),
(18, NULL, '127.0.0.1', 0, NULL, NULL, NULL, NULL, '2017-04-19 02:40:01'),
(19, 3, '127.0.0.1', 1, '2017-04-18 22:40:19', '2017-06-03 23:33:03', 0, NULL, '2017-04-19 02:40:19'),
(20, 3, '127.0.0.1', 1, '2017-04-18 22:50:07', '2017-06-12 20:30:15', 0, NULL, '2017-04-19 02:50:07'),
(21, 3, '127.0.0.1', 1, '2017-04-18 22:52:15', NULL, 0, NULL, '2017-04-19 02:52:15'),
(22, 3, '127.0.0.1', 1, '2017-04-18 22:56:10', NULL, 0, NULL, '2017-04-19 02:56:10'),
(23, 3, '127.0.0.1', 1, '2017-04-18 22:57:58', NULL, 0, NULL, '2017-04-19 02:57:58'),
(24, 3, '127.0.0.1', 1, '2017-04-18 23:06:41', NULL, 0, NULL, '2017-04-19 03:06:41'),
(25, 3, '127.0.0.1', 1, '2017-04-18 23:09:52', NULL, 0, NULL, '2017-04-19 03:09:52'),
(26, NULL, '127.0.0.1', 0, NULL, NULL, NULL, NULL, '2017-04-19 03:23:57'),
(27, NULL, '127.0.0.1', 0, NULL, NULL, NULL, NULL, '2017-04-19 03:24:02'),
(28, 3, '127.0.0.1', 1, '2017-04-18 23:24:11', NULL, 0, NULL, '2017-04-19 03:24:11'),
(29, 3, '127.0.0.1', 1, '2017-04-20 20:52:26', NULL, 0, NULL, '2017-04-21 00:52:26'),
(30, 3, '127.0.0.1', 1, '2017-04-20 22:40:30', NULL, 0, NULL, '2017-04-21 02:40:30'),
(31, 3, '127.0.0.1', 1, '2017-06-03 11:58:01', NULL, 0, NULL, '2017-06-03 15:58:01'),
(32, 3, '127.0.0.1', 1, '2017-06-03 12:41:15', NULL, 0, NULL, '2017-06-03 16:41:15'),
(33, 3, '127.0.0.1', 1, '2017-06-03 19:53:08', NULL, 0, NULL, '2017-06-03 23:53:08'),
(34, 3, '127.0.0.1', 1, '2017-06-03 20:29:06', NULL, 0, NULL, '2017-06-04 00:29:06'),
(35, 3, '127.0.0.1', 1, '2017-06-03 23:28:56', NULL, 0, NULL, '2017-06-04 03:28:56'),
(36, 3, '127.0.0.1', 1, '2017-06-03 23:33:16', NULL, 0, NULL, '2017-06-04 03:33:16'),
(37, 3, '127.0.0.1', 1, '2017-06-04 09:57:37', NULL, 0, NULL, '2017-06-04 13:57:37'),
(38, 3, '127.0.0.1', 1, '2017-06-04 12:05:10', NULL, 0, NULL, '2017-06-04 16:05:10'),
(39, 3, '127.0.0.1', 1, '2017-06-04 18:24:23', NULL, 0, NULL, '2017-06-04 22:24:23'),
(40, 3, '127.0.0.1', 1, '2017-06-04 21:21:45', NULL, 0, NULL, '2017-06-05 01:21:45'),
(41, 3, '127.0.0.1', 1, '2017-06-05 19:09:31', NULL, 0, NULL, '2017-06-05 23:09:31'),
(42, 3, '127.0.0.1', 0, NULL, NULL, NULL, NULL, '2017-06-06 00:26:02'),
(43, 3, '127.0.0.1', 1, '2017-06-05 20:26:11', NULL, 0, NULL, '2017-06-06 00:26:11'),
(44, 3, '127.0.0.1', 0, NULL, NULL, NULL, NULL, '2017-06-06 01:56:44'),
(45, 3, '127.0.0.1', 1, '2017-06-05 21:56:54', NULL, 0, NULL, '2017-06-06 01:56:54'),
(46, 3, '127.0.0.1', 1, '2017-06-07 20:01:27', NULL, 0, NULL, '2017-06-08 00:01:27'),
(47, 3, '127.0.0.1', 1, '2017-06-08 19:08:46', NULL, 0, NULL, '2017-06-08 23:08:46'),
(48, 3, '127.0.0.1', 0, NULL, NULL, NULL, NULL, '2017-06-13 00:16:05'),
(49, 3, '127.0.0.1', 1, '2017-06-12 20:16:20', NULL, 0, NULL, '2017-06-13 00:16:20'),
(50, 3, '127.0.0.1', 1, '2017-07-09 22:10:27', NULL, 0, NULL, '2017-07-10 02:10:27');

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `ug_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8,
  `grantable` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Whether user can assign',
  `active` tinyint(4) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group`
--

INSERT INTO `user_group` (`ug_id`, `name`, `description`, `grantable`, `active`, `user_id`, `created`, `timestamp`) VALUES
(1, 'admin', 'administrator', 0, 1, 3, '2017-08-13 20:32:14', '2017-08-14 00:32:14');

-- --------------------------------------------------------

--
-- Table structure for table `user_group_has_member`
--

CREATE TABLE `user_group_has_member` (
  `ugm_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group_has_member`
--

INSERT INTO `user_group_has_member` (`ugm_id`, `user_id`, `group_id`, `start_date`, `end_date`, `timestamp`) VALUES
(1, 3, 1, '2017-08-13 00:00:00', NULL, '2017-08-14 00:32:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_group_has_permission`
--

CREATE TABLE `user_group_has_permission` (
  `ugp_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` varchar(25) NOT NULL,
  `start_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_group_has_permission`
--

INSERT INTO `user_group_has_permission` (`ugp_id`, `group_id`, `permission_id`, `start_date`, `end_date`, `timestamp`) VALUES
(1, 1, '1', '2017-08-13 20:34:45', NULL, '2017-08-14 00:34:45');

-- --------------------------------------------------------

--
-- Table structure for table `user_has_permission`
--

CREATE TABLE `user_has_permission` (
  `up_id` int(25) NOT NULL,
  `user_id` int(25) NOT NULL,
  `permission_id` int(25) NOT NULL,
  `start_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `end_date` datetime DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_has_permission`
--

INSERT INTO `user_has_permission` (`up_id`, `user_id`, `permission_id`, `start_date`, `end_date`, `timestamp`) VALUES
(1, 3, 1, '2017-08-13 00:00:00', NULL, '2017-08-14 00:05:46'),
(2, 3, 2, '2017-08-13 00:00:00', NULL, '2017-08-14 00:05:46'),
(3, 3, 3, '2017-08-13 00:00:00', NULL, '2017-08-14 00:05:46');

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

CREATE TABLE `user_permission` (
  `permission_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `start_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `end_date` datetime DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_permission`
--

INSERT INTO `user_permission` (`permission_id`, `name`, `start_date`, `end_date`, `timestamp`) VALUES
(1, 'node-json-edit', '2017-08-13 21:50:55', NULL, '2017-08-14 01:50:55'),
(2, 'node-logic-edit', '2017-08-13 21:50:55', NULL, '2017-08-14 01:50:55'),
(3, 'node-view-edit', '2017-08-13 22:02:49', NULL, '2017-08-14 02:02:49'),
(4, 'signed-in', '2017-08-18 21:05:25', NULL, '2017-08-19 01:05:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abilities`
--
ALTER TABLE `abilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `menu_item`
--
ALTER TABLE `menu_item`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `node`
--
ALTER TABLE `node`
  ADD PRIMARY KEY (`node_id`);

--
-- Indexes for table `node_alias`
--
ALTER TABLE `node_alias`
  ADD PRIMARY KEY (`alias_id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`post_tag_id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_authentication`
--
ALTER TABLE `user_authentication`
  ADD PRIMARY KEY (`ua_id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`ug_id`);

--
-- Indexes for table `user_group_has_member`
--
ALTER TABLE `user_group_has_member`
  ADD PRIMARY KEY (`ugm_id`);

--
-- Indexes for table `user_group_has_permission`
--
ALTER TABLE `user_group_has_permission`
  ADD PRIMARY KEY (`ugp_id`);

--
-- Indexes for table `user_has_permission`
--
ALTER TABLE `user_has_permission`
  ADD PRIMARY KEY (`up_id`);

--
-- Indexes for table `user_permission`
--
ALTER TABLE `user_permission`
  ADD PRIMARY KEY (`permission_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abilities`
--
ALTER TABLE `abilities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `menu_item`
--
ALTER TABLE `menu_item`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `node`
--
ALTER TABLE `node`
  MODIFY `node_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `node_alias`
--
ALTER TABLE `node_alias`
  MODIFY `alias_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `post_tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_authentication`
--
ALTER TABLE `user_authentication`
  MODIFY `ua_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `ug_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_group_has_member`
--
ALTER TABLE `user_group_has_member`
  MODIFY `ugm_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_group_has_permission`
--
ALTER TABLE `user_group_has_permission`
  MODIFY `ugp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_has_permission`
--
ALTER TABLE `user_has_permission`
  MODIFY `up_id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_permission`
--
ALTER TABLE `user_permission`
  MODIFY `permission_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

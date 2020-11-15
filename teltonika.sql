-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2020 at 08:20 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `teltonika`
--

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(64) COLLATE utf16_unicode_ci NOT NULL,
  `area` float UNSIGNED NOT NULL,
  `population` int(10) UNSIGNED NOT NULL,
  `postal_code` smallint(7) UNSIGNED NOT NULL,
  `fk_countryId` smallint(6) NOT NULL,
  `img` varchar(255) COLLATE utf16_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `name`, `area`, `population`, `postal_code`, `fk_countryId`, `img`) VALUES
(2, 'Madrid', 604.31, 3223334, 28001, 205, 'https://www.ft.com/__origami/service/image/v2/images/raw/http://prod-upp-image-read.ft.com/f4eccd8e-0797-11ea-a958-5e9b7282cbd1?source=next&fit=scale-down&quality=highest&width=1067'),
(3, 'Barcelona', 101.4, 1620343, 800, 205, 'https://cdn-image.departures.com/sites/default/files/1559596629/sagrada-familia-barcelona-BARCELONA0619.jpg'),
(4, 'Outokumpu', 759786, 660518, 4747, 4, ''),
(5, 'Berdyans’k', 497590, 513723, 7757, 5, ''),
(6, 'Nandong', 199734, 577138, 4289, 6, ''),
(7, 'Delgerhaan', 388772, 790459, 6354, 7, ''),
(8, 'Bungoma', 392006, 993440, 3900, 8, ''),
(9, 'Cambebba', 80889.3, 402361, 8881, 9, ''),
(11, 'Mojimán', 255272, 691522, 2274, 11, ''),
(12, 'Stockholm', 718545, 676840, 9892, 12, ''),
(14, 'Pinheiral', 887174, 319711, 2216, 14, ''),
(15, 'Flores da Cunha', 949398, 747068, 6436, 15, ''),
(16, 'Hejiang', 518855, 233241, 1815, 16, ''),
(17, 'Santol', 670462, 947533, 2203, 17, ''),
(18, 'Lewoluo', 755393, 889933, 3966, 18, ''),
(19, 'Chernomorets', 463296, 485290, 4672, 19, ''),
(20, 'Sanhe', 178103, 596716, 9061, 20, ''),
(21, 'Palon', 218865, 15342, 7580, 21, ''),
(22, 'Jackson', 955822, 367333, 1751, 22, ''),
(23, 'Ganjaran', 360232, 242381, 1244, 23, ''),
(24, 'Sala', 111441, 884252, 7439, 24, ''),
(25, 'Santos Dumont', 909072, 232728, 7673, 25, ''),
(26, 'Daguma', 648464, 125678, 1580, 26, ''),
(27, 'Tayu', 348243, 930105, 6116, 27, ''),
(28, 'Cofimvaba', 667178, 355798, 9667, 28, ''),
(29, 'Shuangxi', 839847, 77975, 7013, 29, ''),
(30, 'General Belgrano', 282944, 361413, 5799, 30, ''),
(31, 'Fenlu', 914447, 133191, 2097, 31, ''),
(32, 'Châteauroux', 917160, 399885, 359, 32, ''),
(33, 'Ifon', 203090, 697963, 8814, 33, ''),
(34, 'Taihu', 913392, 341539, 7902, 34, ''),
(35, 'Jinquan', 508746, 461365, 390, 35, ''),
(36, 'Kasturi', 642465, 218826, 2694, 36, ''),
(37, 'Cabrero', 479863, 797748, 1113, 37, ''),
(38, 'Ban Nahin', 136672, 787300, 7388, 38, ''),
(39, 'Daixi', 477386, 160634, 148, 39, ''),
(40, 'Kastsyukowka', 819432, 779672, 7603, 40, ''),
(41, 'Andekantor', 291017, 396624, 3077, 41, ''),
(42, 'Yunyang', 429320, 489070, 3647, 42, ''),
(43, 'Daqiao', 412495, 540043, 3705, 43, ''),
(44, 'Huanza', 615649, 503092, 4564, 44, ''),
(45, 'Markaz-e Woluswalī-ye Āchīn', 611382, 971461, 2981, 45, ''),
(46, 'Hwawŏn', 837328, 851283, 4271, 46, ''),
(47, 'Karangora', 114998, 795906, 2609, 47, ''),
(48, 'Kolomyagi', 135132, 805656, 5699, 48, ''),
(49, 'Carapicuíba', 806328, 167699, 6028, 49, ''),
(50, 'Aracruz', 525669, 272571, 6529, 50, ''),
(51, 'Chadan', 848149, 658763, 3211, 51, ''),
(102, 'Dawan', 324804, 293473, 9345, 2, ''),
(103, 'Valencia', 134.65, 801456, 46000, 205, 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Desde_el_micalet_mirando_hacia_el_norte.jpg/800px-Desde_el_micalet_mirando_hacia_el_norte.jpg'),
(104, 'Seville', 140, 688711, 41001, 205, 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Plaza_Virgen_de_los_Reyes%2C_Seville%2C_Spain_-_Sep_2009.jpg/800px-Plaza_Virgen_de_los_Reyes%2C_Seville%2C_Spain_-_Sep_2009.jpg'),
(105, 'Zaragoza', 973.78, 666880, 50001, 205, 'https://upload.wikimedia.org/wikipedia/commons/thumb/c/c1/Basilica_del_Pilar-sunset.jpg/800px-Basilica_del_Pilar-sunset.jpg'),
(106, 'Vilnius', 401, 587581, 1001, 126, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/99/Gediminas_Avenue_in_autumn.jpg/1280px-Gediminas_Avenue_in_autumn.jpg'),
(107, 'Kaunas', 157, 289380, 44000, 126, 'https://emerging-europe.com/wp-content/uploads/2018/11/km_013-990x556.jpg'),
(108, 'Klaipėda', 98.2, 149116, 9110, 126, 'https://www.gate98.com/wp-content/uploads/2020/06/klaipeda-slider1.jpg'),
(109, 'Šiauliai', 81.13, 110511, 7600, 126, 'https://www.siauliai.lt/siauliai/m/m_slider/wfiles/5.jpg'),
(110, 'New York', 1212.6, 8336817, 10000, 231, 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/ff/Long_Island_City_from_One_World_Observatory_2017.jpg/800px-Long_Island_City_from_One_World_Observatory_2017.jpg'),
(111, 'Los Angeles', 1302.06, 3979576, 9001, 231, 'https://upload.wikimedia.org/wikipedia/commons/thumb/6/69/Los_Angeles_with_Mount_Baldy.jpg/1920px-Los_Angeles_with_Mount_Baldy.jpg'),
(112, 'Kabul', 275, 4434550, 1000, 1, 'https://i.pinimg.com/originals/77/78/5e/77785edc2c062ad6d159b6ad577e8b95.jpg'),
(113, 'Kandahar', 273.37, 614118, 0, 1, 'https://upload.wikimedia.org/wikipedia/commons/9/96/Kandahar_City_Aerial.jpg'),
(114, 'Herat', 182, 574276, 0, 1, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/55/Gawhar_Shad_bigum_by_ali_mosavi_sam.jpg/1920px-Gawhar_Shad_bigum_by_ali_mosavi_sam.jpg'),
(115, 'Buenos Aires', 203, 2891082, 11, 10, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/10/Buenos_Aires_at_night.jpg/1920px-Buenos_Aires_at_night.jpg'),
(116, 'Córdoba', 576, 1528000, 14001, 10, 'https://www.65ymas.com/uploads/s1/14/30/94/terrazas-cordoba.jpeg'),
(117, 'Sydney', 12367.7, 5312163, 2000, 13, 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/53/Sydney_Opera_House_and_Harbour_Bridge_Dusk_%282%29_2019-06-21.jpg/800px-Sydney_Opera_House_and_Harbour_Bridge_Dusk_%282%29_2019-06-21.jpg'),
(118, 'Melbourne', 9993, 5078193, 3000, 13, 'https://www.jacobs.com/sites/default/files/styles/1070xh/public/2019-10/Melbourne_HERO.jpg?itok=DHooW7aC'),
(119, 'Brisbane', 15842, 2514184, 4000, 13, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Skylines_of_Brisbane_in_winter_misty_morning_seen_from_Kangaroo_Point%2C_Queensland_04.jpg/1280px-Skylines_of_Brisbane_in_winter_misty_morning_seen_from_Kangaroo_Point%2C_Queensland_04.jpg'),
(120, 'Perth', 6417.9, 2059484, 6000, 13, 'https://upload.wikimedia.org/wikipedia/commons/f/f4/Perth-skyline.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `name` varchar(64) COLLATE utf16_unicode_ci NOT NULL,
  `sortname` varchar(2) COLLATE utf16_unicode_ci NOT NULL,
  `area` float UNSIGNED NOT NULL DEFAULT 0,
  `population` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `phonecode` smallint(5) UNSIGNED NOT NULL,
  `flag` varchar(255) COLLATE utf16_unicode_ci DEFAULT NULL,
  `id` smallint(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`name`, `sortname`, `area`, `population`, `phonecode`, `flag`, `id`) VALUES
('Afghanistan', 'AF', 652230, 32225560, 93, 'https://upload.wikimedia.org/wikipedia/commons/thumb/9/9a/Flag_of_Afghanistan.svg/1920px-Flag_of_Afghanistan.svg.png', 1),
('Albania', 'AL', 0, 0, 355, NULL, 2),
('Algeria', 'DZ', 0, 0, 213, NULL, 3),
('American Samoa', 'AS', 0, 0, 1684, NULL, 4),
('Andorra', 'AD', 0, 0, 376, NULL, 5),
('Angola', 'AO', 0, 0, 244, NULL, 6),
('Anguilla', 'AI', 0, 0, 1264, NULL, 7),
('Antarctica', 'AQ', 0, 0, 0, NULL, 8),
('Antigua And Barbuda', 'AG', 0, 0, 1268, NULL, 9),
('Argentina', 'AR', 2780400, 44938712, 54, 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Flag_of_Argentina.svg/800px-Flag_of_Argentina.svg.png', 10),
('Armenia', 'AM', 0, 0, 374, NULL, 11),
('Aruba', 'AW', 0, 0, 297, NULL, 12),
('Australia', 'AU', 7692020, 25697800, 61, 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/88/Flag_of_Australia_%28converted%29.svg/800px-Flag_of_Australia_%28converted%29.svg.png', 13),
('Austria', 'AT', 0, 0, 43, NULL, 14),
('Azerbaijan', 'AZ', 0, 0, 994, NULL, 15),
('Bahamas The', 'BS', 0, 0, 1242, NULL, 16),
('Bahrain', 'BH', 0, 0, 973, NULL, 17),
('Bangladesh', 'BD', 0, 0, 880, NULL, 18),
('Barbados', 'BB', 0, 0, 1246, NULL, 19),
('Belarus', 'BY', 0, 0, 375, NULL, 20),
('Belgium', 'BE', 0, 0, 32, NULL, 21),
('Belize', 'BZ', 0, 0, 501, NULL, 22),
('Benin', 'BJ', 0, 0, 229, NULL, 23),
('Bermuda', 'BM', 0, 0, 1441, NULL, 24),
('Bhutan', 'BT', 0, 0, 975, NULL, 25),
('Bolivia', 'BO', 0, 0, 591, NULL, 26),
('Bosnia and Herzegovina', 'BA', 0, 0, 387, NULL, 27),
('Botswana', 'BW', 0, 0, 267, NULL, 28),
('Bouvet Island', 'BV', 0, 0, 0, NULL, 29),
('Brazil', 'BR', 0, 0, 55, NULL, 30),
('British Indian Ocean Territory', 'IO', 0, 0, 246, NULL, 31),
('Brunei', 'BN', 0, 0, 673, NULL, 32),
('Bulgaria', 'BG', 0, 0, 359, NULL, 33),
('Burkina Faso', 'BF', 0, 0, 226, NULL, 34),
('Burundi', 'BI', 0, 0, 257, NULL, 35),
('Cambodia', 'KH', 0, 0, 855, NULL, 36),
('Cameroon', 'CM', 0, 0, 237, NULL, 37),
('Canada', 'CA', 0, 0, 1, NULL, 38),
('Cape Verde', 'CV', 0, 0, 238, NULL, 39),
('Cayman Islands', 'KY', 0, 0, 1345, NULL, 40),
('Central African Republic', 'CF', 0, 0, 236, NULL, 41),
('Chad', 'TD', 0, 0, 235, NULL, 42),
('Chile', 'CL', 0, 0, 56, NULL, 43),
('China', 'CN', 0, 0, 86, NULL, 44),
('Christmas Island', 'CX', 0, 0, 61, NULL, 45),
('Cocos (Keeling) Islands', 'CC', 0, 0, 672, NULL, 46),
('Colombia', 'CO', 0, 0, 57, NULL, 47),
('Comoros', 'KM', 0, 0, 269, NULL, 48),
('Republic Of The Congo', 'CG', 0, 0, 242, NULL, 49),
('Democratic Republic Of The Congo', 'CD', 0, 0, 242, NULL, 50),
('Cook Islands', 'CK', 0, 0, 682, NULL, 51),
('Costa Rica', 'CR', 0, 0, 506, NULL, 52),
('Cote D\'Ivoire (Ivory Coast)', 'CI', 0, 0, 225, NULL, 53),
('Croatia (Hrvatska)', 'HR', 0, 0, 385, NULL, 54),
('Cuba', 'CU', 0, 0, 53, NULL, 55),
('Cyprus', 'CY', 0, 0, 357, NULL, 56),
('Czech Republic', 'CZ', 0, 0, 420, NULL, 57),
('Denmark', 'DK', 0, 0, 45, NULL, 58),
('Djibouti', 'DJ', 0, 0, 253, NULL, 59),
('Dominica', 'DM', 0, 0, 1767, NULL, 60),
('Dominican Republic', 'DO', 0, 0, 1809, NULL, 61),
('East Timor', 'TP', 0, 0, 670, NULL, 62),
('Ecuador', 'EC', 0, 0, 593, NULL, 63),
('Egypt', 'EG', 0, 0, 20, NULL, 64),
('El Salvador', 'SV', 0, 0, 503, NULL, 65),
('Equatorial Guinea', 'GQ', 0, 0, 240, NULL, 66),
('Eritrea', 'ER', 0, 0, 291, NULL, 67),
('Estonia', 'EE', 0, 0, 372, NULL, 68),
('Ethiopia', 'ET', 0, 0, 251, NULL, 69),
('External Territories of Australia', 'XA', 0, 0, 61, NULL, 70),
('Falkland Islands', 'FK', 0, 0, 500, NULL, 71),
('Faroe Islands', 'FO', 0, 0, 298, NULL, 72),
('Fiji Islands', 'FJ', 0, 0, 679, NULL, 73),
('Finland', 'FI', 0, 0, 358, NULL, 74),
('France', 'FR', 0, 0, 33, NULL, 75),
('French Guiana', 'GF', 0, 0, 594, NULL, 76),
('French Polynesia', 'PF', 0, 0, 689, NULL, 77),
('French Southern Territories', 'TF', 0, 0, 0, NULL, 78),
('Gabon', 'GA', 0, 0, 241, NULL, 79),
('Gambia The', 'GM', 0, 0, 220, NULL, 80),
('Georgia', 'GE', 0, 0, 995, NULL, 81),
('Germany', 'DE', 0, 0, 49, NULL, 82),
('Ghana', 'GH', 0, 0, 233, NULL, 83),
('Gibraltar', 'GI', 0, 0, 350, NULL, 84),
('Greece', 'GR', 0, 0, 30, NULL, 85),
('Greenland', 'GL', 0, 0, 299, NULL, 86),
('Grenada', 'GD', 0, 0, 1473, NULL, 87),
('Guadeloupe', 'GP', 0, 0, 590, NULL, 88),
('Guam', 'GU', 0, 0, 1671, NULL, 89),
('Guatemala', 'GT', 0, 0, 502, NULL, 90),
('Guernsey and Alderney', 'XU', 0, 0, 44, NULL, 91),
('Guinea', 'GN', 0, 0, 224, NULL, 92),
('Guinea-Bissau', 'GW', 0, 0, 245, NULL, 93),
('Guyana', 'GY', 0, 0, 592, NULL, 94),
('Haiti', 'HT', 0, 0, 509, NULL, 95),
('Heard and McDonald Islands', 'HM', 0, 0, 0, NULL, 96),
('Honduras', 'HN', 0, 0, 504, NULL, 97),
('Hong Kong S.A.R.', 'HK', 0, 0, 852, NULL, 98),
('Hungary', 'HU', 0, 0, 36, NULL, 99),
('Iceland', 'IS', 0, 0, 354, NULL, 100),
('India', 'IN', 0, 0, 91, NULL, 101),
('Indonesia', 'ID', 0, 0, 62, NULL, 102),
('Iran', 'IR', 0, 0, 98, NULL, 103),
('Iraq', 'IQ', 0, 0, 964, NULL, 104),
('Ireland', 'IE', 0, 0, 353, NULL, 105),
('Israel', 'IL', 0, 0, 972, NULL, 106),
('Italy', 'IT', 0, 0, 39, NULL, 107),
('Jamaica', 'JM', 0, 0, 1876, NULL, 108),
('Japan', 'JP', 0, 0, 81, NULL, 109),
('Jersey', 'XJ', 0, 0, 44, NULL, 110),
('Jordan', 'JO', 0, 0, 962, NULL, 111),
('Kazakhstan', 'KZ', 0, 0, 7, NULL, 112),
('Kenya', 'KE', 0, 0, 254, NULL, 113),
('Kiribati', 'KI', 0, 0, 686, NULL, 114),
('Korea North', 'KP', 0, 0, 850, NULL, 115),
('Korea South', 'KR', 0, 0, 82, NULL, 116),
('Kuwait', 'KW', 0, 0, 965, NULL, 117),
('Kyrgyzstan', 'KG', 0, 0, 996, NULL, 118),
('Laos', 'LA', 0, 0, 856, NULL, 119),
('Latvia', 'LV', 0, 0, 371, NULL, 120),
('Lebanon', 'LB', 0, 0, 961, NULL, 121),
('Lesotho', 'LS', 0, 0, 266, NULL, 122),
('Liberia', 'LR', 0, 0, 231, NULL, 123),
('Libya', 'LY', 0, 0, 218, NULL, 124),
('Liechtenstein', 'LI', 0, 0, 423, NULL, 125),
('Lithuania', 'LT', 65300, 2795334, 370, 'https://upload.wikimedia.org/wikipedia/commons/1/11/Flag_of_Lithuania.svg', 126),
('Luxembourg', 'LU', 0, 0, 352, NULL, 127),
('Macau S.A.R.', 'MO', 0, 0, 853, NULL, 128),
('Macedonia', 'MK', 0, 0, 389, NULL, 129),
('Madagascar', 'MG', 0, 0, 261, NULL, 130),
('Malawi', 'MW', 0, 0, 265, NULL, 131),
('Malaysia', 'MY', 0, 0, 60, NULL, 132),
('Maldives', 'MV', 0, 0, 960, NULL, 133),
('Mali', 'ML', 0, 0, 223, NULL, 134),
('Malta', 'MT', 0, 0, 356, NULL, 135),
('Man (Isle of)', 'XM', 0, 0, 44, NULL, 136),
('Marshall Islands', 'MH', 0, 0, 692, NULL, 137),
('Martinique', 'MQ', 0, 0, 596, NULL, 138),
('Mauritania', 'MR', 0, 0, 222, NULL, 139),
('Mauritius', 'MU', 0, 0, 230, NULL, 140),
('Mayotte', 'YT', 0, 0, 269, NULL, 141),
('Mexico', 'MX', 0, 0, 52, NULL, 142),
('Micronesia', 'FM', 0, 0, 691, NULL, 143),
('Moldova', 'MD', 0, 0, 373, NULL, 144),
('Monaco', 'MC', 0, 0, 377, NULL, 145),
('Mongolia', 'MN', 0, 0, 976, NULL, 146),
('Montserrat', 'MS', 0, 0, 1664, NULL, 147),
('Morocco', 'MA', 0, 0, 212, NULL, 148),
('Mozambique', 'MZ', 0, 0, 258, NULL, 149),
('Myanmar', 'MM', 0, 0, 95, NULL, 150),
('Namibia', 'NA', 0, 0, 264, NULL, 151),
('Nauru', 'NR', 0, 0, 674, NULL, 152),
('Nepal', 'NP', 0, 0, 977, NULL, 153),
('Netherlands Antilles', 'AN', 0, 0, 599, NULL, 154),
('Netherlands The', 'NL', 0, 0, 31, NULL, 155),
('New Caledonia', 'NC', 0, 0, 687, NULL, 156),
('New Zealand', 'NZ', 0, 0, 64, NULL, 157),
('Nicaragua', 'NI', 0, 0, 505, NULL, 158),
('Niger', 'NE', 0, 0, 227, NULL, 159),
('Nigeria', 'NG', 0, 0, 234, NULL, 160),
('Niue', 'NU', 0, 0, 683, NULL, 161),
('Norfolk Island', 'NF', 0, 0, 672, NULL, 162),
('Northern Mariana Islands', 'MP', 0, 0, 1670, NULL, 163),
('Norway', 'NO', 0, 0, 47, NULL, 164),
('Oman', 'OM', 0, 0, 968, NULL, 165),
('Pakistan', 'PK', 0, 0, 92, NULL, 166),
('Palau', 'PW', 0, 0, 680, NULL, 167),
('Palestinian Territory Occupied', 'PS', 0, 0, 970, NULL, 168),
('Panama', 'PA', 0, 0, 507, NULL, 169),
('Papua new Guinea', 'PG', 0, 0, 675, NULL, 170),
('Paraguay', 'PY', 0, 0, 595, NULL, 171),
('Peru', 'PE', 0, 0, 51, NULL, 172),
('Philippines', 'PH', 0, 0, 63, NULL, 173),
('Pitcairn Island', 'PN', 0, 0, 0, NULL, 174),
('Poland', 'PL', 0, 0, 48, NULL, 175),
('Portugal', 'PT', 92212, 10295909, 351, NULL, 176),
('Puerto Rico', 'PR', 0, 0, 1787, NULL, 177),
('Qatar', 'QA', 0, 0, 974, NULL, 178),
('Reunion', 'RE', 0, 0, 262, NULL, 179),
('Romania', 'RO', 0, 0, 40, NULL, 180),
('Russia', 'RU', 0, 0, 70, NULL, 181),
('Rwanda', 'RW', 0, 0, 250, NULL, 182),
('Saint Helena', 'SH', 0, 0, 290, NULL, 183),
('Saint Kitts And Nevis', 'KN', 0, 0, 1869, NULL, 184),
('Saint Lucia', 'LC', 0, 0, 1758, NULL, 185),
('Saint Pierre and Miquelon', 'PM', 0, 0, 508, NULL, 186),
('Saint Vincent And The Grenadines', 'VC', 0, 0, 1784, NULL, 187),
('Samoa', 'WS', 0, 0, 684, NULL, 188),
('San Marino', 'SM', 0, 0, 378, NULL, 189),
('Sao Tome and Principe', 'ST', 0, 0, 239, NULL, 190),
('Saudi Arabia', 'SA', 2149690, 34218169, 966, 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0d/Flag_of_Saudi_Arabia.svg/800px-Flag_of_Saudi_Arabia.svg.png', 191),
('Senegal', 'SN', 0, 0, 221, NULL, 192),
('Serbia', 'RS', 0, 0, 381, 'https://cdn.webshopapp.com/shops/94414/files/52422010/flag-of-serbia.jpg', 193),
('Seychelles', 'SC', 0, 0, 248, NULL, 194),
('Sierra Leone', 'SL', 0, 0, 232, NULL, 195),
('Singapore', 'SG', 0, 0, 65, NULL, 196),
('Slovakia', 'SK', 0, 0, 421, NULL, 197),
('Slovenia', 'SI', 0, 0, 386, NULL, 198),
('Smaller Territories of the UK', 'XG', 0, 0, 44, NULL, 199),
('Solomon Islands', 'SB', 0, 0, 677, NULL, 200),
('Somalia', 'SO', 0, 0, 252, NULL, 201),
('South Africa', 'ZA', 0, 0, 27, NULL, 202),
('South Georgia', 'GS', 0, 0, 0, NULL, 203),
('South Sudan', 'SS', 0, 0, 211, NULL, 204),
('Spain', 'ES', 505990, 47431256, 34, 'https://upload.wikimedia.org/wikipedia/en/thumb/9/9a/Flag_of_Spain.svg/800px-Flag_of_Spain.svg.png', 205),
('Sri Lanka', 'LK', 0, 0, 94, NULL, 206),
('Sudan', 'SD', 0, 0, 249, NULL, 207),
('Suriname', 'SR', 0, 0, 597, NULL, 208),
('Svalbard And Jan Mayen Islands', 'SJ', 0, 0, 47, NULL, 209),
('Swaziland', 'SZ', 0, 0, 268, NULL, 210),
('Sweden', 'SE', 0, 0, 46, NULL, 211),
('Switzerland', 'CH', 0, 0, 41, NULL, 212),
('Syria', 'SY', 0, 0, 963, NULL, 213),
('Taiwan', 'TW', 0, 0, 886, NULL, 214),
('Tajikistan', 'TJ', 0, 0, 992, NULL, 215),
('Tanzania', 'TZ', 0, 0, 255, NULL, 216),
('Thailand', 'TH', 0, 0, 66, NULL, 217),
('Togo', 'TG', 0, 0, 228, NULL, 218),
('Tokelau', 'TK', 0, 0, 690, NULL, 219),
('Tonga', 'TO', 0, 0, 676, NULL, 220),
('Trinidad And Tobago', 'TT', 0, 0, 1868, NULL, 221),
('Tunisia', 'TN', 0, 0, 216, NULL, 222),
('Turkey', 'TR', 0, 0, 90, NULL, 223),
('Turkmenistan', 'TM', 0, 0, 7370, NULL, 224),
('Turks And Caicos Islands', 'TC', 0, 0, 1649, NULL, 225),
('Tuvalu', 'TV', 0, 0, 688, NULL, 226),
('Uganda', 'UG', 0, 0, 256, NULL, 227),
('Ukraine', 'UA', 0, 0, 380, NULL, 228),
('United Arab Emirates', 'AE', 0, 0, 971, NULL, 229),
('United Kingdom', 'GB', 0, 0, 44, NULL, 230),
('United States', 'US', 9833520, 328239523, 1, 'https://upload.wikimedia.org/wikipedia/en/thumb/a/a4/Flag_of_the_United_States.svg/800px-Flag_of_the_United_States.svg.png', 231),
('United States Minor Outlying Islands', 'UM', 0, 0, 1, NULL, 232),
('Uruguay', 'UY', 0, 0, 598, NULL, 233),
('Uzbekistan', 'UZ', 0, 0, 998, NULL, 234),
('Vanuatu', 'VU', 0, 0, 678, NULL, 235),
('Vatican City State (Holy See)', 'VA', 0, 0, 39, NULL, 236),
('Venezuela', 'VE', 0, 0, 58, NULL, 237),
('Vietnam', 'VN', 0, 0, 84, NULL, 238),
('Virgin Islands (British)', 'VG', 0, 0, 1284, NULL, 239),
('Virgin Islands (US)', 'VI', 0, 0, 1340, NULL, 240),
('Wallis And Futuna Islands', 'WF', 0, 0, 681, NULL, 241),
('Western Sahara', 'EH', 0, 0, 212, NULL, 242),
('Yemen', 'YE', 0, 0, 967, NULL, 243),
('Yugoslavia', 'YU', 0, 0, 38, NULL, 244),
('Zambia', 'ZM', 0, 0, 260, NULL, 245),
('Zimbabwe', 'ZW', 0, 0, 263, NULL, 246);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

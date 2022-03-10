-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2022 at 09:19 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tashfia_export`
--

-- --------------------------------------------------------

--
-- Table structure for table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `Amount` varchar(255) DEFAULT NULL,
  `remarks` longtext DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `asset`
--

INSERT INTO `asset` (`id`, `category_id`, `name`, `balance`, `Amount`, `remarks`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'MIZAN DHALY', NULL, '6000', NULL, '107', '2022-02-19 11:58:29', '2022-02-19 11:58:29'),
(2, 1, 'CHOTO RIDOY', NULL, '7000', NULL, '107', '2022-02-19 11:59:11', '2022-02-19 11:59:11'),
(3, NULL, 'MAMUN MAMA', NULL, '1000', NULL, '107', '2022-02-19 11:59:45', '2022-02-19 11:59:45'),
(4, NULL, 'MONIR', NULL, '10000', NULL, '107', '2022-02-19 12:00:03', '2022-02-19 12:00:03'),
(5, 1, 'MAMUN MAMA', NULL, '1000', NULL, '107', '2022-02-19 12:01:32', '2022-02-19 12:01:32'),
(6, 1, 'MONIR', NULL, '10000', NULL, '107', '2022-02-19 12:01:52', '2022-02-19 12:01:52'),
(7, NULL, 'ROHIM MAMA', NULL, '1000', NULL, '107', '2022-02-19 12:02:10', '2022-02-19 12:02:10'),
(8, 2, 'ALAMIN', NULL, '290', NULL, '107', '2022-02-19 12:03:03', '2022-02-19 12:03:03'),
(9, 3, 'ALAMIN', NULL, '270', 'S S B KNITING', '107', '2022-02-19 12:04:33', '2022-02-19 12:04:33'),
(10, 1, 'SAKIL BHAI', NULL, '1500', NULL, '107', '2022-02-19 12:05:10', '2022-02-19 12:05:10'),
(11, 1, 'KOLIBOR MAMA', NULL, '1000', NULL, '107', '2022-02-19 12:05:48', '2022-02-19 12:05:48'),
(12, 4, 'ALAMIN', NULL, '900', 'AAGER HISHAB', '107', '2022-02-19 12:06:50', '2022-02-19 12:06:50'),
(13, 5, 'ALAMIN', NULL, '14000', 'KHADEM MAMA NIJ', '107', '2022-02-19 12:08:08', '2022-02-19 12:08:08'),
(14, 3, 'adesads', NULL, '234', 'asdadssd', '92', '2022-03-08 12:45:33', '2022-03-08 12:45:33'),
(15, 2, 'wdfsf', NULL, '45', 'dsfsfd', '92', '2022-03-08 12:45:45', '2022-03-08 12:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `cheque_details`
--

CREATE TABLE `cheque_details` (
  `id` int(11) NOT NULL,
  `sales_payment_id` int(11) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cheque_details`
--

INSERT INTO `cheque_details` (`id`, `sales_payment_id`, `number`, `date`, `created_at`, `updated_at`) VALUES
(1, NULL, '45', '2021-12-01', '2021-12-27 19:27:10', '2021-12-27 19:27:10'),
(2, NULL, '123456', '2021-12-28', '2021-12-27 23:14:22', '2021-12-27 23:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

CREATE TABLE `company_info` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `company_address` longtext DEFAULT NULL,
  `company_contact_no` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`id`, `company_name`, `category`, `company_address`, `company_contact_no`, `country`, `created_at`, `updated_at`) VALUES
(2, 'BISMILLAH TRADERS', 'purchase', '2 NO RAILGATE, NARAYANGONJ', '01712093019', 'BANGLADESH', '2022-02-19 12:22:50', '2022-02-19 12:22:50'),
(3, 'MA NITING AND FINISHING', 'purchase', 'FATULLAH, NARAYANGONJ', '01848315422', 'BANGLADESH', '2022-02-19 12:37:35', '2022-02-19 12:37:35'),
(4, 'SHAWON BHAI', 'sell', 'UKIL PARA, NARAYANGONJ', NULL, 'BANGLADESH', '2022-02-19 12:43:44', '2022-02-19 12:43:44'),
(5, 'M/S GOPLA TRADERS', 'purchase', '2 NO RAIL GATE, NARAYANGONJ', '01881064583', 'BANGLADESH', '2022-02-19 14:53:25', '2022-02-19 14:53:25'),
(6, 'MD MOSHAROF SIR', 'sell', 'KASHIPUR, NARAYANGONJ', NULL, 'BANGLADESH', '2022-02-19 15:05:10', '2022-02-19 15:05:10'),
(7, 'Monir Traders', 'purchase', 'Nayamati, Narayangong', '017000000000', 'BANGLADESH', '2022-02-20 12:06:12', '2022-02-20 12:06:12'),
(8, 'RAJIB ENTERPRISE', 'purchase', 'B B ROAD, NARAYANGONJ', '01681069256', 'BANGLADESHI', '2022-02-22 11:56:51', '2022-02-22 11:56:51'),
(9, 'M/S PROTTOY TRADERS', 'purchase', 'B B ROAD, OKILPARA, NARAYANGONJ', '01713083989', 'BANGLADESHI', '2022-02-22 11:58:38', '2022-02-22 11:58:38'),
(10, 'FIHA NIT & DYEING', 'purchase', 'RONI MARKER, NOYAMATI, NARAYANGONJ', '01763708533', 'BANGLADESHI', '2022-02-22 12:01:48', '2022-02-22 12:01:48'),
(11, 'SUMAIYA NIT FABRICS', 'purchase', 'NOYAMATI, NARAYANGONJ', '01783222666', 'BANGLADESHI', '2022-02-22 12:03:26', '2022-02-22 12:03:26'),
(12, 'M/S SANTA TRADERS', 'purchase', '2 NO; RAIL GATE , NARAYANGONJ', '01711343317', 'BANGLADESHI', '2022-02-22 12:04:48', '2022-02-22 12:04:48'),
(13, 'M/S FARUK ENTERPRISE', 'purchase', 'TANBAZAR, NARAYANGONJ', '01711977174', 'BANGLADESHI', '2022-02-22 12:07:19', '2022-02-22 12:07:19'),
(14, 'M/S FARUK ENTERPRISE', 'purchase', 'TANBAZAR, NARAYANGONJ', '01711977174', 'BANGLADESHI', '2022-02-22 12:07:21', '2022-02-22 12:07:21'),
(15, 'G.N ENTERPRISE', 'purchase', 'D N ROAD, NONDIPARA, NARAYANGANJ', '01712785447', 'BANGLADESHI', '2022-02-22 12:09:05', '2022-02-22 12:09:05'),
(16, 'TANJUM FABRICS', 'purchase', 'SIBU MARKET, WEST-LAMAPARA, FATULLAH, NARAYANGANJ', '01777452672', 'BANGLADESHI', '2022-02-22 12:11:09', '2022-02-22 12:11:09'),
(17, 'MELA TRADE CENTER', 'purchase', 'Banga Bandhu Road, Narayanganj', '01815001570', 'BANGLADESHI', '2022-02-22 12:14:26', '2022-02-22 12:14:26'),
(18, 'M/S MA ENTERPRISE', 'purchase', '2 NO; RAIL GATE , NARAYANGONJ', '01881064583', 'BANGLADESHI', '2022-02-22 12:16:30', '2022-02-22 12:16:30'),
(19, 'FALGUNI YARN & FABRICS ZONE', 'purchase', 'NAYAMATI, NARAYANGANJ', '01715134711', 'BANGLADESHI', '2022-02-22 12:18:35', '2022-02-22 12:18:35'),
(20, 'M/S AL-MADINA KNIT', 'purchase', 'FIRUJ MARKER, NAYAMATI, NARAYANGANJ', '01817573579', 'BANGLADESHI', '2022-02-22 12:20:24', '2022-02-22 12:20:24'),
(21, 'ABDULLAH KNIT DYEING & FABRICS', 'purchase', 'NORTH KASHIPUR,FATULLAH, NARAYANGANJ', '01860639000', 'BANGLADESHI', '2022-02-22 12:22:48', '2022-02-22 12:22:48'),
(22, 'AL-MADINA FABRICS', 'purchase', 'NAYAMATI, NARAYANGANJ', '01915611510', 'BANGLADESHI', '2022-02-22 12:24:26', '2022-02-22 12:24:26'),
(23, 'M/S SIMON ENTERPRISE', 'purchase', 'TANBAZAR, NARAYANGANJ', '01711566091', 'BANGLADESHI', '2022-02-22 12:26:23', '2022-02-22 12:26:23'),
(24, 'M/S ALVI ENTERPRISE', 'purchase', 'B B ROAD, NARAYANGONJ', '01825234190', 'BANGLADESHI', '2022-02-22 12:28:10', '2022-02-22 12:28:10'),
(25, 'AL-ARABI KNIT GARDEN', 'purchase', 'NOYAMATI, NARAYANGONJ', '014811336194', 'BANGLADESHI', '2022-02-22 12:29:27', '2022-02-22 12:29:27'),
(26, 'SHAHABUDDIN ENTERPRISE', 'purchase', 'PARIS ROAD,SECTION-10, MIRPUR, DHAKA', '01921522676', 'BANGLADESHI', '2022-02-22 12:31:42', '2022-02-22 12:31:42'),
(27, 'M/S MAMUN & BROTHERS', 'purchase', 'NAYAMATI, NARAYANGANJ', '01712779296', 'BANGLADESHI', '2022-02-22 12:32:39', '2022-02-22 12:32:39'),
(28, 'FRAULEN FASHION LTD', 'purchase', 'ASHULIA, SAVAR, DHAKA', '01741514337', 'BANGLADESHI', '2022-02-22 12:34:10', '2022-02-22 12:34:10'),
(29, 'BROTHER\'S YARN & FABRICS', 'purchase', 'HAZI KALIMOLLAH MARKER, NARAYANGANJ', '01622161270', 'BANGLADESHI', '2022-02-22 12:35:49', '2022-02-22 12:35:49'),
(30, 'J.M.T FABRICS', 'purchase', 'UKILPARA, NARAYANGANJ', '01625459000', 'BANGLADESHI', '2022-02-22 12:37:17', '2022-02-22 12:37:17'),
(31, 'JANNATUL KINT FABRICS', 'purchase', 'B B ROAD, NARAYANGONJ', '01823471327', 'BANGLADESHI', '2022-02-22 12:38:46', '2022-02-22 12:38:46'),
(32, 'M/S MAHIA KINT', 'purchase', 'AMENA MARKET, NAYAMATI, NARAYANGANJ', '01680102926', 'BANGLADESHI', '2022-02-22 12:40:25', '2022-02-22 12:40:25'),
(33, 'SHILPI PRINTING PRESS', 'purchase', 'NAYAMATI, NARAYANGANJ', '01711127726', 'BANGLADESHI', '2022-02-22 12:41:46', '2022-02-22 12:41:46'),
(34, 'M/S SHREYA ENTERPRISE', 'purchase', '2 NO RAIL GATE, PALPARA, NARAYANGANJ', '01781973396', 'BANGLADESHI', '2022-02-22 12:43:36', '2022-02-22 12:43:36'),
(35, 'SAMIR FASHION LTD', 'sell', 'MIRPUR-01 DHAKA', '01847176414', 'BANGLADESH', '2022-02-24 12:12:16', '2022-02-24 12:12:16'),
(36, 'TAHSIN FASHION LTD', 'sell', 'MIRPUR-01, DHAKA', NULL, 'BANGLADESH', '2022-02-24 12:19:48', '2022-02-24 12:19:48'),
(37, 'MD RIYADUL ISLAM RIYAD', 'sell', '2 NO RAIL GATE, NARAYANGONJ', NULL, 'BANGLADESH', '2022-02-24 12:20:53', '2022-02-24 12:20:53'),
(38, 'SATHIL SUTAGHAR', 'sell', 'HARUN COMPLEX, TANBAZAR', NULL, 'BANGLADESH', '2022-02-24 12:21:46', '2022-02-24 12:21:46'),
(39, 'MD MAMUN HUZUR', 'sell', '2 NO RAILGATE, NARAYANGONJ', NULL, 'BANGLADESH', '2022-02-24 12:22:28', '2022-02-24 12:22:28'),
(40, 'MD NIZAMUDDIN AHMED', 'sell', 'UTTARA, TONGI,', NULL, 'BANGLADESH', '2022-02-24 12:23:15', '2022-02-24 12:23:15'),
(41, 'JONONI HOSIARY, MD SATTAR HOSSAIN', 'sell', 'CHOUWDHORY COMPLEX MASDAIR', NULL, 'BANGLADESH', '2022-02-24 12:24:12', '2022-02-24 12:24:12'),
(42, 'ZAKIA TRADING, MUROBBI HAZI SHAHEB', 'sell', 'PATHANTOLI, NARAYANGONJ', NULL, 'BANGLADESH', '2022-02-24 12:26:08', '2022-02-24 12:26:08'),
(43, 'ZAKIA TRADING MD, SAKHAWAT HOSSAIN', 'sell', 'PATHANTOLI, NARAYANGONJ', NULL, 'BANGLADESH', '2022-02-24 12:27:23', '2022-02-24 12:27:23'),
(44, 'MD ALAMIN HOSSAIN, TERRY PATI', 'sell', 'KASHIPUR, NARAYANGONJ', NULL, 'BANGLADESH', '2022-02-24 12:28:11', '2022-02-24 12:28:11'),
(45, 'MD SHAMIM AHMED, TERRY PARTY', 'sell', 'KASHIPUR, NARAYANGONJ', NULL, 'BANGLADESH', '2022-02-24 12:28:42', '2022-02-24 12:28:42'),
(46, 'MONAF FASHION, MD FORID AHMED', 'sell', 'KAWLA, UTTARA, DHAKA', NULL, 'BANGLADESH', '2022-02-24 12:29:20', '2022-02-24 12:29:20'),
(47, 'MD MONIR HOSSAIN, KALIBAZAR, NARAYANGONJ', 'sell', 'KALIBAZAR, NARAYANGONJ', NULL, 'BANGLADESH', '2022-02-24 12:30:10', '2022-02-24 12:30:10'),
(48, 'HAQUE NIT FASHION, MD ALOM BHAI', 'sell', 'NIMTOLA, NARAYANGONJ', NULL, 'BANGLADESH', '2022-02-24 12:30:56', '2022-02-24 12:30:56'),
(49, 'MD ROBIN AHMED, PRINT PARTY', 'sell', 'MONDOLPARA, NARAYANGONJ', NULL, 'BANGLADESH', '2022-02-24 12:31:37', '2022-02-24 12:31:37'),
(50, 'MD ROBIN AHMED, PRINT PARTY', 'sell', 'MONDOLPARA, NARAYANGONJ', NULL, 'BANGLADESH', '2022-02-24 12:32:35', '2022-02-24 12:32:35'),
(51, 'MD MOSTAQ AHMED BABU, PRINT PARTY', 'sell', 'RIVERVIEW, NARAYANGONJ', NULL, 'BANGLADESH', '2022-02-24 12:33:46', '2022-02-24 12:33:46'),
(52, 'MD SHAHIN MAMA, PRINT PARTY', 'sell', 'HABIB TOWER, NARAYANGONJ', NULL, 'BANGLADESH', '2022-02-24 12:36:17', '2022-02-24 12:36:17'),
(53, 'MD MANNAN MAMA', 'sell', 'NIJ MARKET, NOYAMATI, NARAYANGONJ', NULL, 'BANGLADESH', '2022-02-24 12:37:38', '2022-02-24 12:37:38'),
(54, 'MEEKA PHARMACARE LTD', 'sell', 'Dhanmondi, Dhaka-1209', '01894885623', 'BANGLADESH', '2022-02-26 13:00:42', '2022-02-26 13:03:24'),
(55, 'MD. ALAMIN HOSSAIN', 'purchase', '2 NO; RAIL GATE , NARAYANGONJ', '01629136436', 'BANGLADESHI', '2022-02-26 13:22:24', '2022-02-26 13:22:24'),
(56, 'MAMUN ENTERPRISE', 'sell', 'BONDOR, NARAYANGONJ', '01967849608', 'BANGLADESH', '2022-02-26 15:23:45', '2022-02-26 15:23:45'),
(57, 'JONONI HOSIERY', 'sell', 'MASDAIR, NARAYANGONJ', '8801711041906', 'BANGLADESH', '2022-02-26 15:28:29', '2022-02-26 15:28:29'),
(58, 'HAQUE KNIT FASHION', 'sell', 'NIMTOLA, NARAYANGONJ', '8801616507999', 'BANGLADESH', '2022-02-26 15:38:30', '2022-02-26 15:38:30'),
(59, 'RABEYA, GARMENTS', 'sell', 'BISIC, NARAYANGONJ', '8801922101081', 'BANGLADESHI', '2022-02-26 15:48:40', '2022-02-26 15:48:40'),
(60, 'ZAHID TRADERS', 'sell', 'GOLACIPA, NARAYANGONJ', '8801733765777', 'BANGLADESH', '2022-02-26 15:59:19', '2022-02-26 15:59:19'),
(61, 'SONJOY DADA', 'sell', 'UKIL PARA, NARAYANGONJ', '8801963290377', 'BANGLADESH', '2022-02-26 16:02:38', '2022-02-26 16:02:38'),
(62, 'SAHAJALAL FASHION', 'sell', 'UTTARA, DHAKA', '8801742895296', 'BANGLADESH', '2022-02-26 16:07:27', '2022-02-26 16:07:27'),
(63, 'MERI FASHION', 'sell', 'UTTAR NORSINPUR, NARAYANGONJ', '8801943336836', 'BANGLADESH', '2022-02-26 16:11:01', '2022-02-26 16:11:01'),
(64, 'FAIZA FASHION', 'sell', 'BISIC, NARAYANGONJ', '8801629843065', 'BANGLADESH', '2022-02-26 16:14:16', '2022-02-26 16:14:16'),
(65, 'ADURI FASHION', 'sell', 'KASHIPUR, COUNCIL OFFICE', '01882078261', 'BANGLADESHI', '2022-02-26 16:21:24', '2022-02-26 16:21:24'),
(66, 'MEHEZABIN FASON', 'sell', 'PATAMTOLI  NARAYANGONJ', NULL, 'BANGLADESHI', '2022-02-27 12:08:28', '2022-02-27 12:08:44'),
(67, 'AL-MAHAMUD TRIDARC', 'sell', '2 NO .REILGAT', NULL, 'BANGLADESHI', '2022-02-27 12:11:08', '2022-02-27 12:11:08'),
(68, 'SHAWON ENTERPRAISE', 'purchase', 'NARAYANGONJ', '01612229798', 'BANGLADESHI', '2022-02-27 12:22:45', '2022-02-27 12:22:45'),
(69, 'RAZIB-ENTERPRISE', 'purchase', 'TANBAZAR, NARAYANGONJ', '01304604386', 'BANGLADESHI', '2022-02-27 12:38:11', '2022-02-27 12:40:06'),
(70, 'BEFORE  SALES', 'sell', 'NAYAMATI, NARAYANGANJ', '01304604386', 'BANGLADESHI', '2022-02-27 12:54:50', '2022-02-27 12:54:50'),
(71, 'RAJIB ENTERPRISE', 'sell', 'NAYAMATI, NARAYANGANJ', '01752586743', 'BANGLADESHI', '2022-02-27 14:28:50', '2022-02-27 14:28:50'),
(72, 'FANCY HOSIERY', 'purchase', 'NARAYANGONJ', '0170460458965', 'BANGLADESHI', '2022-02-28 15:36:51', '2022-02-28 15:36:51'),
(73, 'SAYEM FASHION', 'sell', 'UTTAR NORSINPUR.NARAYANGONJ', '01914142921', 'BANGLADESHI', '2022-02-28 20:10:43', '2022-02-28 20:10:43'),
(74, 'MEEKA PHARMACARE LTD', 'sell', '12/1 FLOOR #8th ROAD #12 NEW DHANMONDI DHAKA -1209', '01711404534', 'BANGLADESHI', '2022-03-02 16:08:41', '2022-03-02 16:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'general',
  `email` varchar(255) DEFAULT NULL,
  `personal_phone` varchar(255) DEFAULT NULL,
  `optional_phone` varchar(255) DEFAULT NULL,
  `present_address` longtext DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `permanent_address` longtext DEFAULT NULL,
  `balance` varchar(255) DEFAULT '0',
  `reference` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `photo` longtext DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `company_id`, `name`, `type`, `email`, `personal_phone`, `optional_phone`, `present_address`, `company_name`, `permanent_address`, `balance`, `reference`, `nid`, `photo`, `nationality`, `designation`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 4, 'SHAWON BHAI', 'general', NULL, NULL, NULL, 'UKIL PARA, NARAYANGONJ', NULL, 'UKIL PARA, NARAYANGONJ', '-0.375', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-19 12:44:30', '2022-02-19 12:46:51'),
(3, 6, 'MD MOSHAROF SIR', 'general', NULL, NULL, NULL, 'UKIL PARA, NARAYANGONJ', NULL, 'UKIL PARA, NARAYANGONJ', '-5.1023', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-19 15:06:16', '2022-03-10 03:02:44'),
(4, 7, 'Dulal Vai', 'general', NULL, '01934821949', NULL, 'Kashipur, Narayangong', NULL, 'Kashipur, Narayangong', '-2023.0512', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-20 12:10:13', '2022-03-10 02:33:52'),
(5, 7, 'Al-Amin', 'general', NULL, '0123456', NULL, 'narayanganj', NULL, 'narayanganj', '-23.33', NULL, NULL, '', 'bangladeshi', 'manager', 92, '2022-02-23 15:49:41', '2022-03-10 02:44:08'),
(6, 53, 'MANNAN MAMA', 'general', NULL, NULL, NULL, 'NARAYANGONJ', NULL, 'NARAYANGANJ', NULL, NULL, NULL, '2022-02-24-621729fb9c61a.jpeg', 'BANGLADESH', 'OWNER', 107, '2022-02-24 12:47:23', '2022-02-24 12:47:23'),
(7, 7, 'MONIR BHAI', 'general', NULL, NULL, NULL, 'KALIBAZAR, NARAYANGONJ', NULL, 'NARAYANGANJ', '-2489.7063', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-24 13:12:53', '2022-03-10 02:15:27'),
(8, 35, 'DELOWAR SIR', 'general', NULL, NULL, NULL, 'MIRPUR. 01- DHAKA', NULL, NULL, '490322', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-24 13:14:40', '2022-02-26 15:19:41'),
(9, 36, 'TAHSIN SIR', 'general', NULL, NULL, NULL, 'MIRPUR. 01- DHAKA', NULL, 'MIRPUR. 01- DHAKA', '65', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-24 13:16:13', '2022-02-26 15:20:31'),
(10, 37, 'RIYAD SIR', 'general', NULL, NULL, NULL, '2 NO RAIL GATE, NARAYANGONJ', NULL, '2 NO RAIL GATE, NARAYANGONJ', '10', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-24 13:17:18', '2022-02-26 15:21:43'),
(11, 38, 'SATHIL SIR', 'general', NULL, NULL, NULL, 'HARUN COMPLEX', NULL, 'HARUN COMPLEX', NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-24 13:18:30', '2022-02-24 13:18:30'),
(12, 42, 'AMIRUL HAZI SHAHEB', 'general', NULL, NULL, NULL, 'DHAKA, FACTORY, PATHANTOLI', NULL, 'DHAKA, FACTORY, PATHANTOLI', '998220', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-24 15:43:08', '2022-02-26 15:30:38'),
(13, 43, 'SAKHAWAT HOSSAIN', 'general', NULL, NULL, NULL, 'PATHANTOLI, NARAYANGONJ', NULL, 'PATHANTOLI, NARAYANGONJ', '76908', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-24 15:44:32', '2022-02-26 15:31:06'),
(14, 44, 'MD ALAMIN HOSSAIN', 'general', NULL, NULL, NULL, 'KASHIPUR, NARAYANGONJ', NULL, 'KASHIPUR, NARAYANGONJ', '1288363', NULL, NULL, '', 'BANGLADESH', 'OWNER', 107, '2022-02-24 15:46:11', '2022-02-26 15:33:05'),
(15, 45, 'SHAMIM AHMED', 'general', NULL, NULL, NULL, 'KASHIPUR, NARAYANGONJ', NULL, 'KASHIPUR, NARAYANGONJ', '30384', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-24 15:47:18', '2022-02-26 15:33:57'),
(16, 46, 'MD FORID AHMED', 'general', NULL, NULL, NULL, 'KAWLA, UTTARA, DHAKA', NULL, 'KAWLA, UTTARA, DHAKA', '55036', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-24 15:48:56', '2022-02-26 15:34:59'),
(17, 47, 'MD MONIR HOSSAIN', 'general', NULL, NULL, NULL, 'KALIBAZAR, NARAYANGONJ', NULL, 'KALIBAZAR, NARAYANGONJ', '360', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-24 15:50:47', '2022-02-26 15:35:20'),
(18, 54, 'MD. Nurun Nabi Sujuon', 'general', NULL, '01894885623', NULL, 'Dhanmondi, Dhaka-1209', NULL, 'Dhanmondi, Dhaka-1209', '-9', NULL, NULL, '', 'BANGLADESHI', 'Manager', 107, '2022-02-26 13:05:20', '2022-02-26 13:35:14'),
(19, 56, 'MD. MAMUN', 'general', NULL, '8801967849608', NULL, 'BONDOR, GHARMORA, NARAYANGONJ', NULL, 'BONDOR, GHARMORA, NARAYANGONJ', '14187', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-26 15:25:51', '2022-02-26 15:25:51'),
(20, 57, 'MD. SATTAR', 'general', NULL, '8801711041906', NULL, 'MASDAIR, NARAYANGONJ', NULL, 'MASDAIR, NARAYANGONJ', '3099413', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-26 15:29:49', '2022-02-26 15:29:49'),
(21, 58, 'MD. ALOM MAMA', 'general', NULL, '8801616507999', NULL, 'NIMTIOLA, NARAYANGONJ', NULL, 'NIMTIOLA, NARAYANGONJ', '237806', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-26 15:40:00', '2022-02-26 15:40:00'),
(22, 49, 'MD. ROBIN AHMED', 'general', NULL, '8801306427696', NULL, 'MONDOLPARA, NARAYANGONJ', NULL, 'MONDOLPARA, NARAYANGONJ', '100', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-26 15:41:50', '2022-02-26 15:41:50'),
(23, 51, 'MD MOSTAQ AHMED BABU', 'general', NULL, '880178038800', NULL, 'RIVERVIEW, NARAYANGONJ', NULL, 'RIVERVIEW, NARAYANGONJ', '32476', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-26 15:44:35', '2022-02-26 15:45:08'),
(24, 53, 'MANNAN MUROBBI', 'general', NULL, '8801624871445', NULL, 'NOYAMATI, NARAYANGONJ', NULL, 'NOYAMATI, NARAYANGONJ', '210925', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-26 15:46:56', '2022-02-26 15:46:56'),
(25, 59, 'MD. MIZANUR RAHMAN', 'general', NULL, '8801922101081', NULL, 'BISIC, NARAYANGONJ', NULL, 'BISIC, NARAYANGONJ', '57020', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-26 15:56:44', '2022-02-26 15:56:44'),
(26, 60, 'MD. ZAHID AHMED', 'general', NULL, '8801733765777', NULL, 'GOLACIPA, NARAYANGONJ', NULL, 'GOLACIPA, NARAYANGONJ', '33712', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-26 16:00:52', '2022-02-26 16:00:52'),
(27, 60, 'MD. ZAHID AHMED', 'general', NULL, '8801733765777', NULL, 'GOLACIPA, NARAYANGONJ', NULL, 'GOLACIPA, NARAYANGONJ', '33712', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-26 16:00:56', '2022-02-26 16:00:56'),
(28, 61, 'SRI SONJOY DADA', 'general', NULL, '8801963290377', NULL, 'UKIL PARA, NARAYANGONJ', NULL, 'UKIL PARA, NARAYANGONJ', '81.7954', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-26 16:04:47', '2022-03-09 22:47:01'),
(29, 62, 'MD. SAHAJALAL', 'general', NULL, '8801742895296', NULL, 'UTTARA,DHAKA', NULL, 'UTTARA,DHAKA', '1126185', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-26 16:09:48', '2022-02-26 16:09:48'),
(30, 63, 'MD. BILLAL AHMED', 'general', NULL, '8801943336836', NULL, 'UTTAR NORSINPUR, NARAYANGONJ', NULL, 'UTTAR NORSINPUR, NARAYANGONJ', '314547', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-26 16:12:36', '2022-02-26 16:12:36'),
(31, 64, 'MD. PARVEZ AHMED', 'general', NULL, '8801629843065', NULL, 'BISIC, NARAYANGONJ', NULL, 'BISIC, NARAYANGONJ', '380', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-26 16:16:48', '2022-02-26 16:16:48'),
(32, 65, 'MD. TITU AHMED', 'general', NULL, '01882078261', NULL, 'KASHIPUR, COUNCIL, OFFICE', NULL, 'KASHIPUR, COUNCIL, OFFICE', '145550', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 107, '2022-02-26 16:27:04', '2022-02-26 16:27:04'),
(33, 73, 'MD.MILON SIR GM', 'general', NULL, '01914142921', NULL, 'UTTAR NORSINPUR.NARAYANGONJ', NULL, 'UTTAR NORSINPUR.NARAYANGONJ', '1', NULL, NULL, '', 'BANGLADESHI', 'GM', 107, '2022-02-28 20:16:28', '2022-03-10 12:48:23'),
(34, 74, 'MD.  NURUN NABI SUJON', 'general', NULL, '01894885623', NULL, 'DHANMONNDI  DHAKA', NULL, 'DHANMONNDI  DHAKA', '0', NULL, NULL, '', 'BANGLADESHI', 'GM', 92, '2022-03-02 16:12:31', '2022-03-10 11:10:57'),
(35, NULL, 'Md. Khasrur Rahman', 'wal in customer', NULL, '01761955765', NULL, 'Flat: 6-c, Building: 99/1, Matikata Bazar Road, Dhaka', 'TIL -  Bangladesh Army', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 12:56:39', '2022-03-10 12:56:39');

-- --------------------------------------------------------

--
-- Table structure for table `dynamic_routes`
--

CREATE TABLE `dynamic_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller_action` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'get,post',
  `route_type` tinyint(1) DEFAULT 1 COMMENT '1=main,0=public',
  `parameter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `route_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1=active,0=not active',
  `show_in_menu` int(11) DEFAULT 0 COMMENT '0=no,1=yes',
  `ajax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `dynamic_routes`
--

INSERT INTO `dynamic_routes` (`id`, `title`, `url`, `model_name`, `content`, `controller_action`, `method`, `route_type`, `parameter`, `route_status`, `show_in_menu`, `ajax`, `created_at`, `updated_at`) VALUES
(1, 'adminDashboard', 'adminDashboard', 'AdminDashboard', NULL, 'AdminDashboarController@index', 'get', 1, NULL, 1, 0, '0', NULL, '2021-01-17 22:36:57'),
(3, 'Show Routs', 'dynamic_route', 'Route', NULL, 'RouteController@dynamic_route', 'get', 1, NULL, 1, 1, '0', '2020-12-23 17:11:03', '2021-03-18 09:19:43'),
(4, 'ADD Route', 'dynamic_route', 'Route', NULL, 'RouteController@save_dynamic_route', 'Post', 1, NULL, 1, 0, '0', '2020-12-23 17:13:07', '2020-12-23 17:13:07'),
(5, 'Roles', 'role/all_role', 'Role', NULL, 'RoleController@all_role', 'get', 1, NULL, 1, 1, '0', '2020-12-23 17:35:33', '2021-06-10 07:00:32'),
(6, 'Add Role', 'role/add_role', 'Role', NULL, 'RoleController@add_role', 'get', 1, NULL, 1, 1, '0', '2020-12-23 17:36:01', '2021-06-10 06:59:12'),
(8, 'save role', 'save_role', 'Role', NULL, 'RoleController@save_role', 'Post', 1, NULL, 1, 0, '0', '2020-12-23 21:10:26', '2020-12-26 17:36:28'),
(9, 'Show Users', 'all_user', 'User', NULL, 'UserController@all_user', 'get', 1, NULL, 1, 1, '0', '2020-12-23 21:40:53', '2021-03-18 09:20:11'),
(10, 'save user', 'save_user', 'User', NULL, 'UserController@save_user', 'Post', 1, NULL, 1, 0, '0', '2020-12-23 21:54:33', '2020-12-23 21:54:33'),
(11, 'Edit Role', 'edit_role', 'Role', NULL, 'RoleController@edit_role', 'get', 1, '{id}', 1, 0, '0', '2020-12-26 16:22:10', '2020-12-26 17:28:54'),
(12, 'Update Role', 'update_role', 'Role', NULL, 'RoleController@update_role', 'Post', 1, '{id}', 1, 0, '0', '2020-12-26 16:46:07', '2021-01-11 22:25:35'),
(13, 'Delete Role', 'delete_role', 'Role', NULL, 'RoleController@delete_role', 'get', 1, '{id}', 1, 0, '0', '2020-12-26 16:56:05', '2020-12-26 16:56:05'),
(14, 'Delete Route', 'delete_route', 'Route', NULL, 'RouteController@delete_route', 'get', 1, '{id}', 1, 0, '0', '2020-12-26 16:59:22', '2020-12-26 16:59:22'),
(16, 'Edit Route', 'edit_route', 'Route', NULL, 'RouteController@edit_route', 'get', 0, '{id}', 1, 0, '0', '2020-12-26 17:03:02', '2020-12-26 17:16:35'),
(19, 'Update Route', 'update_route', 'Route', NULL, 'RouteController@update_route', 'Post', 1, '{id}', 1, 0, '0', '2020-12-26 17:13:20', '2020-12-26 17:13:20'),
(91, 'Chnage Password', 'admin/change_password', 'AdminDashboard', NULL, 'AdminDashboarController@change_password', 'get', 1, NULL, 1, 0, '0', '2021-01-17 22:38:34', '2021-01-18 18:20:41'),
(92, 'Save Change Password', 'admin/save_change_password', 'AdminDashboard', NULL, 'AdminDashboarController@save_change_password', 'Post', 1, NULL, 1, 0, '0', '2021-01-19 18:04:46', '2021-01-19 18:04:46'),
(93, 'Edit User', 'edit_user', 'User', NULL, 'UserController@edit_user', 'get', 1, '{id}', 1, 0, '1', '2021-01-20 21:42:58', '2021-01-20 21:42:58'),
(94, 'Upadte User', 'upadte_user', 'User', NULL, 'UserController@upadte_user', 'Post', 1, NULL, 1, 0, '0', '2021-01-20 22:11:40', '2021-01-20 22:27:28'),
(95, 'Suspend user', 'suspend_user', 'User', NULL, 'UserController@suspend_user', 'get', 1, '{id}', 1, 0, '0', '2021-01-20 22:34:00', '2021-01-20 22:34:00'),
(96, 'unsuspend user', 'unsuspend_user', 'User', NULL, 'UserController@unsuspend_user', 'get', 1, '{id}', 1, 0, '0', '2021-01-20 22:58:06', '2021-01-20 22:58:06'),
(127, 'Delete user', 'delete_user', 'User', NULL, 'UserController@delete_user', 'get', 1, '{id}', 1, 0, '0', '2021-06-10 06:50:43', '2021-06-10 06:50:43'),
(130, 'Test Menu', 'test', 'ModelMenu', NULL, 'MenuController@getLevel3Childern', 'get', 1, '{id}', 1, 1, '1', '2021-06-24 06:27:04', '2021-06-24 06:27:04'),
(131, 'Create menu', 'menu/menu_create', 'Menu', NULL, 'MenuController@create_menu', 'get', 1, NULL, 1, 1, '0', '2021-06-29 17:33:06', '2021-06-29 17:33:06'),
(133, 'Save Menu', 'menu/menu_save', 'Menu', NULL, 'MenuController@menu_save', 'Post', 1, NULL, 1, 0, '0', '2021-07-04 15:03:45', '2021-07-04 15:49:37'),
(134, 'ALL Menu', 'menu/all_menu', 'Menu', NULL, 'MenuController@all_menu', 'get', 1, NULL, 1, 1, '0', '2021-07-04 16:03:13', '2021-07-04 16:03:13'),
(135, 'Search Menu', 'menu/menu_search', 'Menu', NULL, 'MenuController@menu_search', 'Post', 1, NULL, 1, 0, '1', '2021-07-04 17:15:11', '2021-07-04 17:15:11'),
(138, 'Edit Menu', 'menu/edit_menu', 'Menu', NULL, 'MenuController@edit_menu', 'get', 1, '{id}', 1, 0, '0', '2021-07-05 11:49:25', '2021-07-05 11:49:25'),
(139, 'Update Menu', 'menu/update_menu', 'Menu', NULL, 'MenuController@update_menu', 'Post', 1, '{id}', 1, 0, '0', '2021-07-05 11:50:06', '2021-07-05 11:58:36'),
(254, 'Create product', 'product/craete', 'product', NULL, 'ProductController@create', 'get', 1, NULL, 1, 1, '0', '2021-09-22 05:53:21', '2021-09-22 06:07:01'),
(255, 'store product', 'product/store', 'product', NULL, 'ProductController@store', 'Post', 1, NULL, 1, 1, '0', '2021-09-22 06:00:56', '2021-09-22 06:00:56'),
(256, 'Get products', 'product/alldata', 'product', NULL, 'ProductController@alldata', 'Post', 1, NULL, 1, 1, '1', '2021-09-22 06:01:33', '2021-09-22 06:20:51'),
(257, 'All  products', 'product/index', 'product', NULL, 'ProductController@index', 'get', 1, NULL, 1, 1, '0', '2021-09-22 06:20:25', '2021-09-22 06:20:25'),
(258, 'View Product', 'product/view', 'product', NULL, 'ProductController@view', 'get', 1, '{id}', 1, 1, '1', '2021-09-22 07:40:48', '2021-09-22 07:40:48'),
(259, 'Delete Product', 'product/delete', 'product', NULL, 'ProductController@delete', 'get', 1, '{id}', 1, 0, '0', '2021-09-23 07:26:56', '2021-09-23 07:26:56'),
(260, 'sales Department', 'sales/show_sales_department', 'sales_department', NULL, 'DepartmentController@show_sales_department', 'get', 1, NULL, 1, 1, '0', '2021-09-28 03:16:36', '2021-11-18 06:09:14'),
(261, 'Get Sales Department Data', 'sales/get_sales_department_data', 'sales_department', NULL, 'DepartmentController@get_sales_department_data', 'Post', 1, NULL, 1, 0, '1', '2021-09-28 03:17:27', '2021-11-18 06:09:09'),
(262, 'save sales department', 'sales/store_sales_department_data', 'sales_department', NULL, 'SalesController@store_sales_department_data', 'Post', 1, NULL, 1, 0, '1', '2021-09-28 05:01:18', '2021-11-18 06:09:05'),
(263, 'Edit sales Department', 'sales/edit_sales_department_data', 'sales_department', NULL, 'DepartmentController@edit_sales_department_data', 'get', 1, '{id}', 1, 0, '1', '2021-09-28 05:02:04', '2021-11-18 06:08:58'),
(264, 'Update sales Department', 'sales/update_sales_department_data', 'sales_department', NULL, 'SalesController@update_sales_department_data', 'Post', 1, NULL, 1, 0, '1', '2021-09-28 05:02:52', '2021-11-18 06:06:36'),
(265, 'Delete sales Department', 'sales/delete_sales_department_data', 'sales_department', NULL, 'DepartmentController@delete_sales_department_data', 'get', 1, '{id}', 1, 0, '1', '2021-09-28 05:31:49', '2021-11-18 06:08:13'),
(266, 'Show Lot Department', 'Department/show_lot_department', 'lot_department', NULL, 'DepartmentController@show_lot_department', 'get', 1, NULL, 1, 1, '0', '2021-09-28 15:55:55', '2021-10-04 03:49:07'),
(267, 'Get Lot Department Data', 'Department/search', 'lot_department', NULL, 'DepartmentController@search', 'Post', 1, NULL, 1, 0, '1', '2021-09-28 15:56:43', '2021-10-13 20:26:16'),
(268, 'Store lot department data', 'Department/store_lot_department_data', 'lot_department', NULL, 'DepartmentController@store_lot_department_data', 'Post', 1, NULL, 1, 0, '1', '2021-09-28 15:57:43', '2021-10-04 03:48:54'),
(269, 'delete Lot department data', 'Department/delete_lot_department_data', 'lot_department', NULL, 'DepartmentController@delete_lot_department_data', 'get', 1, '{id}', 1, 0, '1', '2021-09-28 15:58:23', '2021-10-04 03:48:58'),
(270, 'Edit lot department data', 'Department/edit_lot_department_data', 'lot_department', NULL, 'DepartmentController@edit_lot_department_data', 'get', 1, '{id}', 1, 0, '1', '2021-09-28 15:59:05', '2021-10-04 03:49:02'),
(271, 'update lot department data', 'Department/update_lot_department_data', 'lot_department', NULL, 'DepartmentController@update_lot_department_data', 'Post', 1, NULL, 1, 0, '1', '2021-09-28 15:59:46', '2021-10-04 03:49:04'),
(272, 'view single stock data', 'Department/show_single_lot_department_data', 'lot_department', NULL, 'DepartmentController@show_single_lot_department_data', 'get', 1, '{id}', 1, 0, '1', '2021-10-04 18:35:32', '2021-10-04 18:35:32'),
(273, 'sales Department invoice', 'sales/sales_department_invoice', 'sales_department', NULL, 'DepartmentController@sales_department_invoice', 'get', 1, '{id}', 1, 0, '1', '2021-10-05 04:18:12', '2021-10-05 04:18:12'),
(274, 'All Customer', 'customer/all_customer', 'customer', NULL, 'CustomerController@index', 'get', 1, NULL, 1, 1, '0', '2021-10-12 07:14:16', '2021-10-12 07:21:00'),
(275, 'Customer search', 'customer/search', 'customer', NULL, 'CustomerController@search', 'Post', 1, NULL, 1, 0, '1', '2021-10-12 07:14:58', '2021-10-12 07:21:14'),
(276, 'Customer store', 'customer/store', 'customer', NULL, 'CustomerController@store', 'Post', 1, NULL, 1, 0, '1', '2021-10-12 07:15:40', '2021-10-12 07:21:17'),
(277, 'customer edit', 'customer/edit', 'customer', NULL, 'CustomerController@edit', 'get', 1, '{id}', 1, 0, '1', '2021-10-12 07:16:15', '2021-10-12 07:21:19'),
(278, 'customer update', 'customer/update', 'customer', NULL, 'CustomerController@update', 'Post', 1, '{id}', 1, 0, '1', '2021-10-12 07:19:42', '2021-12-06 15:12:46'),
(279, 'Customer Delete', 'customer/delete', 'customer', NULL, 'CustomerController@delete', 'get', 1, '{id}', 1, 0, '1', '2021-10-12 07:20:21', '2021-10-12 07:21:25'),
(280, 'supllier index', 'supplier/index', 'supplier', NULL, 'supplierController@index', 'get', 1, NULL, 1, 1, '0', '2021-10-12 07:25:14', '2021-10-12 07:26:03'),
(281, 'supplier search', 'supplier/search', 'supplier', NULL, 'supplierController@search', 'Post', 1, NULL, 1, 0, '1', '2021-10-12 07:25:50', '2021-10-12 07:25:50'),
(282, 'supplier store', 'supplier/store', 'supplier', NULL, 'supplierController@store', 'Post', 1, NULL, 1, 0, '1', '2021-10-12 07:30:59', '2021-10-12 07:30:59'),
(283, 'supplier edit', 'supplier/edit', 'supplier', NULL, 'supplierController@edit', 'get', 1, '{id}', 1, 0, '1', '2021-10-12 07:31:39', '2021-10-12 07:31:39'),
(284, 'supplier update', 'supplier/update', 'supplier', NULL, 'supplierController@update', 'Post', 1, '{id}', 1, 0, '1', '2021-10-12 07:32:10', '2021-12-20 15:29:30'),
(285, 'supplier  delete', 'supplier/delete', 'supplier', NULL, 'supplierController@delete', 'get', 1, '{id}', 1, 0, '1', '2021-10-12 07:33:13', '2021-10-12 07:33:13'),
(286, 'product ingredient view', 'product/ingredients', 'product', NULL, 'ProductController@ingredients', 'get', 1, '{id}', 1, 0, '1', '2021-10-13 17:31:38', '2021-10-13 17:31:38'),
(287, 'Purchase index', 'purchase/index', 'purchase', NULL, 'purchaseController@index', 'get', 1, NULL, 1, 1, '0', '2021-10-13 18:13:25', '2021-10-13 18:13:25'),
(288, 'Purchase search', 'purchase/search', 'purchase', NULL, 'purchaseController@search', 'Post', 1, NULL, 1, 0, '1', '2021-10-13 18:13:56', '2021-10-13 18:13:56'),
(289, 'Purchase store', 'purchase/store', 'purchase', NULL, 'purchaseController@store', 'Post', 1, NULL, 1, 0, '1', '2021-10-13 18:14:28', '2021-10-13 18:14:28'),
(290, 'Purchase edit', 'purchase/edit', 'purchase', NULL, 'purchaseController@edit', 'get', 1, '{id}', 1, 0, '1', '2021-10-13 18:14:57', '2021-10-13 18:14:57'),
(291, 'Purchase update', 'purchase/update', 'purchase', NULL, 'purchaseController@update', 'Post', 1, '{id}', 1, 0, '0', '2021-10-13 18:15:26', '2021-12-21 17:09:37'),
(292, 'Purchase delete', 'purchase/delete', 'purchase', NULL, 'purchaseController@delete', 'get', 1, '{id}', 1, 0, '1', '2021-10-13 18:15:53', '2021-10-13 18:15:53'),
(293, 'supllier show', 'supplier/show', 'supplier', NULL, 'supplierController@show', 'get', 1, '{id}', 1, 0, '1', '2021-10-13 19:50:53', '2021-10-13 19:50:53'),
(294, 'Purchase view', 'purchase/show', 'purchase', NULL, 'purchaseController@show', 'get', 1, '{id}', 1, 0, '1', '2021-10-13 20:34:25', '2021-10-13 20:34:25'),
(295, 'Ingredient Index', 'ingredient/index', 'ingredient', NULL, 'IngredientController@index', 'get', 1, NULL, 1, 1, '0', '2021-10-12 21:35:03', '2022-01-12 03:50:06'),
(296, 'Ingredient search', 'ingredient/search', 'ingredient', NULL, 'IngredientController@search', 'Post', 1, NULL, 1, 0, '1', '2021-10-12 21:35:44', '2021-10-12 21:35:44'),
(297, 'Ingredient store', 'ingredient/store', 'ingredient', NULL, 'IngredientController@store', 'Post', 1, NULL, 1, 0, '1', '2021-10-12 21:36:14', '2021-10-12 21:36:14'),
(298, 'Ingredient Edit', 'ingredient/edit', 'ingredient', NULL, 'IngredientController@edit', 'get', 1, '{id}', 1, 0, '1', '2021-10-12 21:36:46', '2021-10-12 21:36:46'),
(299, 'Ingredient delete', 'ingredient/delete', 'ingredient', NULL, 'IngredientController@delete', 'get', 1, '{id}', 1, 0, '1', '2021-10-12 21:37:25', '2021-10-12 21:37:25'),
(300, 'product Category Index', 'productcategory/index', 'productcategory', NULL, 'ProductCategoryController@index', 'get', 1, NULL, 1, 1, '0', '2021-10-12 22:22:58', '2021-10-12 22:22:58'),
(301, 'Product Category seacrh', 'productcategory/search', 'productcategory', NULL, 'ProductCategoryController@search', 'Post', 1, NULL, 1, 0, '1', '2021-10-12 22:23:57', '2021-10-12 22:23:57'),
(302, 'Product Category store', 'productcategory/store', 'productcategory', NULL, 'ProductCategoryController@store', 'Post', 1, NULL, 1, 0, '1', '2021-10-12 22:41:23', '2021-10-12 22:41:23'),
(303, 'Product Category edit', 'productcategory/edit', 'productcategory', NULL, 'ProductCategoryController@edit', 'get', 1, '{id}', 1, 0, '1', '2021-10-12 22:41:52', '2021-10-12 22:41:52'),
(304, 'Product Category update', 'productcategory/update', 'productcategory', NULL, 'ProductCategoryController@update', 'Post', 1, '{id}', 1, 0, '0', '2021-10-12 22:42:30', '2021-12-26 16:12:38'),
(305, 'Product Category delete', 'productcategory/delete', 'productcategory', NULL, 'ProductCategoryController@delete', 'get', 1, '{id}', 1, 0, '1', '2021-10-12 22:43:04', '2022-01-16 16:56:48'),
(307, 'Customer show', 'customer/show', 'customer', NULL, 'CustomerController@show', 'get', 1, '{id}', 1, 0, '1', '2021-10-14 03:34:18', '2021-10-14 03:39:27'),
(308, 'Expenses Category index', 'expenses/expenses_category_index', 'expenses', NULL, 'ExpensesController@expenses_category_index', 'get', 1, NULL, 1, 0, '1', '2021-10-14 04:23:16', '2021-10-14 04:23:16'),
(309, 'Expenses Category search', 'expenses/expenses_category_search', 'expenses', NULL, 'ExpensesController@expenses_category_search', 'Post', 1, NULL, 1, 0, '1', '2021-10-14 04:23:45', '2021-10-14 04:23:45'),
(310, 'Expenses Category store', 'expenses/expenses_category_store', 'expenses', NULL, 'ExpensesController@expenses_category_store', 'Post', 1, NULL, 1, 0, '1', '2021-10-14 04:24:09', '2021-10-14 04:24:09'),
(311, 'Expenses Category delete', 'expenses/expenses_category_delete', 'expenses', NULL, 'ExpensesController@expenses_category_delete', 'get', 1, '{id}', 1, 0, '1', '2021-10-14 04:24:35', '2021-10-14 04:24:35'),
(312, 'Expenses index', 'expenses/expenses_index', 'expenses', NULL, 'ExpensesController@expenses_index', 'get', 1, NULL, 1, 1, '0', '2021-10-14 04:34:47', '2021-10-14 04:34:47'),
(313, 'Expenses search', 'expenses/expenses_search', 'expenses', NULL, 'ExpensesController@expenses_search', 'Post', 1, NULL, 1, 0, '1', '2021-10-14 04:35:19', '2021-10-14 04:35:19'),
(314, 'Expenses store', 'expenses/expenses_store', 'expenses', NULL, 'ExpensesController@expenses_store', 'Post', 1, NULL, 1, 0, '1', '2021-10-14 04:35:47', '2021-10-14 04:35:47'),
(315, 'Expenses delete', 'expenses/expenses_delete', 'expenses', NULL, 'ExpensesController@expenses_delete', 'get', 1, '{id}', 1, 0, '1', '2021-10-14 04:36:13', '2021-10-14 04:36:13'),
(316, 'Create Sales', 'sales/create', 'sales_department', NULL, 'SalesController@create', 'get', 1, NULL, 1, 1, '0', '2021-11-18 06:12:02', '2021-11-18 06:12:02'),
(317, 'Customer Previous History Search', 'sales/customer_payment_history_search', 'sales_department', NULL, 'SalesController@customer_payment_history_search', 'Post', 1, NULL, 1, 0, '0', '2021-11-29 22:14:56', '2021-11-29 22:14:56'),
(318, 'sales details invoice', 'sales/sales_details_invoice', 'sales_department', NULL, 'SalesController@sales_details_invoice', 'get', 1, '{id}', 1, 0, '1', '2021-11-29 22:31:12', '2021-11-29 22:31:12'),
(319, 'Add Walk In customer', 'sales/add_walk_in_cuatomer', 'sales_department', NULL, 'SalesController@add_walk_in_cuatomer', 'Post', 1, NULL, 1, 0, '1', '2021-12-04 05:58:55', '2021-12-04 05:58:55'),
(320, 'Company Index', 'company/index', 'company', NULL, 'CompanyController@index', 'get', 1, NULL, 1, 1, '0', '2021-12-06 13:27:40', '2021-12-06 13:27:40'),
(321, 'Company Search', 'company/search', 'company', NULL, 'CompanyController@search', 'Post', 1, NULL, 1, 0, '1', '2021-12-06 13:28:43', '2021-12-06 13:28:43'),
(322, 'Company store', 'company/store', 'company', NULL, 'CompanyController@store', 'Post', 1, NULL, 1, 0, '1', '2021-12-06 13:29:32', '2021-12-06 13:29:32'),
(323, 'Company  delete', 'company/delete', 'company', NULL, 'CompanyController@delete', 'get', 1, '{id}', 1, 0, '1', '2021-12-06 13:30:35', '2021-12-06 13:30:35'),
(324, 'Customer View', 'customer/view', 'customer', NULL, 'CustomerController@view', 'get', 1, '{id}', 1, 0, '0', '2021-12-14 07:05:26', '2021-12-14 07:23:21'),
(325, 'Sales pay due Payment', 'sales/sales_due_payment', 'sales_department', NULL, 'SalesController@sales_due_payment', 'Post', 1, NULL, 1, 0, '1', '2021-12-19 17:07:56', '2021-12-19 17:07:56'),
(328, 'Show Invoice Payments History', 'sales/invoice_payment_history', 'sales_department', NULL, 'SalesController@invoice_payment_history', 'get', 1, '{id}', 1, 0, '1', '2021-12-20 14:32:43', '2021-12-20 14:32:43'),
(329, 'Customer manula due payment', 'customer/manual_due_payment', 'customer', NULL, 'CustomerController@manual_due_payment', 'Post', 1, NULL, 1, 0, '0', '2021-12-20 15:51:33', '2021-12-20 16:03:55'),
(330, 'Company Edit', 'company/edit_company', 'company', NULL, 'CompanyController@edit_company', 'get', 1, '{id}', 1, 0, '0', '2021-12-25 13:26:08', '2021-12-25 13:26:08'),
(331, 'company Update', 'company/company_update', 'company', NULL, 'CompanyController@company_update', 'Post', 1, '{id}', 1, 0, '0', '2021-12-25 13:27:03', '2021-12-25 13:27:03'),
(332, 'Profit Show', 'report/profit_show', 'Report', NULL, 'ProfitController@show', 'get', 1, NULL, 1, 1, '0', '2021-12-25 13:43:44', '2021-12-27 03:02:11'),
(333, 'Profit Search', 'report/profit_search', 'Report', NULL, 'ProfitController@search', 'Post', 1, NULL, 1, 0, '1', '2021-12-25 13:46:20', '2021-12-27 03:02:31'),
(334, 'product Edit', 'product/edit', 'product', NULL, 'ProductController@edit', 'get', 1, '{id}', 1, 0, '0', '2021-12-26 16:14:20', '2021-12-26 16:14:20'),
(335, 'Product Update', 'product/update', 'product', NULL, 'ProductController@update', 'Post', 1, '{id}', 1, 0, '0', '2021-12-26 16:15:00', '2021-12-26 16:15:00'),
(336, 'Sales Executive show', 'sales_executive/show', 'sales_executive', NULL, 'SalesExecutiveController@show', 'get', 1, NULL, 1, 1, '0', '2021-12-26 16:39:49', '2021-12-26 16:39:49'),
(337, 'Sales Executive shearch', 'sales_executive/search', 'sales_executive', NULL, 'SalesExecutiveController@search', 'Post', 1, NULL, 1, 0, '1', '2021-12-26 17:18:53', '2021-12-26 17:18:53'),
(338, 'Sales Executive add', 'sales_executive/add', 'sales_executive', NULL, 'SalesExecutiveController@add', 'get', 1, NULL, 1, 1, '0', '2021-12-26 17:25:04', '2021-12-26 17:25:04'),
(339, 'Sales Executive Delete', 'sales_executive/delete', 'sales_executive', NULL, 'SalesExecutiveController@delete', 'get', 1, '{id}', 1, 0, '0', '2021-12-26 17:26:11', '2021-12-26 17:26:11'),
(340, 'sales executive edit', 'sales_executive/edit', 'sales_executive', NULL, 'SalesExecutiveController@edit', 'get', 1, '{id}', 1, 0, '0', '2021-12-26 17:28:08', '2021-12-26 17:40:49'),
(341, 'Sales Executive Update', 'sales_executive/update', 'sales_executive', NULL, 'SalesExecutiveController@update', 'Post', 1, '{id}', 1, 0, '0', '2021-12-26 17:28:48', '2021-12-26 17:52:49'),
(342, 'Sales Executive Store', 'sales_executive/store', 'sales_executive', NULL, 'SalesExecutiveController@store', 'Post', 1, NULL, 1, 0, '0', '2021-12-26 17:43:21', '2021-12-26 17:43:21'),
(343, 'Sales Commision report', 'report/sales_commision_report', 'Report', NULL, 'ReportController@sales_commision_report', 'Post', 1, NULL, 1, 0, '1', '2021-12-26 18:24:47', '2021-12-26 18:24:47'),
(344, 'Sales Commision report show', 'report/sales_commision_report_show', 'Report', NULL, 'ReportController@sales_commision_report_show', 'get', 1, NULL, 1, 1, '0', '2021-12-26 18:25:18', '2021-12-26 18:25:18'),
(346, 'create work order party', 'workorder/create_workorder_party', 'workorder', NULL, 'WorkorderController@create_workorder_party', 'get', 1, NULL, 1, 1, '0', '2022-01-03 06:20:03', '2022-01-03 06:20:03'),
(347, 'Store Work Order party', 'workorder/store_workorder_party', 'workorder', NULL, 'WorkorderController@store_workorder_party', 'Post', 1, NULL, 1, 0, '0', '2022-01-03 06:20:46', '2022-01-03 06:20:46'),
(348, 'Edit Word Order Party', 'workorder/edit_workorder_party', 'workorder', NULL, 'WorkorderController@edit_workorder_party', 'get', 1, '{id}', 1, 0, '0', '2022-01-03 06:21:25', '2022-01-03 06:21:25'),
(349, 'Update Work Order party', 'workorder/update_workorder_party', 'workorder', NULL, 'WorkorderController@update_workorder_party', 'Post', 1, '{id}', 1, 0, '0', '2022-01-03 06:22:12', '2022-01-03 06:22:12'),
(350, 'Work order party search', 'workorder/search_workorder_party', 'workorder', NULL, 'WorkorderController@search_workorder_party', 'Post', 1, NULL, 1, 0, '1', '2022-01-05 02:29:35', '2022-01-05 02:29:35'),
(351, 'Delete Work Order party', 'workorder/delete_workorder_party', 'workorder', NULL, 'WorkorderController@delete_workorder_party', 'get', 1, '{id}', 1, 0, '1', '2022-01-05 02:35:55', '2022-01-05 02:35:55'),
(352, 'Create Work order', 'workorder/create_workorder', 'workorder', NULL, 'WorkorderController@create_workorder', 'get', 1, NULL, 1, 1, '0', '2022-01-05 02:46:46', '2022-01-05 02:46:46'),
(353, 'Store Work Order', 'workorder/store_workorder', 'workorder', NULL, 'WorkorderController@store_workorder', 'Post', 1, NULL, 1, 1, '0', '2022-01-05 02:49:57', '2022-01-05 02:49:57'),
(354, 'Work order index', 'workorder/index_workorder', 'workorder', NULL, 'WorkorderController@index_workorder', 'get', 1, NULL, 1, 1, '0', '2022-01-05 02:50:51', '2022-01-05 02:50:51'),
(355, 'Search Work Order', 'workorder/search_workorder', 'workorder', NULL, 'WorkorderController@search_workorder', 'Post', 1, NULL, 1, 0, '1', '2022-01-05 02:51:40', '2022-01-05 02:51:40'),
(356, 'Delete Work order', 'workorder/delete_workorder', 'workorder', NULL, 'WorkorderController@delete_workorder', 'get', 1, '{id}', 1, 0, '1', '2022-01-05 06:33:55', '2022-01-05 06:33:55'),
(357, 'Customer Details', 'sales/customer_details', 'sales_department', NULL, 'SalesController@customer_details', 'get', 1, '{id}', 1, 0, '1', '2022-01-12 04:00:34', '2022-01-12 04:00:34'),
(358, 'Show Account Summary', 'report/account_summary', 'Report', NULL, 'ReportController@account_summary', 'get', 1, NULL, 1, 1, '0', '2022-01-17 03:25:08', '2022-01-17 03:25:08'),
(359, 'Search Account Summary', 'report/search_account_summary', 'Report', NULL, 'ReportController@search_account_summary', 'Post', 1, NULL, 1, 0, '0', '2022-01-17 03:26:06', '2022-01-17 03:26:06'),
(360, 'purchase pdf generate', 'purchase/purchase_pdf_generate', 'purchase', NULL, 'purchaseController@purchase_pdf_generate', 'Post', 1, NULL, 1, 0, '0', '2022-02-09 20:50:38', '2022-02-09 20:50:38'),
(361, 'Sales history pdf generate', 'sales/sales_history_pdf_generate', 'sales_department', NULL, 'SalesController@sales_history_pdf_generate', 'Post', 1, NULL, 1, 0, '0', '2022-02-09 20:51:35', '2022-02-09 20:51:35'),
(362, 'Customer Sales invoice', 'customer/sales_payment_history_pdf', 'customer', NULL, 'CustomerController@sales_payment_history_pdf', 'get', 1, '{customer_id}', 1, 0, '0', '2022-02-09 20:53:34', '2022-02-09 20:54:30'),
(363, 'View Supplier', 'supplier/profile', 'supplier', NULL, 'supplierController@profile', 'get', 1, '{supplier_id}', 1, 0, '0', '2022-02-13 03:12:47', '2022-02-13 03:18:05'),
(364, 'Supplier purchase history generate', 'supplier/supplier_purchase_history_generate', 'Subscriber', NULL, 'supplierController@supplier_purchase_history_generate', 'get', 1, '{supplier_id}', 1, 0, '0', '2022-02-13 04:17:58', '2022-02-13 04:17:58'),
(365, 'Deposits and expenses report index', 'report/deposit_expense_report_index', 'Report', NULL, 'ReportController@deposit_expense_report_index', 'get', 1, NULL, 1, 1, '0', '2022-02-13 04:45:56', '2022-02-13 04:45:56'),
(366, 'Deposits and expenses report search', 'report/deposit_expense_report_search', 'Report', NULL, 'ReportController@deposit_expense_report_search', 'Post', 1, NULL, 1, 0, '1', '2022-02-13 04:47:16', '2022-02-13 04:47:16'),
(367, 'Profit Loss report generate', 'report/profit_loss_report_generate', 'Profit', NULL, 'ProfitController@profit_loss_report_generate', 'Post', 1, NULL, 1, 0, '0', '2022-02-13 06:43:51', '2022-02-13 06:43:51'),
(368, 'Show all opening Balance and closing balance', 'initalBalance/show_all_opening_and_closing_balance', 'InitialBalance', NULL, 'InitialBalanceController@show_all_opening_and_closing_balance', 'get', 1, NULL, 1, 1, '0', '2022-02-23 11:18:52', '2022-02-23 11:18:52'),
(369, 'Search All Opening and Closing Balance', 'initalBalance/search_all_opening_and_closing_balance', 'InitialBalance', NULL, 'InitialBalanceController@search_all_opening_and_closing_balance', 'Post', 1, NULL, 1, 0, '1', '2022-02-23 11:19:41', '2022-02-23 11:19:41'),
(370, 'Create Initial Balance', 'initalBalance/create_initial_balance', 'InitialBalance', NULL, 'InitialBalanceController@create_initial_balance', 'get', 1, NULL, 1, 1, '0', '2022-02-23 11:24:26', '2022-02-23 11:24:26'),
(371, 'Add Initial Balance', 'initalBalance/add_initial_balance', 'InitialBalance', NULL, 'InitialBalanceController@add_initial_balance', 'Post', 1, NULL, 1, 0, '0', '2022-02-23 11:25:17', '2022-02-23 11:25:17'),
(372, 'Create Purchase', 'purchase/create', 'purchase', NULL, 'purchaseController@create', 'get', 1, NULL, 1, 1, '0', '2022-03-06 04:48:41', '2022-03-06 05:14:01'),
(373, 'Purchase Payment', 'purchase/purchase_due_payment', 'purchase', NULL, 'purchaseController@purchase_due_payment', 'Post', 1, NULL, 1, 0, '1', '2022-03-07 06:03:25', '2022-03-07 06:03:25'),
(375, 'Asset store', 'asset/store_asset', 'AssetModel', NULL, 'AssetController@store', 'Post', 1, NULL, 1, 0, '1', '2022-03-08 05:59:54', '2022-03-08 05:59:54'),
(376, 'Asset Index', 'asset/index', 'AssetModel', NULL, 'AssetController@index', 'get', 1, NULL, 1, 1, '0', '2022-03-08 06:01:11', '2022-03-08 06:01:11'),
(377, 'Asset Search', 'asset/search', 'AssetModel', NULL, 'AssetController@search', 'Post', 1, NULL, 1, 0, '1', '2022-03-08 06:01:37', '2022-03-08 06:01:37'),
(378, 'Subscruber previous Due Payment', 'subscriber/previous_due_payment', 'Subscriber', NULL, 'supplierController@previous_due_payment', 'Post', 1, NULL, 1, 0, '0', '2022-03-10 06:37:48', '2022-03-10 06:37:48');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(11) NOT NULL,
  `expenses_category_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `Amount` varchar(255) DEFAULT NULL,
  `remarks` longtext DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expenses_category_id`, `name`, `balance`, `Amount`, `remarks`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'MIZAN DHALY', NULL, '6000', NULL, '107', '2022-02-19 11:58:29', '2022-02-19 11:58:29'),
(2, 1, 'CHOTO RIDOY', NULL, '7000', NULL, '107', '2022-02-19 11:59:11', '2022-02-19 11:59:11'),
(3, NULL, 'MAMUN MAMA', NULL, '1000', NULL, '107', '2022-02-19 11:59:45', '2022-02-19 11:59:45'),
(4, NULL, 'MONIR', NULL, '10000', NULL, '107', '2022-02-19 12:00:03', '2022-02-19 12:00:03'),
(5, 1, 'MAMUN MAMA', NULL, '1000', NULL, '107', '2022-02-19 12:01:32', '2022-02-19 12:01:32'),
(6, 1, 'MONIR', NULL, '10000', NULL, '107', '2022-02-19 12:01:52', '2022-02-19 12:01:52'),
(7, NULL, 'ROHIM MAMA', NULL, '1000', NULL, '107', '2022-02-19 12:02:10', '2022-02-19 12:02:10'),
(8, 2, 'ALAMIN', NULL, '290', NULL, '107', '2022-02-19 12:03:03', '2022-02-19 12:03:03'),
(9, 3, 'ALAMIN', NULL, '270', 'S S B KNITING', '107', '2022-02-19 12:04:33', '2022-02-19 12:04:33'),
(10, 1, 'SAKIL BHAI', NULL, '1500', NULL, '107', '2022-02-19 12:05:10', '2022-02-19 12:05:10'),
(11, 1, 'KOLIBOR MAMA', NULL, '1000', NULL, '107', '2022-02-19 12:05:48', '2022-02-19 12:05:48'),
(12, 4, 'ALAMIN', NULL, '900', 'AAGER HISHAB', '107', '2022-02-19 12:06:50', '2022-02-19 12:06:50'),
(13, 5, 'ALAMIN', NULL, '14000', 'KHADEM MAMA NIJ', '107', '2022-02-19 12:08:08', '2022-02-19 12:08:08'),
(14, 6, 'Myra Poole', NULL, '82', 'Ullam explicabo Qui', '92', '2022-03-08 11:59:25', '2022-03-08 11:59:25');

-- --------------------------------------------------------

--
-- Table structure for table `expenses_category`
--

CREATE TABLE `expenses_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expenses_category`
--

INSERT INTO `expenses_category` (`id`, `name`, `remark`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'SALARY', NULL, 107, '2022-02-19 11:57:51', '2022-02-19 11:57:51'),
(2, 'PARTY KHOROCH', NULL, 107, '2022-02-19 12:02:32', '2022-02-19 12:02:32'),
(3, 'MALER DELIVERY', 'S S B NITING', 107, '2022-02-19 12:03:55', '2022-02-19 12:03:55'),
(4, 'PARTY NASTA', 'AAGER HISHAB', 107, '2022-02-19 12:06:24', '2022-02-19 12:06:24'),
(5, 'KHADEM MAMA', 'NIJ', 107, '2022-02-19 12:07:21', '2022-02-19 12:07:21'),
(6, 'TEA BILL', NULL, 107, '2022-02-22 15:58:06', '2022-02-22 15:58:06'),
(7, 'LUNCH BILL', NULL, 107, '2022-02-22 15:58:25', '2022-02-22 15:58:25');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `initial_balance`
--

CREATE TABLE `initial_balance` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL,
  `opening_balance` decimal(20,0) DEFAULT NULL,
  `closing_balance` decimal(20,0) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT '0=not edited , 1 = edited ',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `initial_balance`
--

INSERT INTO `initial_balance` (`id`, `date`, `opening_balance`, `closing_balance`, `status`, `created_at`, `updated_at`) VALUES
(1, '2022-02-23', '0', '0', '1', '2022-02-22 04:32:09', '2022-02-24 08:39:25'),
(12, '2022-02-24', '227400', '227400', '1', '2022-02-24 08:39:25', '2022-02-25 06:00:05'),
(13, '2022-02-25', '227400', '227400', '1', '2022-02-25 06:00:05', '2022-02-25 06:00:05'),
(14, '2022-02-26', '227400', '-2471670', '1', '2022-02-25 06:00:05', '2022-02-27 06:00:06'),
(15, '2022-02-26', '227400', NULL, '0', '2022-02-26 06:00:07', '2022-02-26 06:00:07'),
(16, '2022-02-27', '-2471670', '-4692545', '1', '2022-02-27 06:00:07', '2022-02-28 06:00:06'),
(17, '2022-02-28', '-4692545', '-117921435', '1', '2022-02-28 06:00:06', '2022-03-01 06:00:08'),
(18, '2022-03-01', '-117921435', '-163916257', '1', '2022-03-01 06:00:08', '2022-03-02 06:00:07'),
(19, '2022-03-02', '28522', '-999841', '1', '2022-03-02 06:00:07', '2022-03-03 06:00:07'),
(20, '2022-03-03', '-999841', NULL, '1', '2022-03-03 06:00:07', '2022-03-03 10:07:31'),
(21, '2022-03-06', '-999841', '-999841', '1', '2022-03-03 06:00:07', '2022-03-07 10:18:01'),
(22, '2022-03-07', '-999841', '-1002385', '1', '2022-03-07 10:18:01', '2022-03-08 10:52:53'),
(23, '2022-03-08', '-1002385', '-1002385', '0', '2022-03-08 10:52:53', '2022-03-09 21:46:22'),
(24, '2022-03-09', '500', '-1499', '1', '2022-03-09 21:46:22', '2022-03-10 00:02:51'),
(25, '2022-03-10', '500', NULL, '1', '2022-03-10 00:02:51', '2022-03-10 00:03:00'),
(26, '2022-03-10', '-1499', NULL, '0', '2022-03-10 10:39:40', '2022-03-10 10:39:40');

-- --------------------------------------------------------

--
-- Table structure for table `master_menu`
--

CREATE TABLE `master_menu` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_name` varchar(100) NOT NULL,
  `menu_name_bn` varchar(100) NOT NULL,
  `menu_parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `menu_is_active` int(11) DEFAULT NULL,
  `menu_icon_class` varchar(100) DEFAULT NULL,
  `menu_dynamic_route_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `master_menu`
--

INSERT INTO `master_menu` (`id`, `menu_name`, `menu_name_bn`, `menu_parent_id`, `menu_is_active`, `menu_icon_class`, `menu_dynamic_route_id`, `created_at`, `updated_at`, `created_by`, `updated_by`) VALUES
(1, 'Dashboard', 'ড্যাশবোর্ড', NULL, 1, 'ik-home', 1, '2021-12-20 19:59:50', '2021-12-20 19:59:50', 1, 92),
(5, 'All product', 'All product', 22, 1, NULL, 257, '2021-10-14 02:53:04', '2021-10-04 15:27:19', 92, NULL),
(20, 'Product Category', 'Product Category', 22, 1, 'ik-grid', 300, '2022-02-10 03:59:53', '2022-02-10 09:59:53', 92, 92),
(21, 'product Ingreadients', 'product Ingreadients', 22, 1, 'ik-droplet', 295, '2022-02-10 03:59:59', '2022-02-10 09:59:59', 92, 92),
(22, 'Products', 'Products', NULL, 1, 'ik-layers', NULL, '2021-10-14 02:53:01', '2021-10-04 06:35:22', 92, NULL),
(23, 'Purchase', 'Purchase', NULL, 1, 'ik-check-square', 287, '2021-10-14 02:53:19', '2021-10-13 18:17:09', 92, NULL),
(24, 'Stock', 'Stock Department', NULL, 1, 'ik-layout', 266, '2022-01-12 03:39:05', '2022-01-12 03:39:05', 92, 92),
(25, 'Sales', 'Sales department', NULL, 1, 'ik-codepen', NULL, '2022-01-12 03:39:20', '2022-01-12 03:39:20', 92, 92),
(26, 'Customers', 'Customers', 82, 1, 'ik-user', 274, '2022-02-10 04:00:21', '2022-02-10 10:00:21', 92, 92),
(27, 'suppliers', 'suppliers', 82, 1, 'ik-users', 280, '2022-02-10 04:00:28', '2022-02-10 10:00:28', 92, 92),
(47, 'Create product', 'Create product', 22, 1, NULL, 254, '2021-10-14 02:53:10', '2021-10-04 15:26:49', 92, NULL),
(54, 'খরচ', 'খরচ', NULL, 1, 'ik-dollar-sign', NULL, '2022-03-08 04:54:57', '2022-03-08 04:54:57', 92, 92),
(55, 'খরচ ক্যাটাগরি', 'খরচ ক্যাটাগরি', 54, 1, NULL, 308, '2022-03-08 04:55:04', '2022-03-08 04:55:04', 92, 92),
(56, 'সকল খরচ', 'সকল খরচ', 54, 1, NULL, 312, '2022-03-08 04:55:30', '2022-03-08 04:55:30', 92, 92),
(57, 'All Sales', 'All Sales', 25, 1, NULL, 260, '2021-11-18 06:10:49', '2021-11-18 06:10:49', 92, NULL),
(58, 'New Sales', 'Create Sales', 25, 1, NULL, 316, '2021-11-18 06:16:21', '2021-11-18 06:16:21', 92, 92),
(60, 'Company', 'Company', NULL, 1, 'ik-external-link', NULL, '2021-12-06 13:38:48', '2021-12-06 13:38:48', 92, 92),
(61, 'All Company', 'All Company', 60, 1, NULL, 320, '2021-12-06 13:37:43', '2021-12-06 13:37:43', 92, NULL),
(66, 'Report', 'Report', NULL, 1, 'ik-trending-up', NULL, '2021-12-25 14:00:58', '2021-12-25 14:00:58', 92, 92),
(67, 'Profit  Loss Report', 'Profit  Loss Report', 66, 1, NULL, 332, '2021-12-25 13:58:48', '2021-12-25 13:58:48', 92, NULL),
(68, 'Employe details', 'Employe details', NULL, 1, 'ik-users', NULL, '2022-01-12 03:40:38', '2022-01-12 03:40:38', 92, 92),
(69, 'All Employe', 'All Employe', 68, 1, NULL, 336, '2022-01-12 03:41:24', '2022-01-12 03:41:24', 92, 92),
(70, 'Create Employe', 'Create Employe', 68, 1, NULL, 338, '2022-01-12 03:41:36', '2022-01-12 03:41:36', 92, 92),
(71, 'Sales Commission', 'Sales Commission', 66, 1, NULL, 344, '2021-12-26 18:27:00', '2021-12-26 18:27:00', 92, NULL),
(72, 'Work Order', 'Work Order', NULL, 1, 'ik-edit-1', NULL, '2022-01-03 06:29:06', '2022-01-03 06:29:06', 92, 92),
(73, 'Work Order party', 'Work Order party', 72, 1, NULL, 346, '2022-01-03 06:27:10', '2022-01-03 06:27:10', 92, NULL),
(75, 'Create Work Order', 'Create Work Order', 72, 1, NULL, 352, '2022-01-05 02:52:31', '2022-01-05 02:52:31', 92, NULL),
(76, 'All work order', 'All work order', 72, 1, NULL, 354, '2022-01-05 05:57:51', '2022-01-05 05:57:51', 92, NULL),
(81, 'Account Summary', 'Account Summary', 66, 1, NULL, 358, '2022-01-17 03:27:35', '2022-01-17 03:27:35', 92, NULL),
(82, 'peoples', 'peoples', NULL, 1, 'ik-users', 274, '2022-02-10 09:58:50', '2022-02-10 09:58:50', 92, NULL),
(83, 'জমা ও খরচ', 'Deposits and expenses', 66, 1, NULL, 365, '2022-02-13 04:48:37', '2022-02-13 04:48:37', 92, NULL),
(84, 'Initial Balance', 'Initial Balance', NULL, 1, 'ik-bold', 370, '2022-02-23 11:26:42', '2022-02-23 11:26:42', 92, NULL),
(85, 'Daily initial Balance', 'Daily initial Balance', 84, 1, NULL, 368, '2022-02-23 11:27:30', '2022-02-23 11:27:30', 92, NULL),
(86, 'Create Initial Balance', 'Create Initial Balance', 84, 1, NULL, 370, '2022-02-23 11:27:55', '2022-02-23 11:27:55', 92, NULL),
(87, 'New Purchase', 'New Purchase', 23, 1, NULL, 372, '2022-03-06 04:49:26', '2022-03-06 04:49:26', 92, NULL),
(88, 'All Purchase', 'All Purchase', 23, 1, NULL, 287, '2022-03-06 04:49:52', '2022-03-06 04:49:52', 92, NULL),
(89, 'জমা', 'জমা', NULL, 1, NULL, 376, '2022-03-08 06:37:41', '2022-03-08 06:37:41', 92, NULL),
(90, 'জমা ক্যাটাগরি', 'জমা ক্যাটাগরি', 89, 1, NULL, 308, '2022-03-08 06:39:04', '2022-03-08 06:39:04', 92, NULL),
(91, 'সকল জমা', 'সকল জমা', 89, 1, NULL, 376, '2022-03-08 06:39:46', '2022-03-08 06:39:46', 92, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_12_26_222650_create_sales_executive_models_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `permission_roles`
--

CREATE TABLE `permission_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `dynamic_route_id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `permission_roles`
--

INSERT INTO `permission_roles` (`id`, `role_id`, `dynamic_route_id`, `url`, `created_at`, `updated_at`) VALUES
(6978, 14, 1, 'adminDashboard', '2021-03-25 05:12:19', '2021-03-25 05:12:19'),
(6979, 14, 91, 'admin/change_password', '2021-03-25 05:12:19', '2021-03-25 05:12:19'),
(6980, 14, 92, 'admin/save_change_password', '2021-03-25 05:12:19', '2021-03-25 05:12:19'),
(10432, 17, 1, 'adminDashboard', '2021-06-10 07:09:52', '2021-06-10 07:09:52'),
(10433, 17, 91, 'admin/change_password', '2021-06-10 07:09:52', '2021-06-10 07:09:52'),
(10434, 17, 92, 'admin/save_change_password', '2021-06-10 07:09:52', '2021-06-10 07:09:52'),
(10467, 16, 1, 'adminDashboard', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(10468, 16, 91, 'admin/change_password', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(10469, 16, 92, 'admin/save_change_password', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(10470, 16, 9, 'all_user', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(10471, 16, 93, 'edit_user', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(10472, 16, 94, 'upadte_user', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(10473, 16, 95, 'suspend_user', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(10474, 16, 96, 'unsuspend_user', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(10475, 16, 130, 'test', '2021-06-24 06:43:48', '2021-06-24 06:43:48'),
(16366, 18, 1, 'adminDashboard', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(16367, 18, 91, 'admin/change_password', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(16368, 18, 92, 'admin/save_change_password', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(16369, 18, 260, 'sales/show_sales_department', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(16370, 18, 261, 'sales/get_sales_department_data', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(16371, 18, 262, 'sales/store_sales_department_data', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(16372, 18, 263, 'sales/edit_sales_department_data', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(16373, 18, 264, 'sales/update_sales_department_data', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(16374, 18, 265, 'sales/delete_sales_department_data', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(16375, 18, 273, 'sales/sales_department_invoice', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(16376, 18, 316, 'sales/create', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(16377, 18, 317, 'sales/customer_payment_history_search', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(16378, 18, 318, 'sales/sales_details_invoice', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(16379, 18, 319, 'sales/add_walk_in_cuatomer', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(16380, 18, 325, 'sales/sales_due_payment', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(16381, 18, 328, 'sales/invoice_payment_history', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(17410, 19, 1, 'adminDashboard', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17411, 19, 91, 'admin/change_password', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17412, 19, 92, 'admin/save_change_password', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17413, 19, 254, 'product/craete', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17414, 19, 255, 'product/store', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17415, 19, 256, 'product/alldata', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17416, 19, 257, 'product/index', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17417, 19, 258, 'product/view', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17418, 19, 286, 'product/ingredients', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17419, 19, 266, 'Department/show_lot_department', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17420, 19, 267, 'Department/search', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17421, 19, 268, 'Department/store_lot_department_data', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17422, 19, 272, 'Department/show_single_lot_department_data', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17423, 19, 280, 'supplier/index', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17424, 19, 281, 'supplier/search', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17425, 19, 282, 'supplier/store', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17426, 19, 293, 'supplier/show', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17427, 19, 287, 'purchase/index', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17428, 19, 288, 'purchase/search', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17429, 19, 289, 'purchase/store', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17430, 19, 294, 'purchase/show', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17431, 19, 300, 'productcategory/index', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17432, 19, 301, 'productcategory/search', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17433, 19, 302, 'productcategory/store', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17434, 19, 320, 'company/index', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17435, 19, 321, 'company/search', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(17436, 19, 322, 'company/store', '2022-02-05 17:13:30', '2022-02-05 17:13:30'),
(18875, 12, 1, 'adminDashboard', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18876, 12, 91, 'admin/change_password', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18877, 12, 92, 'admin/save_change_password', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18878, 12, 254, 'product/craete', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18879, 12, 255, 'product/store', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18880, 12, 256, 'product/alldata', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18881, 12, 257, 'product/index', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18882, 12, 258, 'product/view', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18883, 12, 259, 'product/delete', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18884, 12, 286, 'product/ingredients', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18885, 12, 334, 'product/edit', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18886, 12, 335, 'product/update', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18887, 12, 260, 'sales/show_sales_department', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18888, 12, 261, 'sales/get_sales_department_data', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18889, 12, 262, 'sales/store_sales_department_data', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18890, 12, 263, 'sales/edit_sales_department_data', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18891, 12, 264, 'sales/update_sales_department_data', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18892, 12, 273, 'sales/sales_department_invoice', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18893, 12, 316, 'sales/create', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18894, 12, 317, 'sales/customer_payment_history_search', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18895, 12, 318, 'sales/sales_details_invoice', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18896, 12, 319, 'sales/add_walk_in_cuatomer', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18897, 12, 325, 'sales/sales_due_payment', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18898, 12, 328, 'sales/invoice_payment_history', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18899, 12, 357, 'sales/customer_details', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18900, 12, 361, 'sales/sales_history_pdf_generate', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18901, 12, 266, 'Department/show_lot_department', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18902, 12, 267, 'Department/search', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18903, 12, 268, 'Department/store_lot_department_data', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18904, 12, 270, 'Department/edit_lot_department_data', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18905, 12, 271, 'Department/update_lot_department_data', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18906, 12, 272, 'Department/show_single_lot_department_data', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18907, 12, 274, 'customer/all_customer', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18908, 12, 275, 'customer/search', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18909, 12, 276, 'customer/store', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18910, 12, 277, 'customer/edit', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18911, 12, 278, 'customer/update', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18912, 12, 307, 'customer/show', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18913, 12, 324, 'customer/view', '2022-02-24 09:44:42', '2022-02-24 09:44:42'),
(18914, 12, 329, 'customer/manual_due_payment', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18915, 12, 362, 'customer/sales_payment_history_pdf', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18916, 12, 280, 'supplier/index', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18917, 12, 281, 'supplier/search', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18918, 12, 282, 'supplier/store', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18919, 12, 283, 'supplier/edit', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18920, 12, 284, 'supplier/update', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18921, 12, 293, 'supplier/show', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18922, 12, 363, 'supplier/profile', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18923, 12, 287, 'purchase/index', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18924, 12, 288, 'purchase/search', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18925, 12, 289, 'purchase/store', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18926, 12, 290, 'purchase/edit', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18927, 12, 291, 'purchase/update', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18928, 12, 294, 'purchase/show', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18929, 12, 360, 'purchase/purchase_pdf_generate', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18930, 12, 295, 'ingredient/index', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18931, 12, 296, 'ingredient/search', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18932, 12, 297, 'ingredient/store', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18933, 12, 298, 'ingredient/edit', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18934, 12, 300, 'productcategory/index', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18935, 12, 301, 'productcategory/search', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18936, 12, 302, 'productcategory/store', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18937, 12, 303, 'productcategory/edit', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18938, 12, 304, 'productcategory/update', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18939, 12, 308, 'expenses/expenses_category_index', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18940, 12, 309, 'expenses/expenses_category_search', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18941, 12, 310, 'expenses/expenses_category_store', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18942, 12, 311, 'expenses/expenses_category_delete', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18943, 12, 312, 'expenses/expenses_index', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18944, 12, 313, 'expenses/expenses_search', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18945, 12, 314, 'expenses/expenses_store', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18946, 12, 320, 'company/index', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18947, 12, 321, 'company/search', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18948, 12, 322, 'company/store', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18949, 12, 330, 'company/edit_company', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18950, 12, 331, 'company/company_update', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18951, 12, 332, 'report/profit_show', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18952, 12, 333, 'report/profit_search', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18953, 12, 343, 'report/sales_commision_report', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18954, 12, 344, 'report/sales_commision_report_show', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18955, 12, 358, 'report/account_summary', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18956, 12, 359, 'report/search_account_summary', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18957, 12, 365, 'report/deposit_expense_report_index', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18958, 12, 366, 'report/deposit_expense_report_search', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18959, 12, 336, 'sales_executive/show', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18960, 12, 337, 'sales_executive/search', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18961, 12, 338, 'sales_executive/add', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18962, 12, 340, 'sales_executive/edit', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18963, 12, 341, 'sales_executive/update', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18964, 12, 342, 'sales_executive/store', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18965, 12, 346, 'workorder/create_workorder_party', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18966, 12, 347, 'workorder/store_workorder_party', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18967, 12, 348, 'workorder/edit_workorder_party', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18968, 12, 349, 'workorder/update_workorder_party', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18969, 12, 350, 'workorder/search_workorder_party', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18970, 12, 352, 'workorder/create_workorder', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18971, 12, 353, 'workorder/store_workorder', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18972, 12, 354, 'workorder/index_workorder', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18973, 12, 355, 'workorder/search_workorder', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18974, 12, 364, 'supplier/supplier_purchase_history_generate', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18975, 12, 367, 'report/profit_loss_report_generate', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18976, 12, 368, 'initalBalance/show_all_opening_and_closing_balance', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18977, 12, 369, 'initalBalance/search_all_opening_and_closing_balance', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18978, 12, 370, 'initalBalance/create_initial_balance', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(18979, 12, 371, 'initalBalance/add_initial_balance', '2022-02-24 09:44:43', '2022-02-24 09:44:43'),
(19414, 11, 1, 'adminDashboard', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19415, 11, 91, 'admin/change_password', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19416, 11, 92, 'admin/save_change_password', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19417, 11, 3, 'dynamic_route', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19418, 11, 4, 'dynamic_route', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19419, 11, 14, 'delete_route', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19420, 11, 16, 'edit_route', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19421, 11, 19, 'update_route', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19422, 11, 5, 'role/all_role', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19423, 11, 6, 'role/add_role', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19424, 11, 8, 'save_role', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19425, 11, 11, 'edit_role', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19426, 11, 12, 'update_role', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19427, 11, 13, 'delete_role', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19428, 11, 9, 'all_user', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19429, 11, 10, 'save_user', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19430, 11, 93, 'edit_user', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19431, 11, 94, 'upadte_user', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19432, 11, 95, 'suspend_user', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19433, 11, 96, 'unsuspend_user', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19434, 11, 127, 'delete_user', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19435, 11, 130, 'test', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19436, 11, 131, 'menu/menu_create', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19437, 11, 133, 'menu/menu_save', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19438, 11, 134, 'menu/all_menu', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19439, 11, 135, 'menu/menu_search', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19440, 11, 138, 'menu/edit_menu', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19441, 11, 139, 'menu/update_menu', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19442, 11, 254, 'product/craete', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19443, 11, 255, 'product/store', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19444, 11, 256, 'product/alldata', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19445, 11, 257, 'product/index', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19446, 11, 258, 'product/view', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19447, 11, 259, 'product/delete', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19448, 11, 286, 'product/ingredients', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19449, 11, 334, 'product/edit', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19450, 11, 335, 'product/update', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19451, 11, 260, 'sales/show_sales_department', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19452, 11, 261, 'sales/get_sales_department_data', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19453, 11, 262, 'sales/store_sales_department_data', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19454, 11, 263, 'sales/edit_sales_department_data', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19455, 11, 264, 'sales/update_sales_department_data', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19456, 11, 265, 'sales/delete_sales_department_data', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19457, 11, 273, 'sales/sales_department_invoice', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19458, 11, 316, 'sales/create', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19459, 11, 317, 'sales/customer_payment_history_search', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19460, 11, 318, 'sales/sales_details_invoice', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19461, 11, 319, 'sales/add_walk_in_cuatomer', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19462, 11, 325, 'sales/sales_due_payment', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19463, 11, 328, 'sales/invoice_payment_history', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19464, 11, 357, 'sales/customer_details', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19465, 11, 361, 'sales/sales_history_pdf_generate', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19466, 11, 266, 'Department/show_lot_department', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19467, 11, 267, 'Department/search', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19468, 11, 268, 'Department/store_lot_department_data', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19469, 11, 269, 'Department/delete_lot_department_data', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19470, 11, 270, 'Department/edit_lot_department_data', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19471, 11, 271, 'Department/update_lot_department_data', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19472, 11, 272, 'Department/show_single_lot_department_data', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19473, 11, 274, 'customer/all_customer', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19474, 11, 275, 'customer/search', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19475, 11, 276, 'customer/store', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19476, 11, 277, 'customer/edit', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19477, 11, 278, 'customer/update', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19478, 11, 279, 'customer/delete', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19479, 11, 307, 'customer/show', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19480, 11, 324, 'customer/view', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19481, 11, 329, 'customer/manual_due_payment', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19482, 11, 362, 'customer/sales_payment_history_pdf', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19483, 11, 280, 'supplier/index', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19484, 11, 281, 'supplier/search', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19485, 11, 282, 'supplier/store', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19486, 11, 283, 'supplier/edit', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19487, 11, 284, 'supplier/update', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19488, 11, 285, 'supplier/delete', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19489, 11, 293, 'supplier/show', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19490, 11, 363, 'supplier/profile', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19491, 11, 287, 'purchase/index', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19492, 11, 288, 'purchase/search', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19493, 11, 289, 'purchase/store', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19494, 11, 290, 'purchase/edit', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19495, 11, 291, 'purchase/update', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19496, 11, 292, 'purchase/delete', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19497, 11, 294, 'purchase/show', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19498, 11, 360, 'purchase/purchase_pdf_generate', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19499, 11, 372, 'purchase/create', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19500, 11, 373, 'purchase/purchase_due_payment', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19501, 11, 295, 'ingredient/index', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19502, 11, 296, 'ingredient/search', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19503, 11, 297, 'ingredient/store', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19504, 11, 298, 'ingredient/edit', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19505, 11, 299, 'ingredient/delete', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19506, 11, 300, 'productcategory/index', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19507, 11, 301, 'productcategory/search', '2022-03-10 06:42:16', '2022-03-10 06:42:16'),
(19508, 11, 302, 'productcategory/store', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19509, 11, 303, 'productcategory/edit', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19510, 11, 304, 'productcategory/update', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19511, 11, 305, 'productcategory/delete', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19512, 11, 308, 'expenses/expenses_category_index', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19513, 11, 309, 'expenses/expenses_category_search', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19514, 11, 310, 'expenses/expenses_category_store', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19515, 11, 311, 'expenses/expenses_category_delete', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19516, 11, 312, 'expenses/expenses_index', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19517, 11, 313, 'expenses/expenses_search', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19518, 11, 314, 'expenses/expenses_store', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19519, 11, 315, 'expenses/expenses_delete', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19520, 11, 320, 'company/index', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19521, 11, 321, 'company/search', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19522, 11, 322, 'company/store', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19523, 11, 323, 'company/delete', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19524, 11, 330, 'company/edit_company', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19525, 11, 331, 'company/company_update', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19526, 11, 332, 'report/profit_show', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19527, 11, 333, 'report/profit_search', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19528, 11, 343, 'report/sales_commision_report', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19529, 11, 344, 'report/sales_commision_report_show', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19530, 11, 358, 'report/account_summary', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19531, 11, 359, 'report/search_account_summary', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19532, 11, 365, 'report/deposit_expense_report_index', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19533, 11, 366, 'report/deposit_expense_report_search', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19534, 11, 336, 'sales_executive/show', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19535, 11, 337, 'sales_executive/search', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19536, 11, 338, 'sales_executive/add', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19537, 11, 339, 'sales_executive/delete', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19538, 11, 340, 'sales_executive/edit', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19539, 11, 341, 'sales_executive/update', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19540, 11, 342, 'sales_executive/store', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19541, 11, 346, 'workorder/create_workorder_party', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19542, 11, 347, 'workorder/store_workorder_party', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19543, 11, 348, 'workorder/edit_workorder_party', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19544, 11, 349, 'workorder/update_workorder_party', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19545, 11, 350, 'workorder/search_workorder_party', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19546, 11, 351, 'workorder/delete_workorder_party', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19547, 11, 352, 'workorder/create_workorder', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19548, 11, 353, 'workorder/store_workorder', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19549, 11, 354, 'workorder/index_workorder', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19550, 11, 355, 'workorder/search_workorder', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19551, 11, 356, 'workorder/delete_workorder', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19552, 11, 364, 'supplier/supplier_purchase_history_generate', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19553, 11, 378, 'subscriber/previous_due_payment', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19554, 11, 367, 'report/profit_loss_report_generate', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19555, 11, 368, 'initalBalance/show_all_opening_and_closing_balance', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19556, 11, 369, 'initalBalance/search_all_opening_and_closing_balance', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19557, 11, 370, 'initalBalance/create_initial_balance', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19558, 11, 371, 'initalBalance/add_initial_balance', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19559, 11, 375, 'asset/store_asset', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19560, 11, 376, 'asset/index', '2022-03-10 06:42:17', '2022-03-10 06:42:17'),
(19561, 11, 377, 'asset/search', '2022-03-10 06:42:17', '2022-03-10 06:42:17');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `chalan_no` varchar(255) DEFAULT NULL,
  `chalan_no_2` varchar(255) DEFAULT NULL,
  `party_name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `unit_price` varchar(255) DEFAULT NULL,
  `color_name` varchar(255) DEFAULT NULL,
  `open_tube` varchar(255) DEFAULT NULL,
  `sl_no` varchar(255) DEFAULT NULL,
  `ggsm` varchar(255) DEFAULT NULL,
  `yarn_count` varchar(255) DEFAULT NULL,
  `yarn_lot_no` varchar(255) DEFAULT NULL,
  `fb_rv_date` datetime DEFAULT NULL,
  `batch_process_date` datetime DEFAULT NULL,
  `lot_no` varchar(255) DEFAULT NULL,
  `batch_no` varchar(255) DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `style_no` varchar(255) DEFAULT NULL,
  `finish_gsm` varchar(255) DEFAULT NULL,
  `fabric_type` varchar(255) DEFAULT NULL,
  `card_no` varchar(255) DEFAULT NULL,
  `roll` varchar(255) DEFAULT NULL,
  `dia` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_category_id`, `chalan_no`, `chalan_no_2`, `party_name`, `quantity`, `unit_price`, `color_name`, `open_tube`, `sl_no`, `ggsm`, `yarn_count`, `yarn_lot_no`, `fb_rv_date`, `batch_process_date`, `lot_no`, `batch_no`, `order_no`, `style_no`, `finish_gsm`, `fabric_type`, `card_no`, `roll`, `dia`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'COTTON FINE FABRICS', '346', 'MIZANUR RAHMAN', '11226', NULL, 'AVERAGE', 'OPEN', NULL, '240', NULL, NULL, '2022-02-12 00:00:00', '2022-02-12 00:00:00', NULL, NULL, NULL, NULL, '240', 'S/J', '586867729', '800', '34', NULL, '2022-02-19 12:27:36', '2022-02-19 12:29:10'),
(2, 1, 'AVERAGE COLOUR POLYSTAR MICO FABRICS', '2004', 'MD ELIAS HOSSAIN', '361.30', NULL, 'AVERAGE', 'OPEN', NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '250', 'S/J', '1819430039', '500', '34', NULL, '2022-02-19 12:40:28', '2022-02-27 15:01:47'),
(3, 1, 'BLAZZER CHEQUE PIN COMBOL', '52', 'MD ALAMIN HOSSAIN', '8841.40', NULL, 'AVERAGE', 'OPEN', NULL, '260', NULL, NULL, '2021-12-18 00:00:00', '2021-12-18 00:00:00', NULL, NULL, NULL, NULL, '260', 'BLEEZER', '873206511', '178', '36', NULL, '2022-02-19 14:58:04', '2022-02-19 15:01:04'),
(4, 1, 'T-Shart', '1111', 'na', '100', NULL, 'gray', NULL, NULL, '11', '11', '112', '2022-02-23 00:00:00', '2022-02-23 00:00:00', NULL, NULL, '500', NULL, NULL, 'Cotton', '245420442', '10', '90', NULL, '2022-02-23 15:43:38', '2022-02-23 15:44:42'),
(5, 1, '2 SIDE BLEZAR PRINT FABRICS AVERAGE COLOUR', NULL, 'MD. ALA AMIN MAMA', '8841.40', NULL, 'AVERAGE', 'OPEN', NULL, '260', NULL, NULL, '2021-12-20 00:00:00', NULL, NULL, NULL, NULL, NULL, '260', '2 SIDE BRUSH', '1531791112', NULL, '72', NULL, '2022-02-26 13:25:31', '2022-02-26 13:30:55'),
(6, 1, 'BRIGHT POLYSTAR FABRICS', '5903', 'HUMAYUN SIR', '401.50', NULL, 'WHITE', 'OPEN', NULL, '240', NULL, NULL, '2022-01-18 00:00:00', '2022-01-18 00:00:00', NULL, NULL, NULL, NULL, '240', 'S/J', '1610116258', '25', '30', NULL, '2022-02-27 12:00:31', '2022-02-27 12:07:53'),
(7, 1, 'BRIGHT POLYSTAR FABRICS', '5903', 'MD ELIAS HOSSAIN', NULL, NULL, 'WHITE', 'OPEN', NULL, '240', NULL, NULL, '2022-01-18 00:00:00', '2022-01-18 00:00:00', NULL, NULL, NULL, NULL, '240', 'S/J', '997546201', '25', '240', NULL, '2022-02-27 12:06:15', '2022-02-27 12:06:15'),
(8, 1, 'BRIGHT POLYSTAR COLOURING', '1561', 'MD ELIAS HOSSAIN', '416.60', NULL, 'AVERAGE', 'OPEN', NULL, '240', NULL, NULL, '2022-01-18 00:00:00', '2022-01-18 00:00:00', NULL, NULL, NULL, NULL, '240', 'S/J', '362360752', '25', '240', NULL, '2022-02-27 12:13:35', '2022-02-27 12:14:21'),
(9, 1, 'BLACK+ NAVY MASH FABRICS', '8079+6156', 'MD ELIAS HOSSAIN', '592.05', NULL, 'AVERAGE', 'OPEN', NULL, '240', NULL, NULL, '2022-02-06 00:00:00', '2022-02-06 00:00:00', NULL, NULL, NULL, NULL, '240', 'S/J', '1290013273', '30', '240', NULL, '2022-02-27 12:21:51', '2022-02-27 12:23:03'),
(10, 1, 'AVAREZ TARRY FABRICS', NULL, 'SHAWON', '30000', NULL, 'AVERAGE', 'OPEN', NULL, '160', NULL, NULL, '2022-02-27 00:00:00', '2022-02-10 00:00:00', NULL, NULL, NULL, NULL, '160', 'TERRY', '471851984', '100', NULL, NULL, '2022-02-27 12:29:54', '2022-02-27 12:33:23'),
(11, 1, 'AVERAGE FLEECE FABRICS', '105', 'MD. RAZIB', '40000', NULL, 'NAVY', 'OPEN', NULL, '220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '220', 'FLEECE', '1626132125', '1500', '72', NULL, '2022-02-27 12:47:53', '2022-03-01 16:07:27'),
(12, 1, 'AVERAGE COTTON S/J', '106', 'MD . RAZIB', '20000', NULL, 'NAVY', 'OPEN', NULL, '260', NULL, NULL, '2022-01-05 00:00:00', '2022-01-28 00:00:00', NULL, NULL, NULL, NULL, '260', 'AVERAGE COTTON S/J', '1179191586', '1000', '72', NULL, '2022-02-27 14:33:25', '2022-03-01 16:08:58'),
(13, 1, 'AVERAVE LYECRA  S/J', '107', 'MD BIPUL RHAMAN', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-10 00:00:00', '2022-02-16 00:00:00', NULL, NULL, NULL, NULL, NULL, 'LYECRA S/J', '221117491', '1300', '72', NULL, '2022-02-28 15:42:44', '2022-03-01 12:58:28'),
(14, 1, 'AVARAVE LYECRA  S/J', '107', 'MD BIPUL RHAMAN', '2000', NULL, 'AVARECS RABRICS', NULL, NULL, NULL, NULL, NULL, '2022-02-03 00:00:00', '2022-02-16 00:00:00', NULL, NULL, NULL, NULL, NULL, 'LYECRA S/J', '743062399', '1300', '72', NULL, '2022-02-28 15:43:53', '2022-03-01 12:57:10'),
(15, 1, 'SLUB COTTON FINE', '108', 'MD. RAZIB', '700', NULL, 'AVARECS RABRICS', 'OPEN', NULL, NULL, NULL, NULL, '2022-02-04 00:00:00', '2022-02-03 00:00:00', NULL, NULL, NULL, NULL, NULL, 'SLUB CTTON FINE', '1354275450', '100', NULL, NULL, '2022-02-28 15:53:49', '2022-02-28 15:55:16'),
(16, 1, 'AVERAGE COLOUR COTON FINE FABRCS', '1012', 'MD. MONIRUL ISLAM', '100000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-10 00:00:00', '2022-02-23 00:00:00', NULL, NULL, NULL, NULL, NULL, 'AVERAGE COLOUR COTON FINE FABRCS', '1873110645', '200', NULL, NULL, '2022-02-28 19:57:53', '2022-02-28 19:59:52'),
(17, 1, 'AVERAGE COLOUR LECRA FINE FABRICS', NULL, 'MD. MONIRUL ISLAM', '10000', NULL, 'AVERAGE', NULL, NULL, NULL, NULL, NULL, '2022-02-01 00:00:00', '2022-02-16 00:00:00', NULL, NULL, NULL, NULL, NULL, 'AVERAGE COLOUR LECRA FINE FABRICS', '1555996862', '200', NULL, NULL, '2022-02-28 20:02:47', '2022-02-28 20:39:05'),
(18, 1, 'AVERAGE COLOUR COTTON FINE FABRICS', '105', NULL, '100000', NULL, 'AVERAGE', NULL, NULL, NULL, NULL, NULL, '2022-02-01 00:00:00', '2022-02-01 00:00:00', NULL, NULL, NULL, NULL, NULL, 'AVERAGE COLOUR COTTON FINE FABRICS', '184655011', '200', NULL, NULL, '2022-02-28 20:07:05', '2022-02-28 20:37:51'),
(19, 1, 'SLUB COTTON FINE SLUB LYCRA FINE', '109', 'MD. RAZIB', NULL, NULL, 'AVERAGE', 'OPEN', NULL, '220', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '260', 'SLUB COTTON FINE SLUB LYCRA FINE', '1841096856', '400', '72', NULL, '2022-03-01 12:35:28', '2022-03-01 13:03:03'),
(20, 1, 'BLACK COTTON FINE', '110', 'MD BIPUL RHAMAN', NULL, NULL, 'AVERAGE', 'OPEN', NULL, '220', NULL, NULL, '2022-02-16 00:00:00', '2022-03-01 00:00:00', NULL, NULL, NULL, NULL, NULL, 'BLACK COTTON FINE', '1887131877', '10', '72', NULL, '2022-03-01 12:37:01', '2022-03-01 12:37:01'),
(21, 1, 'BLACK LACRA FINE', '111', 'MD. MONIRUL ISLAM', NULL, NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2022-02-17 00:00:00', '2022-02-28 00:00:00', NULL, NULL, NULL, NULL, NULL, 'BLACK LACRA FINE', '631775236', '20', '72', NULL, '2022-03-01 12:38:39', '2022-03-01 12:38:39'),
(22, 1, 'WHITE COTTON FINE', '1012', 'MD. ALA AMIN MAMA', NULL, NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2022-02-18 00:00:00', '2022-02-27 00:00:00', NULL, NULL, NULL, NULL, NULL, 'WHITE COTTON FINE', '340579683', '50', '72', NULL, '2022-03-01 12:39:43', '2022-03-01 12:39:43'),
(23, 1, 'WHITE LYCRA FINE', '113', 'MD. ALA AMIN MAMA', NULL, NULL, 'NAVY', 'OPEN', NULL, NULL, NULL, NULL, '2022-02-22 00:00:00', '2022-02-26 00:00:00', NULL, NULL, NULL, NULL, NULL, 'WHITE LYCRA FINE', '11893175', '56', '72', NULL, '2022-03-01 12:40:46', '2022-03-01 12:40:46'),
(24, 1, 'NEVY COTTON FINE', '114', 'MD. ALA AMIN MAMA', NULL, NULL, 'AVARECS RABRICS', 'OPEN', NULL, NULL, NULL, NULL, '2022-02-23 00:00:00', '2022-02-28 00:00:00', NULL, NULL, NULL, NULL, NULL, 'NEVY COTTON FINE', '1083110278', '100', '72', NULL, '2022-03-01 12:41:48', '2022-03-01 12:41:48'),
(25, 1, 'NEVY LYCRA FINE', '115', 'MD. ALA AMIN MAMA', NULL, NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2022-02-10 00:00:00', '2022-02-16 00:00:00', NULL, NULL, NULL, NULL, NULL, 'NEVY LYCRA FINE', '555265973', '50', '72', NULL, '2022-03-01 12:42:42', '2022-03-01 12:42:42'),
(26, 1, 'ANTHA COTTON FINE', '116', 'MD. ALA AMIN MAMA', NULL, NULL, 'AVARECS RABRICS', NULL, NULL, NULL, NULL, NULL, '2022-02-03 00:00:00', '2022-03-10 00:00:00', NULL, NULL, NULL, NULL, NULL, 'ANTHA COTTON FINE', '1812134915', '40', '72', NULL, '2022-03-01 12:43:54', '2022-03-01 12:43:54'),
(27, 1, 'ANTHA LYCRA FINE', '117', 'MD. ALA AMIN MAMA', NULL, NULL, 'NAVY', 'OPEN', NULL, NULL, NULL, NULL, '2022-02-10 00:00:00', '2022-03-23 00:00:00', NULL, NULL, NULL, NULL, NULL, 'ANTHA LYCRA FINE', '1609662358', '70', '72', NULL, '2022-03-01 12:44:57', '2022-03-01 12:44:57'),
(28, 1, 'TWISTING COTTON FINE', '118', 'MD. ALA AMIN MAMA', NULL, NULL, 'NAVY', 'OPEN', NULL, NULL, NULL, NULL, '2022-02-02 00:00:00', '2022-03-10 00:00:00', NULL, NULL, NULL, NULL, NULL, 'TWISTING COTTON FINE', '2025723815', '119', '72', NULL, '2022-03-01 12:46:16', '2022-03-01 12:46:16'),
(29, 1, 'TWISTING LYCRA FINE', '119', 'MD. ALA AMIN MAMA', NULL, NULL, 'NAVY', 'OPEN', NULL, NULL, NULL, NULL, '2022-02-02 00:00:00', '2022-02-16 00:00:00', NULL, NULL, NULL, NULL, NULL, 'TWISTING LYCRA FINE', '115386847', '50', '72', NULL, '2022-03-01 12:49:40', '2022-03-01 12:49:40'),
(30, 1, 'ECJET COTTON FINE', '120', 'MD. ALA AMIN MAMA', NULL, NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2022-02-05 00:00:00', '2022-02-25 00:00:00', NULL, NULL, NULL, NULL, '220', 'ECJET COTTON FINE', '27882575', '200', '72', NULL, '2022-03-01 13:06:53', '2022-03-01 13:06:53'),
(31, 1, 'ENJET COTTON FINE', '121', 'MD. ALA AMIN MAMA', NULL, NULL, 'NAVY', 'OPEN', NULL, NULL, NULL, NULL, '2021-12-30 00:00:00', '2022-01-13 00:00:00', NULL, NULL, NULL, NULL, '220', 'ENJET COTTON FINE', '1550657279', '200', '72', NULL, '2022-03-01 13:08:10', '2022-03-01 13:08:10'),
(32, 1, 'MILLANCE COTTON FINE', '105', 'MD. ALA AMIN MAMA', NULL, NULL, 'AVARECS RABRICS', 'OPEN', NULL, NULL, NULL, NULL, '2022-01-05 00:00:00', '2022-03-10 00:00:00', NULL, NULL, NULL, NULL, '220', 'MILLANCE COTTON FINE', '816387838', '500', '72', NULL, '2022-03-01 13:09:31', '2022-03-01 13:09:31'),
(33, 1, 'MILLANCE LYCRA FINE', '122', 'MD. ALA AMIN MAMA', NULL, NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2022-01-19 00:00:00', '2022-01-24 00:00:00', NULL, NULL, NULL, NULL, '260', 'MILLANCE LYCRA FINE', '570957478', '33', '72', NULL, '2022-03-01 13:10:37', '2022-03-01 13:10:37'),
(34, 1, 'AVARAGE COLOUNING COTTON FINE', '123', 'MD. ALA AMIN MAMA', NULL, NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2022-01-05 00:00:00', '2022-01-13 00:00:00', NULL, NULL, NULL, NULL, '220', 'AVARAGE COLOUNING COTTON FINE', '1786758995', '700', '72', NULL, '2022-03-01 13:11:59', '2022-03-01 13:11:59'),
(35, 1, 'AVARAGE COLOUNING COTTON  FINE', '124', 'MD. ALA AMIN MAMA', NULL, NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2022-01-18 00:00:00', '2022-02-04 00:00:00', NULL, NULL, NULL, NULL, '220', 'AVARAGE COLOUNING COTTON  FINE', '1655921685', '400', '72', NULL, '2022-03-01 13:13:04', '2022-03-01 13:13:04'),
(36, 1, 'NEPS COTTON FINE', '125', 'MD. ALA AMIN MAMA', NULL, NULL, 'NAVY', 'OPEN', NULL, NULL, NULL, NULL, '2022-01-10 00:00:00', '2022-02-02 00:00:00', NULL, NULL, NULL, NULL, '260', 'NEPS COTTON FINE', '975096882', '550', '72', NULL, '2022-03-01 13:13:57', '2022-03-01 13:13:57'),
(37, 1, 'NEPS LYCRA FINE', '127', 'MD. ALA AMIN MAMA', NULL, NULL, 'AVARECS RABRICS', 'OPEN', NULL, NULL, NULL, NULL, '2021-12-07 00:00:00', '2021-12-14 00:00:00', NULL, NULL, NULL, NULL, '220', 'NEPS LYCRA FINE', '1010689000', '500', '72', NULL, '2022-03-01 13:15:00', '2022-03-01 13:15:00'),
(38, 1, 'NEPS ENJET COTTON FINE', '128', 'MD. ALA AMIN MAMA', '3400', NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-12-29 00:00:00', '2022-01-10 00:00:00', NULL, NULL, NULL, NULL, '220', 'NEPS ENJET COTTON FINE', '249341747', '400', '72', NULL, '2022-03-01 13:16:57', '2022-03-01 16:03:45'),
(39, 1, 'NEPS ENJET LYCRA FINE', '129', 'MD. ALA AMIN MAMA', '2600', NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-12-22 00:00:00', '2022-01-01 00:00:00', NULL, NULL, NULL, NULL, '220', 'NEPS ENJET LYCRA FINE', '137114206', '500', '72', NULL, '2022-03-01 13:19:48', '2022-03-01 16:01:59'),
(40, 1, 'COTTON PRINT S/J', '130', 'MD. ALA AMIN MAMA', '3300', NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-10-06 00:00:00', '2021-12-15 00:00:00', NULL, NULL, NULL, NULL, '260', 'COTTON PRINT S/J', '2025755751', '450', '72', NULL, '2022-03-01 13:21:49', '2022-03-01 15:59:59'),
(41, 1, 'LYCRA PRINT S/J', '131', 'MD. ALA AMIN MAMA', '3000', NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-11-18 00:00:00', '2022-01-11 00:00:00', NULL, NULL, NULL, NULL, '160', 'LYCRA PRINT S/J', '1129011602', '422', '72', NULL, '2022-03-01 13:23:03', '2022-03-01 15:58:31'),
(42, 1, 'SLUB PRINT S/J COTTON', '132', 'MD. ALA AMIN MAMA', '3000', NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2022-01-04 00:00:00', '2022-02-02 00:00:00', NULL, NULL, NULL, NULL, '220', 'SLUB PRINT S/J COTTON', '1371721044', '300', '72', NULL, '2022-03-01 13:24:05', '2022-03-01 15:54:47'),
(43, 1, 'SLUB PRINT S/J LYCRA', '133', 'MD. ALA AMIN MAMA', '2000', NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-12-15 00:00:00', '2022-01-18 00:00:00', NULL, NULL, NULL, NULL, '260', 'SLUB PRINT S/J LYCRA', '1043625048', '500', '72', NULL, '2022-03-01 13:25:16', '2022-03-01 15:52:59'),
(44, 1, 'STEP COTTON FINE', '134', 'MD. ALA AMIN MAMA', '3000', NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-12-08 00:00:00', '2022-01-18 00:00:00', NULL, NULL, NULL, NULL, '220', 'STEP COTTON FINE', '789956453', '430', '72', NULL, '2022-03-01 13:27:59', '2022-03-01 15:50:57'),
(45, 1, 'STEP LYCRA FINE', '136', 'MD. ALA AMIN MAMA', '2500', NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-12-07 00:00:00', '2022-01-11 00:00:00', NULL, NULL, NULL, NULL, '220', 'STEP LYCRA FINE', '605410357', '300', '72', NULL, '2022-03-01 13:29:11', '2022-03-01 15:49:39'),
(46, 1, 'LYECRA  VISCOSS/JPRINT', '126', 'MD. SOHEL RANA', '6000', NULL, 'AVERAGE', 'OPEN', NULL, '160', NULL, NULL, '2022-02-27 00:00:00', '2022-02-27 00:00:00', NULL, NULL, NULL, NULL, NULL, 'LYECRA  VISCOSS/JPRINT', '391989065', '444', NULL, NULL, '2022-03-01 13:39:43', '2022-03-01 13:41:37'),
(47, 1, 'MICO PRINT S/J', '136', 'MD. ALA AMIN MAMA', '3300', NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-11-04 00:00:00', '2022-01-12 00:00:00', NULL, NULL, NULL, NULL, '220', 'MICO PRINT S/J', '762402617', '500', '72', NULL, '2022-03-01 14:13:25', '2022-03-01 15:46:21'),
(48, 1, 'POLYSTER PRINT S/J', '137', 'MD. ALA AMIN MAMA', NULL, NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-11-11 00:00:00', '2022-01-18 00:00:00', NULL, NULL, NULL, NULL, '260', 'POLYSTER PRINT S/J', '766212579', '600', '72', NULL, '2022-03-01 14:14:37', '2022-03-01 14:14:37'),
(49, 1, 'SOLID POLYSTER S/J', '138', 'MD. ALA AMIN MAMA', '2500', NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-09-01 00:00:00', '2022-01-07 00:00:00', NULL, NULL, NULL, NULL, '220', 'SOLID POLYSTER S/J', '1212716338', '300', '72', NULL, '2022-03-01 14:15:43', '2022-03-01 15:41:32'),
(50, 1, 'STEP POLYSTER PRINT S/J', '140', 'MD. ALA AMIN MAMA', '3000', NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-11-17 00:00:00', '2021-12-31 00:00:00', NULL, NULL, NULL, NULL, '220', 'STEP POLYSTER PRINT S/J', '151379230', '600', '72', NULL, '2022-03-01 14:16:51', '2022-03-01 15:43:00'),
(51, 1, 'SOLID VISCOS S/J', '141', 'MD. ALA AMIN MAMA', '3000', NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-11-17 00:00:00', '2022-01-16 00:00:00', NULL, NULL, NULL, NULL, '160', 'SOLID VISCOS S/J', '289668307', '400', '72', NULL, '2022-03-01 14:18:08', '2022-03-01 15:35:39'),
(52, 1, 'MICO POLY STER', '142', 'MD. ALA AMIN MAMA', '2500', NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-11-01 00:00:00', '2021-12-08 00:00:00', NULL, NULL, NULL, NULL, '220', 'MICO POLY STER', '1655619842', '500', '72', NULL, '2022-03-01 14:19:06', '2022-03-01 15:34:07'),
(53, 1, 'ALL STECH POLYSTER S/J', '144', 'MD. ALA AMIN MAMA', '2000', NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-11-11 00:00:00', '2021-11-01 00:00:00', NULL, NULL, NULL, NULL, '220', 'ALL STECH POLYSTER S/J', '1552588488', '500', '72', NULL, '2022-03-01 14:20:49', '2022-03-01 14:25:31'),
(54, 1, 'ALL STECH POLYSTER PRINT S/J', '145', 'MD. ALA AMIN', '2000', NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-11-25 00:00:00', '2021-12-16 00:00:00', NULL, NULL, NULL, NULL, '220', 'ALL STECH POLYSTER PRINT S/J', '1094586103', '500', '72', NULL, '2022-03-01 14:23:03', '2022-03-01 15:30:17'),
(55, 1, 'COTTON TERRY', '146', 'MD. ALA AMIN', NULL, NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2022-01-04 00:00:00', '2022-02-07 00:00:00', NULL, NULL, NULL, NULL, '220', 'COTTON TERRY', '1618212665', '500', '72', NULL, '2022-03-01 15:22:02', '2022-03-01 15:22:02'),
(56, 1, 'LYCRA TERRY', '147', 'MD. ALA AMIN', NULL, NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-11-11 00:00:00', '2021-12-28 00:00:00', NULL, NULL, NULL, NULL, '260', 'LYCRA TERRY', '1398929260', '600', '72', NULL, '2022-03-01 15:23:04', '2022-03-01 15:23:04'),
(57, 1, 'POLYSTER TERRY', '149', 'MD. ALA AMIN', NULL, NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-11-10 00:00:00', '2022-01-04 00:00:00', NULL, NULL, NULL, NULL, '220', 'POLYSTER TERRY', '803502438', '500', '72', NULL, '2022-03-01 15:24:06', '2022-03-01 15:24:06'),
(58, 1, 'COTTON PRINT TERRY', '150', 'MD. ALA AMIN', NULL, NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-11-01 00:00:00', '2021-12-02 00:00:00', NULL, NULL, NULL, NULL, '220', 'COTTON PRINT TERRY', '814681468', '400', '72', NULL, '2022-03-01 15:25:07', '2022-03-01 15:25:07'),
(59, 1, 'LYCRA PRINT TERRY', '150', 'MD. ALA AMIN', NULL, NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-11-02 00:00:00', '2022-01-11 00:00:00', NULL, NULL, NULL, NULL, '220', 'LYCRA PRINT TERRY', '539929107', '500', '72', NULL, '2022-03-01 15:26:05', '2022-03-01 15:26:05'),
(60, 1, 'POLYSTER PRINT TERRY', '151', 'MD. ALA AMIN', NULL, NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-10-07 00:00:00', '2021-11-07 00:00:00', NULL, NULL, NULL, NULL, '220', 'POLYSTER PRINT TERRY', '1027370428', '500', '72', NULL, '2022-03-01 15:27:17', '2022-03-01 15:27:17'),
(61, 1, 'POLYSTER PRINT TERRY', '152', 'MD. ALA AMIN', NULL, NULL, 'AVERAGE', 'OPEN', NULL, NULL, NULL, NULL, '2021-11-17 00:00:00', '2021-12-01 00:00:00', NULL, NULL, NULL, NULL, '220', 'POLYSTER PRINT TERRY', '912686132', '400', '72', NULL, '2022-03-01 15:28:31', '2022-03-01 15:28:31'),
(62, 1, 'AVARAGE KOMBOL FABICS', '140', 'MD. ALA AMIN', '669', NULL, 'AVERAGE', NULL, NULL, '220', NULL, NULL, '2022-03-01 00:00:00', '2022-03-02 00:00:00', NULL, NULL, NULL, NULL, NULL, 'AVARAGE KOMBOL FABICS', '1050678109', '500', '72', NULL, '2022-03-02 15:52:29', '2022-03-06 04:08:21'),
(63, 1, 'Dolorum commodi laud', 'Eaque nisi et eos se', 'Macey Peters', NULL, NULL, 'Xyla Holder', 'Voluptate est delect', 'Dolor recusandae Iu', 'Et facilis molestias', 'Ratione tempora volu', 'Laudantium neque es', '2018-05-04 00:00:00', '1998-06-01 00:00:00', 'Modi minima doloribu', 'Aut accusantium tene', 'Consequatur non nul', 'Placeat quis qui ni', 'Nihil reiciendis ex', 'Qui veritatis proide', '198888160', 'Dolore quia vel cons', 'Minim in ullamco sed', NULL, '2022-03-06 05:53:26', '2022-03-06 05:53:26');

-- --------------------------------------------------------

--
-- Table structure for table `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'PURCHASE PRODUCT', 107, '2022-02-19 12:26:34', '2022-02-19 12:26:34'),
(2, 'READY PRODUCT', 107, '2022-02-19 12:26:48', '2022-02-19 12:26:48');

-- --------------------------------------------------------

--
-- Table structure for table `product_ingredients`
--

CREATE TABLE `product_ingredients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `quantity` decimal(10,3) DEFAULT NULL,
  `payment_mode` varchar(255) DEFAULT NULL,
  `main_quantity` decimal(10,3) DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `total_purchas_price` decimal(10,2) DEFAULT NULL,
  `actual_unit_price` decimal(10,2) DEFAULT NULL,
  `payment_amount` decimal(10,2) DEFAULT NULL,
  `due` decimal(10,2) DEFAULT NULL,
  `actual_purchas_price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `product_id`, `supplier_id`, `created_by`, `quantity`, `payment_mode`, `main_quantity`, `status`, `unit_price`, `total_purchas_price`, `actual_unit_price`, `payment_amount`, `due`, `actual_purchas_price`, `created_at`, `updated_at`) VALUES
(55, 2, 3, '92', '0.000', 'Cash', '56.000', 1, '45.00', '2520.00', '45.43', '2544.00', '0.00', '2544.00', '2022-03-07 13:02:46', '2022-03-09 22:54:03'),
(56, 1, 2, '92', '15.000', 'Cash', '45.000', 0, '45.00', '2025.00', '45.93', '400.00', '1667.00', '2067.00', '2022-03-09 22:56:59', '2022-03-10 02:39:01'),
(57, 2, 1, '92', '450.000', 'Cash', '500.000', 0, '40.00', '20000.00', '40.00', '500.00', '19500.00', '20000.00', '2022-03-10 01:28:57', '2022-03-10 01:29:35');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_payments`
--

CREATE TABLE `purchase_payments` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `cheque_number` varchar(100) DEFAULT NULL,
  `cheque_due_date` date DEFAULT NULL,
  `bkash_number` varchar(255) DEFAULT NULL,
  `bkash_trns_id` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `card_expire_date` date DEFAULT NULL,
  `remark` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase_payments`
--

INSERT INTO `purchase_payments` (`id`, `purchase_id`, `supplier_id`, `amount`, `payment_mode`, `bank_name`, `cheque_number`, `cheque_due_date`, `bkash_number`, `bkash_trns_id`, `card_number`, `card_expire_date`, `remark`, `created_at`, `updated_at`) VALUES
(8, 46, 1, 500, 'Bank', 'Agrani Bank Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 11:09:25', '2022-03-07 11:09:25'),
(9, 47, 4, 500, 'Bank', 'Agrani Bank Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 11:11:29', '2022-03-07 11:11:29'),
(10, 48, 1, 45, 'Bank', 'Bangladesh Development Bank Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 11:38:15', '2022-03-07 11:38:15'),
(11, 49, 1, 45, 'Bank', 'Bangladesh Development Bank Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 11:40:10', '2022-03-07 11:40:10'),
(12, 50, 1, 45, 'Bank', 'Bangladesh Development Bank Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 11:40:27', '2022-03-07 11:40:27'),
(13, 51, 1, 45, 'Bank', 'Bangladesh Development Bank Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 11:40:51', '2022-03-07 11:40:51'),
(14, 52, 1, 45, 'Bank', 'Bangladesh Development Bank Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 11:44:26', '2022-03-07 11:44:26'),
(15, 53, 4, 45, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 11:50:28', '2022-03-07 11:50:28'),
(16, 54, 4, 45, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 11:50:51', '2022-03-07 11:50:51'),
(17, 55, 3, 45, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 13:02:46', '2022-03-07 13:02:46'),
(18, 55, 3, 500, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 13:17:03', '2022-03-07 13:17:03'),
(19, 55, 3, 500, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 13:17:23', '2022-03-07 13:17:23'),
(20, 55, 3, 500, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 13:17:42', '2022-03-07 13:17:42'),
(21, 55, 3, 500, 'Bank', 'Agrani Bank Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 13:19:02', '2022-03-07 13:19:02'),
(22, 55, 3, 600, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 13:20:48', '2022-03-07 13:20:48'),
(23, 55, 3, 550, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 13:22:15', '2022-03-07 13:22:15'),
(24, 55, 3, 500, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-07 13:33:16', '2022-03-07 13:33:16'),
(25, 55, 3, 1449, 'Cheque', NULL, '45646456', '2022-03-09', NULL, NULL, NULL, NULL, NULL, '2022-03-07 13:33:34', '2022-03-07 13:33:34'),
(26, 56, 2, 400, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-09 22:56:59', '2022-03-09 22:56:59'),
(27, 57, 1, 500, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 01:28:57', '2022-03-10 01:28:57'),
(30, NULL, 11, 100, 'Bank', 'Bangladesh Commerce Bank Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 12:44:31', '2022-03-10 12:44:31'),
(31, NULL, 11, 100, 'Bank', 'Janata Bank Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 12:44:51', '2022-03-10 12:44:51'),
(32, NULL, 11, 10, 'Bkash', NULL, NULL, NULL, '123123', '123123', NULL, NULL, NULL, '2022-03-10 12:52:03', '2022-03-10 12:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `ready_product_details`
--

CREATE TABLE `ready_product_details` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `slag`, `created_at`, `updated_at`) VALUES
(11, 'Super Admin', 'super_admin', '2021-01-12 00:43:52', '2021-01-12 00:43:52'),
(12, 'Admin', 'admin', '2021-01-21 02:25:27', '2021-01-21 02:25:27'),
(14, 'Accounts', 'accounts', '2021-01-21 02:31:02', '2021-01-21 02:31:02'),
(16, 'SubAdmin', 'subadmin', '2021-04-26 17:53:50', '2021-04-26 17:53:50'),
(17, 'test', 'test', '2021-06-10 07:09:52', '2021-06-10 07:09:52'),
(18, 'sales Manager', 'sales_manager', '2021-12-27 16:43:55', '2021-12-27 16:43:55'),
(19, 'stock manager', 'stock_manager', '2022-02-05 17:07:52', '2022-02-05 17:07:52');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `sales_executive_id` int(11) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `payment_amount` decimal(10,2) DEFAULT NULL,
  `due` decimal(10,2) DEFAULT NULL,
  `labour_bill` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `sales_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sales_code` varchar(255) DEFAULT NULL,
  `profit_or_loss` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customer_id`, `sales_executive_id`, `total_price`, `payment_amount`, `due`, `labour_bill`, `reference`, `sales_date`, `status`, `sales_code`, `profit_or_loss`, `date`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '11101.38', '11101.00', '0.38', '0', NULL, NULL, 0, '83079988', '1593.61', NULL, NULL, '2022-02-19 12:46:51', '2022-02-19 12:46:51'),
(2, 3, 2, '1000.00', '1000.00', '0.00', '0', NULL, NULL, 1, '35274589', '231.07', NULL, NULL, '2022-02-19 15:08:20', '2022-02-19 15:08:20'),
(3, 4, 4, '44035.64', '44035.00', '0.64', '200', NULL, NULL, 0, '1524751701', '5928.09', NULL, NULL, '2022-02-20 12:17:11', '2022-02-20 12:17:11'),
(5, 18, 1, '15249.00', '15240.00', '9.00', '0', NULL, NULL, 0, '223500888', '1679.60', NULL, NULL, '2022-02-26 13:35:14', '2022-02-26 13:35:14'),
(6, 33, 7, '3596037.31', '0.00', '3596037.31', '10129', NULL, NULL, 0, '1464033206', '-79762.69', NULL, NULL, '2022-02-28 20:28:10', '2022-02-28 20:28:10'),
(7, 34, 7, '171637.50', '171637.00', '0.50', '00', NULL, NULL, 0, '231964984', '-27362.50', NULL, NULL, '2022-03-02 16:18:13', '2022-03-02 16:18:13'),
(8, 28, 2, '52.20', '34.00', '18.20', '50', NULL, NULL, 0, '1429110349', '6.77', NULL, NULL, '2022-03-09 22:47:01', '2022-03-09 22:47:01'),
(9, 4, 3, '1886.00', '34.00', '1852.00', '50', NULL, NULL, 0, '1877816420', '-567.22', NULL, NULL, '2022-03-09 22:51:35', '2022-03-09 22:51:36'),
(10, 7, 3, '2534.71', '45.00', '2489.71', '50.7063', NULL, NULL, 0, '305499406', '689.28', NULL, NULL, '2022-03-10 02:15:27', '2022-03-10 02:15:27'),
(11, 4, 2, '220.41', '50.00', '170.41', '4.4092', NULL, NULL, 0, '146445639', '60.41', NULL, NULL, '2022-03-10 02:33:52', '2022-03-10 02:33:52'),
(12, 5, 4, '55.10', '45.00', '10.10', '1.1023', NULL, NULL, 0, '71520897', '15.10', NULL, NULL, '2022-03-10 02:35:53', '2022-03-10 02:35:53'),
(13, 3, 3, '165.31', '132.00', '33.31', '3.3069', NULL, NULL, 0, '2109127736', NULL, NULL, NULL, '2022-03-10 02:39:31', '2022-03-10 02:39:31'),
(14, 3, 3, '165.31', '132.00', '33.31', '3.3069', NULL, NULL, 0, '1392708582', NULL, NULL, NULL, '2022-03-10 02:39:37', '2022-03-10 02:39:37'),
(15, 3, 3, '165.31', '132.00', '33.31', '3.3069', NULL, NULL, 0, '800699411', NULL, NULL, NULL, '2022-03-10 02:39:39', '2022-03-10 02:39:39'),
(16, 6, 3, '110.20', '12.00', '98.20', '2.2046', NULL, NULL, 0, '1651403013', NULL, NULL, NULL, '2022-03-10 02:41:46', '2022-03-10 02:41:46'),
(17, 6, 3, '110.20', '12.00', '98.20', '2.2046', NULL, NULL, 0, '518991573', NULL, NULL, NULL, '2022-03-10 02:41:58', '2022-03-10 02:41:58'),
(18, 6, 3, '110.20', '12.00', '98.20', '2.2046', NULL, NULL, 0, '17188274', NULL, NULL, NULL, '2022-03-10 02:42:08', '2022-03-10 02:42:08'),
(19, 5, 4, '25.23', '12.00', '13.23', '13.2277', NULL, NULL, 0, '470057181', '-525.93', NULL, NULL, '2022-03-10 02:44:08', '2022-03-10 02:44:08'),
(20, 3, 4, '55.10', '1.00', '54.10', '1.1023', NULL, NULL, 0, '1432103141', NULL, NULL, NULL, '2022-03-10 02:44:50', '2022-03-10 02:44:50'),
(21, 3, 3, '55.10', '50.00', '5.10', '1.1023', NULL, NULL, 0, '1118639765', '9.17', NULL, NULL, '2022-03-10 03:02:44', '2022-03-10 03:02:44'),
(22, 35, 3, '55.10', '10.00', '45.10', '1.1023', NULL, NULL, 0, '1671467513', '9.17', NULL, NULL, '2022-03-10 12:57:03', '2022-03-10 12:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `sales_details`
--

CREATE TABLE `sales_details` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `chalan_no` varchar(255) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `purchase_uint_price` decimal(10,2) DEFAULT NULL,
  `purchase_total_price` decimal(10,2) DEFAULT NULL,
  `role` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`id`, `customer_id`, `sales_id`, `stock_id`, `quantity`, `chalan_no`, `unit_price`, `total_price`, `purchase_uint_price`, `purchase_total_price`, `role`, `created_at`, `updated_at`) VALUES
(9, 28, 8, 40, '1', '4545', '2.20', '2.20', '45.43', '45.43', '0.00', '2022-03-09 22:47:01', '2022-03-09 22:47:01'),
(10, 4, 9, 40, '54', '234234', '34.00', '1836.00', '45.43', '2453.22', '0.00', '2022-03-09 22:51:36', '2022-03-09 22:51:36'),
(11, 7, 10, 40, '1', '121212', '54.00', '54.00', '45.43', '45.43', '0.00', '2022-03-10 02:15:27', '2022-03-10 02:15:27'),
(12, 7, 10, 41, '45', '121212', '54.00', '2430.00', '40.00', '1800.00', '0.00', '2022-03-10 02:15:27', '2022-03-10 02:15:27'),
(13, 4, 11, 41, '4', '121212', '54.00', '216.00', '40.00', '160.00', '0.00', '2022-03-10 02:33:52', '2022-03-10 02:33:52'),
(14, 5, 12, 41, '1', '121212', '54.00', '54.00', '40.00', '40.00', '0.00', '2022-03-10 02:35:53', '2022-03-10 02:35:53'),
(15, 3, 13, 42, '3', '121212', '54.00', '162.00', '45.93', '137.79', '0.00', '2022-03-10 02:39:31', '2022-03-10 02:39:31'),
(16, 3, 14, 42, '3', '121212', '54.00', '162.00', '45.93', '137.79', '0.00', '2022-03-10 02:39:38', '2022-03-10 02:39:38'),
(17, 3, 15, 42, '3', '121212', '54.00', '162.00', '45.93', '137.79', '0.00', '2022-03-10 02:39:39', '2022-03-10 02:39:39'),
(18, 6, 16, 42, '2', '121212', '54.00', '108.00', '45.93', '91.86', '0.00', '2022-03-10 02:41:46', '2022-03-10 02:41:46'),
(19, 6, 17, 42, '2', '121212', '54.00', '108.00', '45.93', '91.86', '0.00', '2022-03-10 02:41:58', '2022-03-10 02:41:58'),
(20, 6, 18, 42, '2', '121212', '54.00', '108.00', '45.93', '91.86', '0.00', '2022-03-10 02:42:08', '2022-03-10 02:42:08'),
(21, 5, 19, 42, '12', '121212', '1.00', '12.00', '45.93', '551.16', '0.00', '2022-03-10 02:44:08', '2022-03-10 02:44:08'),
(22, 3, 20, 42, '1', '121212', '54.00', '54.00', '45.93', '45.93', '0.00', '2022-03-10 02:44:50', '2022-03-10 02:44:50'),
(23, 3, 21, 42, '1', '121212', '54.00', '54.00', '45.93', '45.93', '0.00', '2022-03-10 03:02:44', '2022-03-10 03:02:44'),
(24, 35, 22, 42, '1', '121212', '54.00', '54.00', '45.93', '45.93', '0.00', '2022-03-10 12:57:03', '2022-03-10 12:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `sales_executive_models`
--

CREATE TABLE `sales_executive_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_executive_models`
--

INSERT INTO `sales_executive_models` (`id`, `name`, `email`, `phone`, `address`, `salary`, `created_at`, `updated_at`) VALUES
(1, 'MD ALAMIN HOSSAIN', NULL, '01402524959', 'KHANPUR, NARAYANGONJ', '10000', '2022-02-19 11:48:55', '2022-02-19 11:48:55'),
(2, 'MD MONIRUL ISLAM', NULL, '01847092041', 'KASHIPUR, KHILMARKET', '20000', '2022-02-19 11:50:22', '2022-02-19 11:50:22'),
(3, 'MASUM SHEIKH', NULL, '01992410495', 'KASHIPUR, NARAYANGONJ', '15000', '2022-02-19 11:51:14', '2022-02-19 11:51:14'),
(4, 'RIDOY HASAN', NULL, '01793411726', 'KASHIPUR, NARAYANGONJ', '15000', '2022-02-19 11:51:54', '2022-02-19 11:51:54'),
(5, 'RIDS AHMED', NULL, '01833931985', 'SIDDIRGONJ, NARAYANGONJ', '15000', '2022-02-19 11:52:33', '2022-02-19 11:52:33'),
(6, 'FAHIM DEWAN', NULL, '01920154610', 'PAIKPARA, NARAYANGONJ', '10000', '2022-02-19 11:53:09', '2022-02-19 11:53:09'),
(7, 'SOHEL RANA', NULL, '01308606725', 'KASHIPUR, KHILMARKET', '10000', '2022-02-19 11:53:48', '2022-02-19 11:53:48'),
(8, 'SAJOL ALI', NULL, '01722134728', 'KASHIPUR, KHILMARKET', '10000', '2022-02-19 11:54:25', '2022-02-19 11:54:25'),
(9, 'DULAL NANA', NULL, '01732569103', 'MASDAIR, NARAYANGONJ', '14000', '2022-02-19 11:55:02', '2022-02-19 11:55:02'),
(10, 'MIZAN DHALY', NULL, '01954762929', 'KASHIPUR, KHILMARKET', '16000', '2022-02-19 11:55:35', '2022-02-19 11:55:35'),
(11, 'RAHAT', NULL, '01409599680', 'KASHIPUR, KHILMARKET', '4000', '2022-02-19 11:56:05', '2022-02-19 11:56:05');

-- --------------------------------------------------------

--
-- Table structure for table `sales_payments`
--

CREATE TABLE `sales_payments` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) DEFAULT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` varchar(255) NOT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `cheque_number` varchar(100) DEFAULT NULL,
  `cheque_due_date` datetime DEFAULT NULL,
  `bkash_number` varchar(255) DEFAULT NULL,
  `bkash_trns_id` varchar(255) DEFAULT NULL,
  `card_number` varchar(255) DEFAULT NULL,
  `card_expire_date` varchar(255) DEFAULT NULL,
  `remark` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_payments`
--

INSERT INTO `sales_payments` (`id`, `sales_id`, `customer_id`, `amount`, `payment_mode`, `bank_name`, `cheque_number`, `cheque_due_date`, `bkash_number`, `bkash_trns_id`, `card_number`, `card_expire_date`, `remark`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 11101, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 12:46:51', '2022-02-19 12:46:51'),
(2, 2, 3, 1000, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-19 15:08:20', '2022-02-19 15:08:20'),
(3, 3, 4, 44035, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-20 12:17:11', '2022-02-20 12:17:11'),
(5, 5, 18, 15240, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PAID', '2022-02-26 13:35:14', '2022-02-26 13:35:14'),
(6, 6, 33, 0, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-28 20:28:10', '2022-02-28 20:28:10'),
(7, 7, 34, 171637, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-02 16:18:13', '2022-03-02 16:18:13'),
(8, 8, 28, 34, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-09 22:47:01', '2022-03-09 22:47:01'),
(9, 9, 4, 34, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-09 22:51:36', '2022-03-09 22:51:36'),
(10, 10, 7, 45, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 02:15:27', '2022-03-10 02:15:27'),
(11, 11, 4, 50, 'Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'asdasd', '2022-03-10 02:33:52', '2022-03-10 02:33:52'),
(12, 12, 5, 45, 'Bank', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'sdfsfd', '2022-03-10 02:35:53', '2022-03-10 02:35:53'),
(13, 19, 5, 12, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 02:44:08', '2022-03-10 02:44:08'),
(14, 21, 3, 50, 'Bank', 'Bangladesh Development Bank Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 03:02:44', '2022-03-10 03:02:44'),
(15, NULL, 34, 500, 'Cache', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'ghkkgk', '2022-03-10 10:54:33', '2022-03-10 10:54:33'),
(16, NULL, 34, 400, 'Bank', 'Sonali Bank Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 11:10:04', '2022-03-10 11:10:04'),
(17, NULL, 34, 400, 'Bank', 'BRAC Bank Ltd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 11:10:23', '2022-03-10 11:10:23'),
(18, NULL, 34, 4100, 'Cheque', NULL, '123123123', '2022-03-18 00:00:00', NULL, NULL, NULL, NULL, NULL, '2022-03-10 11:10:57', '2022-03-10 11:10:57'),
(19, NULL, 33, 500, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 12:48:01', '2022-03-10 12:48:01'),
(20, NULL, 33, 1511436, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 12:48:13', '2022-03-10 12:48:13'),
(21, NULL, 33, 13602923, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 12:48:23', '2022-03-10 12:48:23'),
(22, 22, 35, 10, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-03-10 12:57:03', '2022-03-10 12:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `quantity` decimal(10,3) DEFAULT NULL,
  `main_quantity` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `purchase_id`, `created_by`, `quantity`, `main_quantity`, `status`, `date`, `created_at`, `updated_at`) VALUES
(40, 55, '92', '0.000', '56', '1', NULL, '2022-03-09 21:45:49', '2022-03-10 02:15:26'),
(41, 57, '92', '0.000', '50', '1', NULL, '2022-03-10 01:29:35', '2022-03-10 02:35:53'),
(42, 56, '92', '0.000', '30', '1', NULL, '2022-03-10 02:39:02', '2022-03-10 12:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `personal_phone` varchar(255) DEFAULT NULL,
  `optional_phone` varchar(255) DEFAULT NULL,
  `present_address` longtext DEFAULT NULL,
  `permanent_address` longtext DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_address` longtext DEFAULT NULL,
  `company_contact_no` int(11) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `photo` longtext DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `company_id`, `name`, `email`, `personal_phone`, `optional_phone`, `present_address`, `permanent_address`, `balance`, `company_name`, `company_address`, `company_contact_no`, `reference`, `nid`, `photo`, `nationality`, `designation`, `country`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 2, 'MIZANUR RAHMAN', NULL, '01863871993', NULL, 'NOYAMATI, NARAYANGONJ', 'NOYAMATI, NARAYANGONJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 107, '2022-02-19 12:23:56', '2022-02-19 12:23:56'),
(2, 3, 'ELIAS SIR', NULL, '01918185134', NULL, 'FATULLAH, NARAYANGONJ', 'FATULLAH, NARAYANGONJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 107, '2022-02-19 12:38:51', '2022-02-19 12:38:51'),
(3, 5, 'MD ALAMIN MAMA', NULL, '01881064583', NULL, 'BONDOR, NARAYANGONJ', 'BONDOR, NARAYANGONJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 107, '2022-02-19 14:55:57', '2022-02-19 14:55:57'),
(4, 65, 'MD TITU AHMED', NULL, '8801882078261', NULL, 'KASHIPUR, COUNCIL, OFFICE', 'KASHIPUR, COUNCIL, OFFICE', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 107, '2022-02-26 16:25:02', '2022-02-26 16:25:02'),
(5, 68, 'MD. SHAWON  ISLAM', NULL, '01612229798', NULL, 'NARAYANGONJ', 'TANBAZAR  NARAYANGONJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 107, '2022-02-27 12:26:16', '2022-02-27 12:26:16'),
(6, 69, 'MD.BAZIB RHAMAN', NULL, '01304604686', NULL, 'MASDAIR, NARAYANGONJ', 'MASDAIR, NARAYANGONJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 107, '2022-02-27 12:42:56', '2022-02-27 12:42:56'),
(7, 69, 'MD RAZIB', NULL, '01752586743', NULL, 'NIMTIOLA, NARAYANGONJ', 'NIMTIOLA, NARAYANGONJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 107, '2022-02-27 14:30:28', '2022-02-27 14:30:28'),
(8, 72, 'MD . BIPUL RHAMJAN', NULL, '01524698234', NULL, 'MASDAIR, NARAYANGONJ', 'MASDAIR, NARAYANGONJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 107, '2022-02-28 15:39:20', '2022-02-28 15:39:20'),
(9, 72, 'MD. MONIRUL ISLAM', NULL, '01743368000', NULL, 'MASDAIR, NARAYANGONJ', 'BISIC, NARAYANGONJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 107, '2022-02-28 15:50:43', '2022-02-28 15:50:43'),
(10, 72, 'MD. MONIRUL ISLAM', NULL, '01304604386', '01304604386', 'GOLACIPA, NARAYANGONJ', 'BISIC, NARAYANGONJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 107, '2022-02-28 19:55:10', '2022-02-28 19:55:10'),
(11, 4, 'Md. Khasrur Rahman', 'khasrur8@gmail.com', '01761955765', '01761955765', 'Flat: 6-c, Building: 99/1, Matikata Bazar Road, Dhaka', NULL, '270', NULL, NULL, NULL, NULL, NULL, '', 'Sed ea incidunt ull', 'In quo quidem non re', NULL, 92, '2022-03-10 12:11:02', '2022-03-10 12:52:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(86) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastname` varchar(86) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(16) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(124) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(124) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status_id` tinyint(1) DEFAULT 1 COMMENT '1=Active,0=Inactive,2=Deleted',
  `created_at` datetime NOT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `version` int(11) DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `mobile`, `email`, `password`, `company_name`, `status_id`, `created_at`, `created_by`, `updated_at`, `version`, `remember_token`, `role_id`, `type`) VALUES
(92, 'Super Admin', '', '01761955765', 'admin@gmail.com', '$2y$10$9LVl8Xz0Ps2S2cUZ14c8e.QOho1XfDdB96.AlX9GmPzQJOONtYmJu', NULL, 1, '2021-02-07 11:07:04', 85, '2021-04-08 17:09:31', 1, '7WI9gqCndzGsiSY6Xw3TNwTCweLXUZdf6Z9KpYfyIgSnaHMsAfP0CTdiFGmU', 11, 'admin'),
(105, 'rhythms', NULL, '01761955765', 'rhythms@outlook.com', '$2y$12$8K5vJYIUMomXvJ4v6reHfeX55kn6dxus5u1Cff6SdE0DJ.VGPvDjK', NULL, 1, '2021-06-10 12:31:09', 92, '2021-06-10 14:06:14', NULL, NULL, 16, 'admin'),
(106, 'sales Manager', NULL, '01672752911', 'sales@gmail.com', '$2y$10$8opRcX98SyaEidglieya5OsBmFjrG4e.DQ.3.ZKUIi4nyB1Iblyo6', NULL, 2, '2021-12-27 22:44:25', 92, '2022-02-05 17:00:31', NULL, NULL, 12, 'admin'),
(107, 'Hridoy', NULL, '01672752911', 'hridoy_tashfia@gmail.com', '$2y$10$42CIFQvCH8K6j0G20nF83ec0DCeXhOzREFCHs7DBhhkkz4UiW8aHe', NULL, 1, '2022-02-05 17:01:57', 92, '2022-02-05 17:01:57', NULL, NULL, 12, 'admin'),
(108, 'stock manager', NULL, '01672752911', 'stock_tashfia@gmail.com', '$2y$10$MV7riFWSn4fX9exS061.e.weQa4OtM/2Des./gx0.D./A4i9DNN.S', NULL, 1, '2022-02-05 17:08:30', 92, '2022-02-05 17:08:30', NULL, NULL, 19, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `work_order`
--

CREATE TABLE `work_order` (
  `id` int(11) NOT NULL,
  `party_id` int(11) DEFAULT NULL,
  `invoice_date` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `client_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `project_desc` longtext DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `tax` varchar(255) DEFAULT NULL,
  `total_amount` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `work_order_ingredient`
--

CREATE TABLE `work_order_ingredient` (
  `id` int(11) NOT NULL,
  `work_order_id` int(11) DEFAULT NULL,
  `ingredient_id` int(11) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `work_order_party`
--

CREATE TABLE `work_order_party` (
  `id` int(11) NOT NULL,
  `company_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `personal_phone` varchar(255) DEFAULT NULL,
  `optional_phone` varchar(255) DEFAULT NULL,
  `present_address` longtext DEFAULT NULL,
  `permanent_address` longtext DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_address` longtext DEFAULT NULL,
  `company_contact_no` int(11) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `nid` varchar(255) DEFAULT NULL,
  `photo` longtext DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_category_id` (`category_id`);

--
-- Indexes for table `cheque_details`
--
ALTER TABLE `cheque_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_payment_id` (`sales_payment_id`);

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_id` (`company_id`);

--
-- Indexes for table `dynamic_routes`
--
ALTER TABLE `dynamic_routes`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `url` (`url`) USING BTREE,
  ADD KEY `model_name` (`model_name`) USING BTREE,
  ADD KEY `controller_action` (`controller_action`) USING BTREE,
  ADD KEY `method` (`method`) USING BTREE,
  ADD KEY `show_in_menu` (`show_in_menu`) USING BTREE,
  ADD KEY `ajax` (`ajax`) USING BTREE;

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_category_id` (`expenses_category_id`);

--
-- Indexes for table `expenses_category`
--
ALTER TABLE `expenses_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`) USING BTREE;

--
-- Indexes for table `initial_balance`
--
ALTER TABLE `initial_balance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_menu`
--
ALTER TABLE `master_menu`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `fk_menu_parent_id` (`menu_parent_id`) USING BTREE;

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `permission_roles_role_id_foreign` (`role_id`) USING BTREE,
  ADD KEY `permission_roles_dynamic_route_id_foreign` (`dynamic_route_id`) USING BTREE,
  ADD KEY `dynamic_route_id` (`dynamic_route_id`) USING BTREE,
  ADD KEY `role_id` (`role_id`) USING BTREE;

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_category_id` (`product_category_id`);

--
-- Indexes for table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_ingredients`
--
ALTER TABLE `product_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_product_id` (`product_id`),
  ADD KEY `puchase_supplier_id` (`supplier_id`);

--
-- Indexes for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_payment_purchase_id` (`purchase_id`),
  ADD KEY `purchase_payment_supplier_id` (`supplier_id`);

--
-- Indexes for table `ready_product_details`
--
ALTER TABLE `ready_product_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `ingredient_id` (`ingredient_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_unique` (`name`) USING BTREE;

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_id` (`sales_id`),
  ADD KEY `sales_customer_id` (`customer_id`),
  ADD KEY `sales_stock_id` (`stock_id`);

--
-- Indexes for table `sales_executive_models`
--
ALTER TABLE `sales_executive_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales_payments`
--
ALTER TABLE `sales_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_sales_id` (`sales_id`),
  ADD KEY `payment_customer_id` (`customer_id`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_product_id` (`purchase_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_company_id` (`company_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `role_id` (`role_id`) USING BTREE,
  ADD KEY `type` (`type`) USING BTREE;

--
-- Indexes for table `work_order`
--
ALTER TABLE `work_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `party_id` (`party_id`);

--
-- Indexes for table `work_order_ingredient`
--
ALTER TABLE `work_order_ingredient`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`work_order_id`),
  ADD KEY `ingredient_id` (`ingredient_id`);

--
-- Indexes for table `work_order_party`
--
ALTER TABLE `work_order_party`
  ADD PRIMARY KEY (`id`),
  ADD KEY `supplier_company_id` (`company_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `cheque_details`
--
ALTER TABLE `cheque_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `dynamic_routes`
--
ALTER TABLE `dynamic_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `expenses_category`
--
ALTER TABLE `expenses_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `initial_balance`
--
ALTER TABLE `initial_balance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `master_menu`
--
ALTER TABLE `master_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19562;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `product_ingredients`
--
ALTER TABLE `product_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `ready_product_details`
--
ALTER TABLE `ready_product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `sales_executive_models`
--
ALTER TABLE `sales_executive_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sales_payments`
--
ALTER TABLE `sales_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `work_order`
--
ALTER TABLE `work_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_order_ingredient`
--
ALTER TABLE `work_order_ingredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `work_order_party`
--
ALTER TABLE `work_order_party`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `asset_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `expenses_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cheque_details`
--
ALTER TABLE `cheque_details`
  ADD CONSTRAINT `sales_payment_id` FOREIGN KEY (`sales_payment_id`) REFERENCES `sales_payments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `company_id` FOREIGN KEY (`company_id`) REFERENCES `company_info` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_category_id` FOREIGN KEY (`expenses_category_id`) REFERENCES `expenses_category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `master_menu`
--
ALTER TABLE `master_menu`
  ADD CONSTRAINT `fk_menu_parent_id` FOREIGN KEY (`menu_parent_id`) REFERENCES `master_menu` (`id`);

--
-- Constraints for table `permission_roles`
--
ALTER TABLE `permission_roles`
  ADD CONSTRAINT `permission_roles_ibfk_1` FOREIGN KEY (`dynamic_route_id`) REFERENCES `dynamic_routes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `product_category_id` FOREIGN KEY (`product_category_id`) REFERENCES `product_categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase`
--
ALTER TABLE `purchase`
  ADD CONSTRAINT `puchase_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_payments`
--
ALTER TABLE `purchase_payments`
  ADD CONSTRAINT `purchase_payment_purchase_id` FOREIGN KEY (`purchase_id`) REFERENCES `purchase` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_payment_supplier_id` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ready_product_details`
--
ALTER TABLE `ready_product_details`
  ADD CONSTRAINT `ingredient_id` FOREIGN KEY (`ingredient_id`) REFERENCES `product_ingredients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD CONSTRAINT `sales_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_id` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_stock_id` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_payments`
--
ALTER TABLE `sales_payments`
  ADD CONSTRAINT `payment_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_sales_id` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `purchase_id` FOREIGN KEY (`purchase_id`) REFERENCES `purchase` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD CONSTRAINT `supplier_company_id` FOREIGN KEY (`company_id`) REFERENCES `company_info` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `work_order`
--
ALTER TABLE `work_order`
  ADD CONSTRAINT `party_id` FOREIGN KEY (`party_id`) REFERENCES `work_order_party` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `work_order_ingredient`
--
ALTER TABLE `work_order_ingredient`
  ADD CONSTRAINT `work_order_id` FOREIGN KEY (`work_order_id`) REFERENCES `work_order` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `work_order_ingredient_id` FOREIGN KEY (`ingredient_id`) REFERENCES `product_ingredients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `work_order_party`
--
ALTER TABLE `work_order_party`
  ADD CONSTRAINT `work_order_party_ibfk_1` FOREIGN KEY (`company_id`) REFERENCES `company_info` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

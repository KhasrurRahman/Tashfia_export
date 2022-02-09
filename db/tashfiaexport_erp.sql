-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 09, 2022 at 03:56 PM
-- Server version: 10.3.33-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tashfiaexport_erp`
--

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
(16, 'A.S.B. KNITING & FINISHING', NULL, 'POST OFFICE ROAD, FATULLAH, NARAYANGONJ', '8801611098425', 'BANGLADESH', '2022-01-19 11:56:00', '2022-01-19 11:56:00'),
(17, 'M/S DEOLAR TRADING', NULL, 'CHHITTAGONG', '8801819349456', 'BANGLADESH', '2022-01-19 16:38:37', '2022-01-19 16:38:37'),
(19, 'HRS', NULL, 'NARAYAANGANJ', '01304604386', 'BANGLADESH', '2022-01-20 10:11:30', '2022-01-20 10:11:30'),
(20, 'NEW RUPA ENTERPRISE', 'purchase', 'Dhaka', '01706523654', 'BANGLADESH', '2022-01-29 14:56:19', '2022-01-29 14:56:19'),
(21, 'DHRUBO TRADERS', 'sell', 'Dhaka', '0180564730', 'BANGLADESH', '2022-01-29 14:57:01', '2022-01-29 14:57:01'),
(22, 'ASIA KNIT FABRIC', 'sell', 'TOKYO PLAZA', '01725353725', 'BANGLADESH', '2022-01-29 15:39:55', '2022-01-29 15:45:57'),
(23, 'MONIR TRADERS', 'sell', 'NATOR', '01402524959', 'BANGLADESH', '2022-01-29 17:13:40', '2022-01-29 17:13:40'),
(24, 'MD. MAMUN ISLAM', 'purchase', 'MIRPUR DAHA', '01752586743', 'BANGLADESH', '2022-01-30 11:44:47', '2022-01-30 11:44:47'),
(25, 'MD SHAHADAT BHAI', 'sell', 'FARZANA TOWER  NARAYANGANJ', '01819470654', 'BANGLADESH', '2022-01-31 11:49:43', '2022-01-31 11:49:43'),
(26, 'ALAMI', 'purchase', '2 NO GETR', '01629136436', 'BANGLADESH', '2022-01-31 13:50:08', '2022-01-31 13:50:08'),
(28, 'MD. ALAMI HOSSEN', 'workorder', 'NARAYAANGANJ 2 NO GET', '01629136436', 'BANGLADESH', '2022-01-31 14:26:00', '2022-01-31 14:26:00'),
(30, 'DULAL ENTERPRISE', 'purchase', 'BABURAIL, NARAYANGONJ', '01772522563', 'BANGLADESH', '2022-02-02 11:53:40', '2022-02-02 12:17:04'),
(31, 'AZMAL HAQUE', 'purchase', 'DHAKA', '0175246987', 'BANGLADESH', '2022-02-02 12:20:30', '2022-02-02 12:20:30'),
(32, 'ROBIN', 'purchase', 'DHAKA', '01987654456', 'BANGLADESH', '2022-02-02 12:31:22', '2022-02-02 12:31:22'),
(33, 'JAMAL', 'purchase', 'DHAKA', '01815576402', 'BANGLADESH', '2022-02-02 13:40:17', '2022-02-02 13:40:17'),
(36, 'ROBIN ENTERPRISE', 'purchase', 'Mohammadpur,Dhaka', '01756234582', 'BANGLADESH', '2022-02-03 10:49:27', '2022-02-03 10:49:27'),
(37, 'RAJIB ENTERPRISE', 'purchase', '108 VV ROAD NARAYANGONJ', '01681069256', 'BANGLADESH', '2022-02-03 15:17:56', '2022-02-03 15:17:56'),
(38, 'BABA MAYER DOWA FEBRIC', 'purchase', 'WUKIL PARA  NARAYANGANJ', '01817546832', 'BANGLADESH', '2022-02-03 15:56:32', '2022-02-03 15:56:32'),
(46, 'SAMIR FASHION', 'sell', 'MIRPUR 01, DHAKA', '01847176414', 'BANGLADESH', '2022-02-08 16:20:44', '2022-02-08 16:20:44'),
(47, 'TAWSIN FASHION', 'sell', 'MIRPUR 01, DHAKA', '01918345912', 'BANGLADESH', '2022-02-08 16:22:17', '2022-02-08 16:22:17'),
(48, 'JONONI HOSIERY', 'sell', 'CHOUWDHURY  COMPLEX,  MASDAIR', '01711041906', 'BANGLADESH', '2022-02-08 16:24:51', '2022-02-08 16:24:51'),
(49, 'ZAKIA TRADERS', 'sell', 'UTTARA, DHAKA', '01928714022', 'BANGLADESH', '2022-02-08 16:25:55', '2022-02-08 16:25:55'),
(50, 'SHAKHAWAT TRADERS', 'sell', 'DEOBHOG BASHMOLI, NARAYANGONJ', '01914990909', 'BANGLADESH', '2022-02-08 16:27:03', '2022-02-08 16:27:03'),
(51, 'ALAMIN TRADERS', 'sell', 'HOSAINI NOGOR, KASHIPUR', '01918699296', 'BANGLADESH', '2022-02-08 16:27:50', '2022-02-08 16:28:02'),
(52, 'SHAMIM TRADERS', 'sell', 'HOSAINI NOGOR, KASHIPUR', '01861375502', 'BANGLADESH', '2022-02-08 16:29:23', '2022-02-08 16:29:23'),
(53, 'MUNAF FASHION', 'sell', 'KAWLA, UTTARA', '01879661283', 'BANGLADESH', '2022-02-08 16:30:15', '2022-02-08 16:30:15'),
(54, 'R K TRADERS', 'sell', 'RIVERVIEW, NARAYANGONJ', '01780388800', 'BANGLADESH', '2022-02-08 16:31:28', '2022-02-08 16:31:28'),
(55, 'MINTU TRADERS', 'sell', 'RIVERVIEW, NARAYANGONJ', '01933307734', 'BANGLADESH', '2022-02-08 16:34:19', '2022-02-08 16:34:19'),
(56, 'HAUQE KNIT FASHION', 'sell', 'NIMTOLA, NARAYANGONJ', '01638740430', 'BANGLADESH', '2022-02-08 16:35:42', '2022-02-08 16:35:42'),
(57, 'RABEYA GARMENTS', 'sell', 'BISIC, NARAYANGONJ', '01922101081', 'BANGLADESH', '2022-02-08 16:38:23', '2022-02-08 16:38:23'),
(58, 'JAHID ENTERPRISE', 'sell', 'GOLACIPA, NARAYANGONJ', '01733765777', 'BANGLADESH', '2022-02-08 16:39:28', '2022-02-08 16:39:28'),
(59, 'SANJAY TRADERS', 'sell', 'UKIL PARA, NARAYANGANJ', '01963290377', 'BANGLADESH', '2022-02-08 16:41:27', '2022-02-08 16:41:27'),
(60, 'SHAHAJALAL FASHION', 'sell', 'UTTARA, DHAKA', '01742895296', 'BANGLADESH', '2022-02-08 16:43:05', '2022-02-08 16:43:05'),
(61, 'RIVERLAND', 'sell', 'MIRPUR 02, DHAKA', '01615222111', 'BANGLADESH', '2022-02-08 16:44:05', '2022-02-08 16:44:05'),
(62, 'MERY FASHION', 'sell', 'NORSHINPUR, NARAYANGONJ', '01943336836', 'BANGLADESH', '2022-02-08 16:46:47', '2022-02-08 16:46:47'),
(63, 'MONIR TRADERS, KASHIPUR', 'sell', 'KHIL MARKET, KASHIPUR, NARAYANGANJ', '01937593503', 'BANGLADESH', '2022-02-08 16:48:07', '2022-02-08 16:48:07'),
(64, 'ADURI FASHION', 'sell', 'KASHIPUR, COUNCIL, OFFICE, NARAYANGONJ', '01882078261', 'BANGLADESH', '2022-02-08 16:49:24', '2022-02-08 16:49:24'),
(65, 'SUMAIYA KNITING', 'sell', 'NOYAMATI, NARAYANGANJ', '01715392657', 'BANGLADESH', '2022-02-08 16:50:35', '2022-02-08 16:50:35'),
(66, 'KNIT REFLEX', 'sell', 'GODNOGOR, NARAYANGANJ', '01600239157', 'BANGLADESH', '2022-02-08 16:51:33', '2022-02-08 16:51:33'),
(67, 'MANNAN MURUBBI TRADERS', 'sell', 'NOYAMATI , NARAYANGANJ', '016254871445', 'BANGLADESH', '2022-02-08 16:52:16', '2022-02-08 16:52:16'),
(68, 'ROHAN KNIT FABRICS', 'sell', 'NOYAMATI , NARAYANGANJ', '01919346198', 'BANGLADESH', '2022-02-08 16:53:22', '2022-02-08 16:53:22'),
(69, 'SHUVO FASHION', 'sell', 'BISIC, NARAYANGONJ', '01704828509', 'BANGLADESH', '2022-02-08 16:54:37', '2022-02-08 16:54:37'),
(70, 'AL RAYAN FASHION', 'sell', 'FATULLAH, NARAYANGONJ', '01862093331', 'BANGLADESH', '2022-02-08 16:55:37', '2022-02-08 16:55:37'),
(71, 'MOTHER FASHION', 'sell', 'SHIBU MARKET, NARAYANGONJ', '01722383803', 'BANGLADESH', '2022-02-08 16:56:40', '2022-02-08 16:56:40'),
(72, 'SUMI ENTERPRISE', 'sell', 'NOYAMATI , NARAYANGANJ', '01883225458', 'BANGLADESH', '2022-02-08 16:57:41', '2022-02-08 16:57:41'),
(73, 'SOFIQ HUZUR TRADERS', 'sell', 'KALIBAZAR, NARAYANGONJ', '01778533552', 'BANGLADESH', '2022-02-08 16:58:48', '2022-02-08 16:58:48'),
(74, 'MONIR TRADERS, KALIBAZAR', 'sell', 'KALIBAZAR, NARAYANGONJ', '01913064540', 'BANGLADESH', '2022-02-08 16:59:32', '2022-02-08 16:59:32'),
(75, 'RIAD TRADERS', 'sell', '2 NO. RAIL GATE, NARAYANGONJ', '01758254700', 'BANGLADESH', '2022-02-08 17:00:31', '2022-02-08 17:00:31'),
(76, 'AL AMIN TRADERS', 'sell', 'PONCOBOTI, NARAYANGONJ', '01726978659', 'BANGLADESH', '2022-02-08 17:01:57', '2022-02-08 17:01:57'),
(77, 'VIPJON COMPOSITE', 'sell', '2 NO. RAIL GATE, NARAYANGONJ', '01921141514', 'BANGLADESH', '2022-02-08 17:02:58', '2022-02-08 17:02:58'),
(78, 'HASAN KNIT FASHION', 'sell', '1 NO. RAIL GATE, NARAYANGONJ', '01977523813', 'BANGLADESH', '2022-02-08 17:04:02', '2022-02-08 17:04:02'),
(79, 'ANU PRODUCTS', 'sell', 'NOYAMATI , NARAYANGANJ', '01925741917', 'BANGLADESH', '2022-02-08 17:04:48', '2022-02-08 17:04:48'),
(80, 'M/S RAFI KNIT', 'sell', 'UTTORA, DHAKA', '01916740312', 'BANGLADESH', '2022-02-08 17:05:52', '2022-02-08 17:05:52'),
(81, 'DHAKA CLOTH', 'sell', 'HEMAYETPUR, DHAKA', NULL, 'BANGLADESH', '2022-02-08 17:06:38', '2022-02-08 17:06:38'),
(82, 'KEKTASH FASHION', 'sell', 'SUKUMPOTTI, NARAYANGONJ', '01911108918', 'BANGLADESH', '2022-02-08 17:07:41', '2022-02-08 17:07:41'),
(83, 'CLIMAX BD', 'sell', 'BISIC, NARAYANGONJ', '01715019492', 'BANGLADESH', '2022-02-08 17:08:28', '2022-02-08 17:08:28'),
(84, 'ABDULLAH ENTERPRISE', 'sell', 'SIGNBORD, NARAYANGONJ', '01725747663', 'BANGLADESH', '2022-02-08 17:09:45', '2022-02-08 17:09:45'),
(85, 'FAST STEP', 'sell', 'SIGNBORD, NARAYANGONJ', '01728546892', 'BANGLADESH', '2022-02-08 17:10:42', '2022-02-08 17:10:42'),
(86, 'NANNU TRADERS', 'sell', 'HRIDOM PLAZA , NARAYANGONJ', '01725209197', 'BANGLADESH', '2022-02-08 17:11:53', '2022-02-08 17:11:53');

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
(37, 19, 'MD Rafiq MHAMUD', 'general', NULL, '01308606725', NULL, 'DHAKA', NULL, 'DHAKA', '11766.977', NULL, NULL, '', 'BANGLADESHI', 'Marketing Manager', 92, '2022-01-20 10:15:22', '2022-02-02 11:58:47'),
(38, 19, 'Rakib', 'general', NULL, NULL, NULL, NULL, NULL, NULL, '-5000', NULL, NULL, '', NULL, NULL, 92, '2022-01-29 13:49:40', '2022-02-06 16:23:46'),
(39, 16, 'Robin', 'general', NULL, NULL, NULL, NULL, NULL, NULL, '-500', NULL, NULL, '', NULL, NULL, 92, '2022-01-29 13:49:57', '2022-01-29 13:54:08'),
(40, 17, 'Hridoy', 'general', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 92, '2022-01-29 13:50:11', '2022-01-29 13:50:11'),
(41, 19, 'Sohel', 'general', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, 92, '2022-01-29 13:50:30', '2022-01-29 13:50:30'),
(42, 16, 'AL AMIN  HOSSAIN', 'general', NULL, '01705236542', NULL, 'Dhaka', NULL, 'Dhaka', '-1000', NULL, NULL, '', 'BANGLADESHI', 'OWNER', 92, '2022-01-29 13:52:13', '2022-02-02 11:52:26'),
(43, 22, 'MD SADIKUR RAHMAN', 'general', NULL, '01725353725', NULL, 'NARAYANGONJ', NULL, 'NARAYANGANJ', '-800', NULL, NULL, '', 'BANGLADESH', 'OWNER', 92, '2022-01-29 15:42:16', '2022-02-07 13:25:34'),
(44, 23, 'SOHEL ALI', 'general', NULL, '01308606725', NULL, 'MIRPUR DHAKA', NULL, 'NARAYANGANJ', '-13900', 'MIZAN DHALY', NULL, '', 'BANGLADESH', 'OWNER', 92, '2022-01-29 17:16:08', '2022-01-31 16:44:54'),
(45, 25, 'SHA', 'general', NULL, NULL, NULL, NULL, NULL, NULL, '-2000', NULL, NULL, '', NULL, NULL, 92, '2022-01-31 11:53:00', '2022-02-03 16:27:05'),
(46, 25, 'MD. SHADAT', 'general', NULL, '01819470654', NULL, 'FARZANA TAWAR', NULL, 'NARAYANGANJ', '-1208095.88', NULL, NULL, '', 'BANGLADESH', 'OWNER', 92, '2022-01-31 11:54:36', '2022-01-31 12:12:27'),
(48, 30, 'PIAL AHMED', 'general', 'N/R', '04648766945', '05669545565', 'BASHUNDHARA, DHAKA', NULL, 'BASHUNDHARA, DHAKA', NULL, NULL, NULL, '', 'BANGLADESHI', 'Marketing Manager', 92, '2022-02-02 11:56:00', '2022-02-02 11:56:00'),
(55, 81, 'Murray Burnett Traders', 'general', 'xasi@mailinator.com', '48', '15', 'Christian and Stokes Co', NULL, 'Marquez Townsend LLC', '10', 'James and Phelps Associates', '71', '', 'James and Donovan LLC', 'Buckley Robles Trading', 92, '2022-02-09 20:57:45', '2022-02-09 20:57:45'),
(1000, 73, 'Rojas Bell Co', 'general', 'qaxo@mailinator.com', '78', '46', 'Simpson Guerra LLC', NULL, 'Gonzales and Gentry Trading', '13', 'Shaffer Hood Traders', '71', '', 'Key and Hull Traders', 'Miller Aguirre Associates', 92, '2022-02-09 20:59:35', '2022-02-09 20:59:35');

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
(362, 'Customer Sales invoice', 'customer/sales_payment_history_pdf', 'customer', NULL, 'CustomerController@sales_payment_history_pdf', 'get', 1, '{customer_id}', 1, 0, '0', '2022-02-09 20:53:34', '2022-02-09 20:54:30');

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
(9, 13, 'RIDOY', NULL, '3966', 'SAYEM FASHION', '92', '2022-01-17 15:48:03', '2022-01-17 15:48:03'),
(10, 14, 'MD. SOHEL RANA', NULL, '100', 'SAYEM FASHION', '92', '2022-01-30 11:49:09', '2022-01-30 11:49:09'),
(11, 14, 'SULTAN MHAMUD', NULL, '500', 'SAYEM FASHION', '92', '2022-01-31 16:55:04', '2022-01-31 16:55:04'),
(12, 13, 'M ROHIM', NULL, '200', 'SAYEM FASHION', '92', '2022-02-03 11:03:31', '2022-02-03 11:03:31');

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
(12, 'Whoopi Mercer', 'Nemo totam dolore re', 92, '2022-01-17 10:10:00', '2022-01-17 10:10:00'),
(13, 'LABOUR BILL', NULL, 92, '2022-01-17 15:46:14', '2022-01-17 15:46:14'),
(14, 'PARTY LUNCH BILL', 'COMPANY CASH', 92, '2022-01-17 15:49:16', '2022-01-17 15:49:16');

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
(20, 'Product Category', 'Product Category', NULL, 1, 'ik-grid', 300, '2021-10-14 02:50:41', '2021-10-14 02:47:02', 92, NULL),
(21, 'product Ingreadients', 'product Ingreadients', NULL, 1, 'ik-droplet', 295, '2021-10-14 02:50:45', '2021-10-14 02:46:29', 92, NULL),
(22, 'Products', 'Products', NULL, 1, 'ik-layers', NULL, '2021-10-14 02:53:01', '2021-10-04 06:35:22', 92, NULL),
(23, 'Purchase', 'Purchase', NULL, 1, 'ik-check-square', 287, '2021-10-14 02:53:19', '2021-10-13 18:17:09', 92, NULL),
(24, 'Stock', 'Stock Department', NULL, 1, 'ik-layout', 266, '2022-01-12 03:39:05', '2022-01-12 03:39:05', 92, 92),
(25, 'Sales', 'Sales department', NULL, 1, 'ik-codepen', NULL, '2022-01-12 03:39:20', '2022-01-12 03:39:20', 92, 92),
(26, 'Customers', 'Customers', NULL, 1, 'ik-user', 274, '2021-10-14 02:53:35', '2021-10-12 07:39:29', 92, 92),
(27, 'suppliers', 'suppliers', NULL, 1, 'ik-users', 280, '2021-10-14 02:53:38', '2021-10-12 07:40:04', 92, NULL),
(47, 'Create product', 'Create product', 22, 1, NULL, 254, '2021-10-14 02:53:10', '2021-10-04 15:26:49', 92, NULL),
(54, 'Expenses', 'Expenses', NULL, 1, 'ik-dollar-sign', NULL, '2021-10-14 04:25:55', '2021-10-14 04:25:55', 92, NULL),
(55, 'Expenses Categories', 'Expenses Categories', 54, 1, NULL, 308, '2021-10-14 04:26:43', '2021-10-14 04:26:43', 92, NULL),
(56, 'All Expenses', 'All Expenses', 54, 1, NULL, 312, '2021-10-14 05:17:32', '2021-10-14 05:17:32', 92, NULL),
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
(81, 'Account Summary', 'Account Summary', 66, 1, NULL, 358, '2022-01-17 03:27:35', '2022-01-17 03:27:35', 92, NULL);

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
(17256, 12, 1, 'adminDashboard', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17257, 12, 91, 'admin/change_password', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17258, 12, 92, 'admin/save_change_password', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17259, 12, 254, 'product/craete', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17260, 12, 255, 'product/store', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17261, 12, 256, 'product/alldata', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17262, 12, 257, 'product/index', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17263, 12, 258, 'product/view', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17264, 12, 259, 'product/delete', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17265, 12, 286, 'product/ingredients', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17266, 12, 334, 'product/edit', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17267, 12, 335, 'product/update', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17268, 12, 260, 'sales/show_sales_department', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17269, 12, 261, 'sales/get_sales_department_data', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17270, 12, 262, 'sales/store_sales_department_data', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17271, 12, 263, 'sales/edit_sales_department_data', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17272, 12, 264, 'sales/update_sales_department_data', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17273, 12, 265, 'sales/delete_sales_department_data', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17274, 12, 273, 'sales/sales_department_invoice', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17275, 12, 316, 'sales/create', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17276, 12, 317, 'sales/customer_payment_history_search', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17277, 12, 318, 'sales/sales_details_invoice', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17278, 12, 319, 'sales/add_walk_in_cuatomer', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17279, 12, 325, 'sales/sales_due_payment', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17280, 12, 328, 'sales/invoice_payment_history', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17281, 12, 357, 'sales/customer_details', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17282, 12, 266, 'Department/show_lot_department', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17283, 12, 267, 'Department/search', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17284, 12, 268, 'Department/store_lot_department_data', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17285, 12, 269, 'Department/delete_lot_department_data', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17286, 12, 270, 'Department/edit_lot_department_data', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17287, 12, 271, 'Department/update_lot_department_data', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17288, 12, 272, 'Department/show_single_lot_department_data', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17289, 12, 274, 'customer/all_customer', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17290, 12, 275, 'customer/search', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17291, 12, 276, 'customer/store', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17292, 12, 277, 'customer/edit', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17293, 12, 278, 'customer/update', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17294, 12, 279, 'customer/delete', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17295, 12, 307, 'customer/show', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17296, 12, 324, 'customer/view', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17297, 12, 329, 'customer/manual_due_payment', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17298, 12, 280, 'supplier/index', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17299, 12, 281, 'supplier/search', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17300, 12, 282, 'supplier/store', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17301, 12, 283, 'supplier/edit', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17302, 12, 284, 'supplier/update', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17303, 12, 285, 'supplier/delete', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17304, 12, 293, 'supplier/show', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17305, 12, 287, 'purchase/index', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17306, 12, 288, 'purchase/search', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17307, 12, 289, 'purchase/store', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17308, 12, 290, 'purchase/edit', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17309, 12, 291, 'purchase/update', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17310, 12, 292, 'purchase/delete', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17311, 12, 294, 'purchase/show', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17312, 12, 295, 'ingredient/index', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17313, 12, 296, 'ingredient/search', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17314, 12, 297, 'ingredient/store', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17315, 12, 298, 'ingredient/edit', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17316, 12, 299, 'ingredient/delete', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17317, 12, 300, 'productcategory/index', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17318, 12, 301, 'productcategory/search', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17319, 12, 302, 'productcategory/store', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17320, 12, 303, 'productcategory/edit', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17321, 12, 304, 'productcategory/update', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17322, 12, 305, 'productcategory/delete', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17323, 12, 308, 'expenses/expenses_category_index', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17324, 12, 309, 'expenses/expenses_category_search', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17325, 12, 310, 'expenses/expenses_category_store', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17326, 12, 311, 'expenses/expenses_category_delete', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17327, 12, 312, 'expenses/expenses_index', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17328, 12, 313, 'expenses/expenses_search', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17329, 12, 314, 'expenses/expenses_store', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17330, 12, 315, 'expenses/expenses_delete', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17331, 12, 320, 'company/index', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17332, 12, 321, 'company/search', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17333, 12, 322, 'company/store', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17334, 12, 323, 'company/delete', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17335, 12, 330, 'company/edit_company', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17336, 12, 331, 'company/company_update', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17337, 12, 332, 'report/profit_show', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17338, 12, 333, 'report/profit_search', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17339, 12, 343, 'report/sales_commision_report', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17340, 12, 344, 'report/sales_commision_report_show', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17341, 12, 358, 'report/account_summary', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17342, 12, 359, 'report/search_account_summary', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17343, 12, 336, 'sales_executive/show', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17344, 12, 337, 'sales_executive/search', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17345, 12, 338, 'sales_executive/add', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17346, 12, 339, 'sales_executive/delete', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17347, 12, 340, 'sales_executive/edit', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17348, 12, 341, 'sales_executive/update', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17349, 12, 342, 'sales_executive/store', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17350, 12, 346, 'workorder/create_workorder_party', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17351, 12, 347, 'workorder/store_workorder_party', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17352, 12, 348, 'workorder/edit_workorder_party', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17353, 12, 349, 'workorder/update_workorder_party', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17354, 12, 350, 'workorder/search_workorder_party', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17355, 12, 351, 'workorder/delete_workorder_party', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17356, 12, 352, 'workorder/create_workorder', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17357, 12, 353, 'workorder/store_workorder', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17358, 12, 354, 'workorder/index_workorder', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17359, 12, 355, 'workorder/search_workorder', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
(17360, 12, 356, 'workorder/delete_workorder', '2022-02-05 16:58:53', '2022-02-05 16:58:53'),
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
(17834, 11, 1, 'adminDashboard', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17835, 11, 91, 'admin/change_password', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17836, 11, 92, 'admin/save_change_password', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17837, 11, 3, 'dynamic_route', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17838, 11, 4, 'dynamic_route', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17839, 11, 14, 'delete_route', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17840, 11, 16, 'edit_route', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17841, 11, 19, 'update_route', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17842, 11, 5, 'role/all_role', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17843, 11, 6, 'role/add_role', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17844, 11, 8, 'save_role', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17845, 11, 11, 'edit_role', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17846, 11, 12, 'update_role', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17847, 11, 13, 'delete_role', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17848, 11, 9, 'all_user', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17849, 11, 10, 'save_user', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17850, 11, 93, 'edit_user', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17851, 11, 94, 'upadte_user', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17852, 11, 95, 'suspend_user', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17853, 11, 96, 'unsuspend_user', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17854, 11, 127, 'delete_user', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17855, 11, 130, 'test', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17856, 11, 131, 'menu/menu_create', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17857, 11, 133, 'menu/menu_save', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17858, 11, 134, 'menu/all_menu', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17859, 11, 135, 'menu/menu_search', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17860, 11, 138, 'menu/edit_menu', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17861, 11, 139, 'menu/update_menu', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17862, 11, 254, 'product/craete', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17863, 11, 255, 'product/store', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17864, 11, 256, 'product/alldata', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17865, 11, 257, 'product/index', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17866, 11, 258, 'product/view', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17867, 11, 286, 'product/ingredients', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17868, 11, 334, 'product/edit', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17869, 11, 335, 'product/update', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17870, 11, 260, 'sales/show_sales_department', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17871, 11, 261, 'sales/get_sales_department_data', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17872, 11, 262, 'sales/store_sales_department_data', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17873, 11, 263, 'sales/edit_sales_department_data', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17874, 11, 264, 'sales/update_sales_department_data', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17875, 11, 273, 'sales/sales_department_invoice', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17876, 11, 316, 'sales/create', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17877, 11, 317, 'sales/customer_payment_history_search', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17878, 11, 318, 'sales/sales_details_invoice', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17879, 11, 319, 'sales/add_walk_in_cuatomer', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17880, 11, 325, 'sales/sales_due_payment', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17881, 11, 328, 'sales/invoice_payment_history', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17882, 11, 357, 'sales/customer_details', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17883, 11, 361, 'sales/sales_history_pdf_generate', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17884, 11, 266, 'Department/show_lot_department', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17885, 11, 267, 'Department/search', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17886, 11, 268, 'Department/store_lot_department_data', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17887, 11, 270, 'Department/edit_lot_department_data', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17888, 11, 271, 'Department/update_lot_department_data', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17889, 11, 272, 'Department/show_single_lot_department_data', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17890, 11, 274, 'customer/all_customer', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17891, 11, 275, 'customer/search', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17892, 11, 276, 'customer/store', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17893, 11, 277, 'customer/edit', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17894, 11, 278, 'customer/update', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17895, 11, 307, 'customer/show', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17896, 11, 324, 'customer/view', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17897, 11, 329, 'customer/manual_due_payment', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17898, 11, 362, 'customer/sales_payment_history_pdf', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17899, 11, 280, 'supplier/index', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17900, 11, 281, 'supplier/search', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17901, 11, 282, 'supplier/store', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17902, 11, 283, 'supplier/edit', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17903, 11, 284, 'supplier/update', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17904, 11, 293, 'supplier/show', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17905, 11, 287, 'purchase/index', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17906, 11, 288, 'purchase/search', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17907, 11, 289, 'purchase/store', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17908, 11, 290, 'purchase/edit', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17909, 11, 291, 'purchase/update', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17910, 11, 294, 'purchase/show', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17911, 11, 360, 'purchase/purchase_pdf_generate', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17912, 11, 295, 'ingredient/index', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17913, 11, 296, 'ingredient/search', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17914, 11, 297, 'ingredient/store', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17915, 11, 298, 'ingredient/edit', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17916, 11, 300, 'productcategory/index', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17917, 11, 301, 'productcategory/search', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17918, 11, 302, 'productcategory/store', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17919, 11, 303, 'productcategory/edit', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17920, 11, 304, 'productcategory/update', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17921, 11, 308, 'expenses/expenses_category_index', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17922, 11, 309, 'expenses/expenses_category_search', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17923, 11, 310, 'expenses/expenses_category_store', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17924, 11, 311, 'expenses/expenses_category_delete', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17925, 11, 312, 'expenses/expenses_index', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17926, 11, 313, 'expenses/expenses_search', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17927, 11, 314, 'expenses/expenses_store', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17928, 11, 320, 'company/index', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17929, 11, 321, 'company/search', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17930, 11, 322, 'company/store', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17931, 11, 330, 'company/edit_company', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17932, 11, 331, 'company/company_update', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17933, 11, 332, 'report/profit_show', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17934, 11, 333, 'report/profit_search', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17935, 11, 343, 'report/sales_commision_report', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17936, 11, 344, 'report/sales_commision_report_show', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17937, 11, 358, 'report/account_summary', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17938, 11, 359, 'report/search_account_summary', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17939, 11, 336, 'sales_executive/show', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17940, 11, 337, 'sales_executive/search', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17941, 11, 338, 'sales_executive/add', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17942, 11, 340, 'sales_executive/edit', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17943, 11, 341, 'sales_executive/update', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17944, 11, 342, 'sales_executive/store', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17945, 11, 346, 'workorder/create_workorder_party', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17946, 11, 347, 'workorder/store_workorder_party', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17947, 11, 348, 'workorder/edit_workorder_party', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17948, 11, 349, 'workorder/update_workorder_party', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17949, 11, 350, 'workorder/search_workorder_party', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17950, 11, 352, 'workorder/create_workorder', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17951, 11, 353, 'workorder/store_workorder', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17952, 11, 354, 'workorder/index_workorder', '2022-02-09 21:03:18', '2022-02-09 21:03:18'),
(17953, 11, 355, 'workorder/search_workorder', '2022-02-09 21:03:18', '2022-02-09 21:03:18');

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
(42, 13, 'DENIM', '1267', 'MD. RAZIB SAHA', '300', NULL, 'NAVY', 'Open', NULL, '200', NULL, NULL, '2022-01-15 00:00:00', '2022-01-15 00:00:00', '201', '201', '201', NULL, '200', 'DENIM', '1510004682', NULL, NULL, NULL, '2022-01-17 12:09:02', '2022-02-06 13:15:44'),
(43, 12, 'pk', '202', 'MD. RAKIB', '200', NULL, 'black', 'Open', NULL, '200', NULL, NULL, '2022-01-17 00:00:00', '2022-01-16 00:00:00', '202', '202', NULL, NULL, '200', 'PK', '1922545858', NULL, NULL, NULL, '2022-01-17 12:28:56', '2022-02-02 12:39:24'),
(44, 13, 'cotton s/j', '105', 'tajul islam', '500', NULL, 'NAVY', 'Open', '10', '150', NULL, NULL, '2022-01-19 00:00:00', '2022-01-19 00:00:00', '102', '102', '152', '36', '150', 'COTTON', '538574841', NULL, NULL, NULL, '2022-01-17 13:34:49', '2022-01-17 15:15:57'),
(45, 1, 'Molestiae optio pla', 'Sunt ea magna aut la', 'Nell Burns', '400', NULL, 'Katell Maldonado', 'Nisi enim sed impedi', 'Pariatur Dolores pl', 'Ipsam sed voluptatem', 'Velit saepe ut omnis', 'Soluta quia aut exer', '1982-05-28 00:00:00', '1990-02-06 00:00:00', 'Ipsum atque pariatur', 'Autem nulla blanditi', 'Est aliquam minima', 'Aliquip quae aliqua', 'Exercitation accusan', 'Nihil quisquam eu do', '822093267', 'In impedit sunt tem', 'Adipisci dolore accu', NULL, '2022-01-19 11:41:20', '2022-02-06 15:37:59'),
(46, 1, 'BRIGHT POLYSTER', '1561', 'MD.HUMAYON / MD.ILLIAS', '350', NULL, 'AVERAGE', 'Open', NULL, '100', NULL, NULL, '2022-01-18 00:00:00', '2022-01-18 00:00:00', NULL, NULL, NULL, NULL, '100', 'POLYSTER S/J', '1661874650', '25', '65', NULL, '2022-01-19 12:00:19', '2022-02-06 12:53:42'),
(47, 1, 'BRIGHT POLYSTER', '5903', 'MD.HUMAYON / MD.ILLIAS', '1200', NULL, 'WHITE', 'Open', NULL, '100', NULL, NULL, '2022-01-19 00:00:00', '2022-01-19 00:00:00', NULL, NULL, NULL, NULL, '100', 'POLYSTER S/J', '1145882979', '25', '65', NULL, '2022-01-19 12:15:47', '2022-02-06 12:58:36'),
(48, 1, 'MICO PRINT S/J  FABRICS', '651', 'MD. DELOAR HOSSAIN', '2540', NULL, 'AVERAGE', 'Open', NULL, '160', NULL, NULL, '2022-01-19 00:00:00', '2022-01-19 00:00:00', '00-20', NULL, NULL, NULL, '160', 'MICO PRINT', '994242946', '118', '60', NULL, '2022-01-19 16:42:33', '2022-01-19 16:43:17'),
(49, 1, 'average colour viscos fine fabrics', '152', NULL, '8000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 's/j', '1991854225', NULL, NULL, NULL, '2022-01-29 15:37:20', '2022-01-29 15:38:18'),
(50, 1, 'ELCE', '1211', 'ALAMIN', '200', NULL, '01629136436', 'Open', '101', '100', 'N/R', '3', '2022-01-31 00:00:00', '2022-01-31 00:00:00', '100', NULL, NULL, NULL, '100', 'FLCE', '1532208039', '178', '50', NULL, '2022-01-31 13:57:11', '2022-02-07 13:31:29'),
(51, 1, 'SOLIT FLEC COMBOL', '1215', 'ALAMIN', NULL, NULL, 'WHITE', 'Open', NULL, '300', 'N/R', NULL, '2022-01-31 00:00:00', '2022-01-31 00:00:00', '201', '10', NULL, '36', '300', 'KOMBOL', '730162203', '178', '65', NULL, '2022-01-31 14:07:13', '2022-01-31 14:07:13'),
(52, 1, 'SOLIT FLECE COMBOL', '220', 'SAMI FASHION', '250', NULL, 'NAVY', NULL, '101', NULL, NULL, NULL, '2022-01-31 00:00:00', '2022-01-31 00:00:00', '100', NULL, NULL, NULL, NULL, 'FIECE COMBOL', '1533204574', '178', '65', NULL, '2022-01-31 14:13:15', '2022-02-06 12:40:32'),
(53, 1, 'SOLIT FLECE COMBOL', '1211', 'MD. ALAMIN', NULL, NULL, 'WHITE', 'Open', '50', NULL, '26', NULL, '2022-01-31 00:00:00', '2022-01-31 00:00:00', '10', '10', NULL, '40', '300', 'COMBOL', '200200776', '178', '50', NULL, '2022-01-31 14:18:21', '2022-01-31 14:18:21'),
(54, 1, 'SOLIT FLECE COMBOL', '220', NULL, NULL, NULL, 'NAVY', NULL, '10', '300', NULL, '12', '2022-01-31 00:00:00', '2022-01-31 00:00:00', '5', '101', NULL, '10', '300', 'SOLIT FLECE COMBOL', '2020228891', '178', '65', NULL, '2022-01-31 14:30:18', '2022-01-31 14:30:18'),
(55, 1, '1*1 RIB', '121212', 'MD DULAL HOSSAIN', NULL, NULL, 'AVERAGE', 'tube', NULL, 'normal', NULL, NULL, '2022-02-02 00:00:00', NULL, NULL, NULL, NULL, NULL, 'normal', 'LYCRA RIB', '858929782', '20', '24', NULL, '2022-02-02 11:50:10', '2022-02-02 11:50:10'),
(56, 18, '2*2 RIB', '232323', 'PULOK AHMED', NULL, NULL, 'royal blue', 'tube', NULL, 'normal', NULL, NULL, '2022-02-02 00:00:00', NULL, NULL, NULL, NULL, NULL, 'normal', 'LYCRA RIB', '837996471', '10', 'NORMAL', NULL, '2022-02-02 12:01:39', '2022-02-02 12:01:39'),
(57, 1, 'PK', '1236', 'AZMAL', NULL, NULL, 'BLACK', 'OPEN', NULL, '150', NULL, NULL, '2022-02-03 00:00:00', '2022-02-03 00:00:00', NULL, NULL, NULL, NULL, '150', 'PK', '739580048', '250', NULL, NULL, '2022-02-02 12:26:05', '2022-02-02 12:26:05'),
(58, 1, 'PK', '1238', 'ROBIN', NULL, NULL, 'RED', 'OPEN', NULL, '160', NULL, NULL, '2022-02-04 00:00:00', '2022-02-04 00:00:00', NULL, NULL, NULL, NULL, NULL, 'PK', '1713121129', '200', NULL, NULL, '2022-02-02 12:35:23', '2022-02-02 12:35:23'),
(59, 1, 'PK', NULL, 'JMAL', NULL, NULL, 'BLACK', 'OPEN', '120', NULL, NULL, NULL, '2022-02-06 00:00:00', '2022-02-06 00:00:00', NULL, NULL, NULL, NULL, NULL, 'PK', '171664465', '300', NULL, NULL, '2022-02-02 13:44:47', '2022-02-02 13:44:47'),
(60, 1, 'THAR FEBRIC', '165', 'ROBIN', '2000', NULL, 'MAYRUN', 'Open', '10', '240', NULL, NULL, '2022-02-03 00:00:00', '2022-02-03 00:00:00', NULL, NULL, NULL, NULL, '170', 'THAR', '1617679409', '40', '34', NULL, '2022-02-03 10:53:29', '2022-02-03 10:58:26'),
(61, 1, 'COTON PRINT', '1304', 'RAJIB SAHA', '1768.84', NULL, 'AVERAGE', 'Open', NULL, '150', NULL, NULL, '2022-02-03 00:00:00', '2022-02-03 00:00:00', NULL, NULL, NULL, NULL, '150', 'PRINT', '2142966431', '73', '36', NULL, '2022-02-03 15:21:29', '2022-02-03 15:24:36'),
(62, 1, 'VISCOS PRINT FABRICS', '1294', 'RAJIB SAHA', '3502.90', NULL, 'AVERAGE', 'Open', NULL, '140', NULL, NULL, '2022-02-03 00:00:00', NULL, NULL, NULL, NULL, NULL, '140', 'VISCOS PRINT', '629679740', '166', '36', NULL, '2022-02-03 15:36:04', '2022-02-03 15:38:21'),
(63, 1, 'NAVY VISCOS FLOWER PRINT KOLAGASH', '1267', 'RAJIB SAHA', '3597.55', NULL, 'NAVY', 'Open', NULL, '150', NULL, NULL, '2022-02-03 00:00:00', NULL, NULL, NULL, NULL, NULL, '150', 'VISCOS PRINT', '1900941406', '180', '72', NULL, '2022-02-03 15:43:18', '2022-02-03 15:45:59'),
(64, 1, 'SAD PINT VICOS', '3759', 'MD. RIYAD', '500', NULL, 'PINT', 'Open', NULL, '100', NULL, NULL, '2022-02-03 00:00:00', '2022-02-03 00:00:00', NULL, NULL, NULL, NULL, '100', 'VISCOS PRINT', '1069531568', '9', NULL, NULL, '2022-02-03 16:01:10', '2022-02-06 12:41:57'),
(65, 1, 'PK', '155', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-06 00:00:00', '2022-02-06 00:00:00', NULL, NULL, NULL, NULL, '155', 'PK', '1846777668', '150', '50', NULL, '2022-02-06 12:10:32', '2022-02-06 12:10:32'),
(66, 1, 'BISCOS PRINT', '156', 'NAZMUL', '100', NULL, 'AVERAGE', 'OPEN', '120', '150', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '150', 'COTON', '1106284587', '10', NULL, NULL, '2022-02-06 12:31:00', '2022-02-06 12:31:59'),
(67, 1, 'DENIM FEBRICS', '1256', 'SHAKIL KHAN', NULL, NULL, 'AVERAGE', 'OPEN', '123', '150', NULL, NULL, '2022-02-06 00:00:00', '2022-02-06 00:00:00', NULL, NULL, NULL, NULL, '150', 'DENIM', '338776138', '15', '36', NULL, '2022-02-06 13:14:43', '2022-02-06 13:14:43'),
(68, 1, 'SINGLE JERSY', '1585', 'AZMAL HOSSAIN', '500', NULL, 'AVERAGE', 'OPEN', NULL, '150', NULL, NULL, '2022-02-07 00:00:00', '2022-02-07 00:00:00', NULL, NULL, NULL, NULL, '150', 'S/J', '396981980', '15', '36', NULL, '2022-02-07 13:19:20', '2022-02-07 13:20:50');

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
(1, 'PURCHASE PRODUCTS', 92, '2022-01-17 15:00:52', '2022-01-17 15:00:52'),
(2, 'ready product', NULL, NULL, NULL),
(12, 'purchase product', 92, '2022-01-17 11:34:57', '2022-01-17 11:34:57'),
(13, 'PURCHASE PRODUCTS', 92, '2022-01-17 12:05:37', '2022-01-17 12:05:37'),
(14, 'PURCHASE PRODUCTS', 92, '2022-01-17 13:32:07', '2022-01-17 13:32:07'),
(16, 'MD ALAMIN HOSSEN', 92, '2022-01-31 14:20:38', '2022-01-31 14:20:38'),
(17, 'PURCHASE PRODUCTS', 92, '2022-02-02 11:57:20', '2022-02-02 11:57:20'),
(18, 'NEW FABRIC PURCHASE', 92, '2022-02-02 11:57:56', '2022-02-02 11:57:56');

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

--
-- Dumping data for table `product_ingredients`
--

INSERT INTO `product_ingredients` (`id`, `name`, `quantity`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'FLCE', '1800', NULL, 92, '2022-01-31 13:58:31', '2022-01-31 13:58:31');

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
  `status` varchar(255) DEFAULT '1',
  `unit_price` decimal(10,2) DEFAULT NULL,
  `total_purchas_price` decimal(10,2) DEFAULT NULL,
  `actual_unit_price` decimal(10,2) DEFAULT NULL,
  `actual_purchas_price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `product_id`, `supplier_id`, `created_by`, `quantity`, `status`, `unit_price`, `total_purchas_price`, `actual_unit_price`, `actual_purchas_price`, `created_at`, `updated_at`) VALUES
(25, 46, 18, '92', 0.000, '1', 258.00, 107586.00, 258.00, 107586.00, '2022-01-19 12:05:48', '2022-01-19 12:06:56'),
(26, 46, 18, '92', 0.000, '1', 236.00, 94872.00, 236.00, 94872.00, '2022-01-19 12:19:06', '2022-01-19 12:20:18'),
(27, 48, 19, '92', 0.000, '1', 365.00, 927100.00, 365.00, 927100.00, '2022-01-19 16:43:17', '2022-01-19 16:43:41'),
(28, 49, 19, '92', 0.000, '1', 150.00, 1200000.00, 150.00, 1200000.00, '2022-01-29 15:38:18', '2022-01-29 15:38:50'),
(29, 52, 25, '92', 290.000, '1', 307.00, 2726467.00, 3071.13, 27274664.00, '2022-01-31 14:33:30', '2022-02-01 13:05:58'),
(30, 43, 26, '92', 0.000, '1', 150.00, 75000.00, 154.00, 77000.00, '2022-02-02 12:28:01', '2022-02-02 12:29:02'),
(31, 43, 27, '92', 0.000, '1', 600.00, 120000.00, 610.00, 122000.00, '2022-02-02 12:39:24', '2022-02-02 12:41:18'),
(32, 60, 29, '92', 0.000, '1', 330.69, 661386.00, 333.19, 666386.00, '2022-02-03 10:58:26', '2022-02-03 10:59:00'),
(33, 61, 30, '92', 0.840, '1', 325.00, 574873.00, 325.85, 576373.00, '2022-02-03 15:24:36', '2022-02-03 15:25:16'),
(34, 62, 30, '92', 0.900, '1', 420.00, 1471218.00, 420.86, 1474218.00, '2022-02-03 15:38:21', '2022-02-03 15:38:50'),
(35, 63, 30, '92', 0.550, '1', 298.00, 1072069.90, 298.88, 1075241.00, '2022-02-03 15:45:59', '2022-02-03 15:46:54'),
(37, 42, 20, '92', 200.000, '1', 200.00, 40000.00, 210.00, 42000.00, '2022-02-06 12:38:17', '2022-02-06 12:55:40'),
(39, 64, 30, '92', 500.000, '1', 100.00, 50000.00, 102.00, 51000.00, '2022-02-06 12:41:58', '2022-02-06 12:41:58');

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

INSERT INTO `sales` (`id`, `customer_id`, `sales_executive_id`, `total_price`, `payment_amount`, `due`, `reference`, `sales_date`, `status`, `sales_code`, `profit_or_loss`, `date`, `created_by`, `created_at`, `updated_at`) VALUES
(127, 37, 6, 1500.00, 1000.00, 500.00, NULL, NULL, 0, '1732715988', -1080.00, NULL, NULL, '2022-01-26 23:22:09', '2022-01-26 23:22:09'),
(130, 37, 3, 37500.00, 30000.00, 7500.00, NULL, NULL, 0, '117595291', -1200.00, NULL, NULL, '2022-01-29 13:32:10', '2022-01-29 13:32:10'),
(131, 37, 4, 16767.34, 10000.00, 6767.34, NULL, NULL, 0, '374894004', -302.66, NULL, NULL, '2022-01-29 13:43:10', '2022-01-29 13:43:10'),
(132, 38, 3, 1500.00, 1000.00, 500.00, NULL, NULL, 0, '161011874', -1080.00, NULL, NULL, '2022-01-29 13:51:05', '2022-01-29 13:51:05'),
(133, 39, 3, 1500.00, 1000.00, 500.00, NULL, NULL, 0, '119752601', -860.00, NULL, NULL, '2022-01-29 13:54:08', '2022-01-29 13:54:08'),
(134, 43, 12, 165780.00, 165780.00, 0.00, NULL, NULL, 1, '719725652', 73680.00, NULL, NULL, '2022-01-29 15:47:47', '2022-01-29 15:47:47'),
(135, 44, 9, 26000.00, 15000.00, 11000.00, NULL, NULL, 0, '950936537', 2400.00, NULL, NULL, '2022-01-29 17:18:04', '2022-01-29 17:18:04'),
(136, 44, 12, 30000.00, 30000.00, 0.00, NULL, NULL, 1, '1798313853', 6400.00, NULL, NULL, '2022-01-29 17:44:41', '2022-01-29 17:44:41'),
(137, 44, 2, 4375.00, 4375.00, 0.00, NULL, NULL, 1, '1380975611', -3460.00, NULL, NULL, '2022-01-30 11:39:21', '2022-01-30 11:39:21'),
(138, 46, 8, 133365.31, 133365.00, 0.31, NULL, NULL, 0, '1131267545', -30191.19, NULL, NULL, '2022-01-31 12:00:22', '2022-01-31 12:00:22'),
(139, 46, 8, 1337604.94, 132080.00, 1205524.94, NULL, NULL, 0, '2079634310', 1174048.44, NULL, NULL, '2022-01-31 12:05:13', '2022-01-31 12:05:13'),
(140, 46, 8, 133365.31, 132080.00, 1285.31, NULL, NULL, 0, '777424551', -30191.19, NULL, NULL, '2022-01-31 12:08:05', '2022-01-31 12:08:05'),
(141, 46, 8, 133365.31, 132080.00, 1285.31, NULL, NULL, 0, '853926939', -30191.19, NULL, NULL, '2022-01-31 12:12:27', '2022-01-31 12:12:27'),
(144, 38, 8, 20250.00, 20250.00, 0.00, NULL, NULL, 1, '1155762605', 3810.00, NULL, NULL, '2022-01-31 16:39:11', '2022-01-31 16:39:11'),
(145, 44, 3, 3000.00, 100.00, 2900.00, NULL, NULL, 0, '1089149481', 420.00, NULL, NULL, '2022-01-31 16:44:54', '2022-01-31 16:44:54'),
(146, 38, 8, 3000.00, 0.00, 3000.00, NULL, NULL, 0, '745425067', 420.00, NULL, NULL, '2022-02-01 12:58:51', '2022-02-01 12:58:51'),
(148, 42, 1, 1500.00, 500.00, 1000.00, NULL, NULL, 0, '1555540012', -1080.00, NULL, NULL, '2022-02-02 11:52:26', '2022-02-02 11:52:26'),
(149, 37, 1, 4500.02, 1500.00, 3000.02, NULL, NULL, 0, '2058843946', 2393.53, NULL, NULL, '2022-02-02 11:58:47', '2022-02-02 11:58:47'),
(152, 38, 5, 1500.00, 1000.00, 500.00, NULL, NULL, 0, '117774415', -40.00, NULL, NULL, '2022-02-03 16:08:05', '2022-02-03 16:08:06'),
(153, 45, 3, 42000.00, 40000.00, 2000.00, NULL, NULL, 0, '1822366634', 12112.00, NULL, NULL, '2022-02-03 16:27:05', '2022-02-03 16:27:05'),
(155, 38, 1, 1500.00, 1000.00, 500.00, NULL, NULL, 0, '49710854', -40.00, NULL, NULL, '2022-02-06 15:52:08', '2022-02-06 15:52:08'),
(156, 38, 3, 2000.00, 1500.00, 500.00, NULL, NULL, 0, '2025522972', -580.00, NULL, NULL, '2022-02-06 16:23:46', '2022-02-06 16:23:46'),
(157, 43, 2, 1800.00, 1000.00, 800.00, NULL, NULL, 0, '1113039010', 260.00, NULL, NULL, '2022-02-07 13:25:34', '2022-02-07 13:25:34');

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
(172, 37, 127, 28, '10', NULL, 150.00, 1500.00, 258.00, 2580.00, 0.00, '2022-01-26 23:22:09', '2022-01-26 23:22:09'),
(175, 37, 130, 28, '150', NULL, 250.00, 37500.00, 258.00, 38700.00, 0.00, '2022-01-29 13:32:10', '2022-01-29 13:32:10'),
(176, 37, 131, 28, '10', NULL, 100.00, 1000.00, 258.00, 2580.00, 5.00, '2022-01-29 13:43:10', '2022-01-29 13:43:10'),
(177, 37, 131, 29, '15', NULL, 551.16, 8267.34, 236.00, 3540.00, 3.00, '2022-01-29 13:43:10', '2022-01-29 13:43:10'),
(178, 37, 131, 30, '30', NULL, 250.00, 7500.00, 365.00, 10950.00, 10.00, '2022-01-29 13:43:10', '2022-01-29 13:43:10'),
(179, 38, 132, 28, '10', NULL, 150.00, 1500.00, 258.00, 2580.00, 10.00, '2022-01-29 13:51:05', '2022-01-29 13:51:05'),
(180, 39, 133, 29, '10', NULL, 150.00, 1500.00, 236.00, 2360.00, 2.00, '2022-01-29 13:54:08', '2022-01-29 13:54:08'),
(181, 43, 134, 31, '614', NULL, 270.00, 165780.00, 150.00, 92100.00, 31.00, '2022-01-29 15:47:47', '2022-01-29 15:47:47'),
(182, 44, 135, 29, '100', NULL, 260.00, 26000.00, 236.00, 23600.00, 10.00, '2022-01-29 17:18:04', '2022-01-29 17:18:04'),
(183, 44, 136, 29, '100', NULL, 300.00, 30000.00, 236.00, 23600.00, 8.00, '2022-01-29 17:44:41', '2022-01-29 17:44:41'),
(184, 44, 137, 29, '10', NULL, 160.00, 1600.00, 236.00, 2360.00, 1.00, '2022-01-30 11:39:21', '2022-01-30 11:39:21'),
(185, 44, 137, 30, '15', NULL, 185.00, 2775.00, 365.00, 5475.00, 1.00, '2022-01-30 11:39:21', '2022-01-30 11:39:21'),
(186, 46, 138, 30, '448.10', NULL, 297.62, 133365.31, 365.00, 163556.50, 26.00, '2022-01-31 12:00:22', '2022-01-31 12:00:22'),
(187, 46, 139, 30, '448.10', NULL, 2985.06, 1337604.94, 365.00, 163556.50, 26.00, '2022-01-31 12:05:13', '2022-01-31 12:05:13'),
(188, 46, 140, 30, '448.10', NULL, 297.62, 133365.31, 365.00, 163556.50, 26.00, '2022-01-31 12:08:05', '2022-01-31 12:08:05'),
(189, 46, 141, 30, '448.10', NULL, 297.62, 133365.31, 365.00, 163556.50, 26.00, '2022-01-31 12:12:27', '2022-01-31 12:12:27'),
(193, 38, 144, 28, '50', '103', 300.00, 15000.00, 258.00, 12900.00, 2.00, '2022-01-31 16:39:11', '2022-01-31 16:39:11'),
(194, 38, 144, 29, '15', '104', 350.00, 5250.00, 236.00, 3540.00, 1.00, '2022-01-31 16:39:11', '2022-01-31 16:39:11'),
(195, 44, 145, 28, '10', '106', 300.00, 3000.00, 258.00, 2580.00, 1.00, '2022-01-31 16:44:54', '2022-01-31 16:44:54'),
(196, 38, 146, 28, '10', '107', 300.00, 3000.00, 258.00, 2580.00, 1.00, '2022-02-01 12:58:51', '2022-02-01 12:58:51'),
(199, 42, 148, 28, '10', '123', 150.00, 1500.00, 258.00, 2580.00, 10.00, '2022-02-02 11:52:26', '2022-02-02 11:52:26'),
(200, 37, 149, 28, '8.1647', '1587', 551.16, 4500.02, 258.00, 2106.49, 10.00, '2022-02-02 11:58:47', '2022-02-02 11:58:47'),
(205, 38, 152, 44, '10', '123', 150.00, 1500.00, 154.00, 1540.00, 2.00, '2022-02-03 16:08:06', '2022-02-03 16:08:06'),
(208, 38, 155, 44, '10', '153', 150.00, 1500.00, 154.00, 1540.00, 5.00, '2022-02-06 15:52:08', '2022-02-06 15:52:08'),
(209, 38, 156, 28, '10', '150', 200.00, 2000.00, 258.00, 2580.00, 10.00, '2022-02-06 16:23:46', '2022-02-06 16:23:46');

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
(1, 'MONIRUL ISLAM', NULL, '01847092041', NULL, NULL, '2021-12-26 17:52:15', '2022-01-17 11:20:18'),
(2, 'SULTAN MHAMUD', NULL, '01732674128', NULL, NULL, '2021-12-26 17:52:19', '2022-01-17 11:19:23'),
(3, 'MASUM SHEIKH', NULL, '01992410495', NULL, NULL, '2022-01-17 11:47:37', '2022-01-17 11:47:37'),
(4, 'RIDS AHMED', NULL, '01833931985', 'SIDDIRGANJ, NARAYANGANJ', 'SIDDIRGANJ, NARAYANGANJ', '2022-01-17 11:49:05', '2022-01-17 11:51:24'),
(5, 'RIDOY HASAN', NULL, '01793411726', NULL, NULL, '2022-01-17 11:52:07', '2022-01-17 11:52:07'),
(6, 'FAHIM DEWAN', NULL, '01920154610', NULL, NULL, '2022-01-17 11:52:49', '2022-01-17 11:52:49'),
(7, 'SHAJOL ALI', NULL, '01722134728', NULL, NULL, '2022-01-17 11:53:18', '2022-01-17 11:53:18'),
(8, 'SOHEL RANA', NULL, '01304604386', 'NATOR', NULL, '2022-01-17 11:53:42', '2022-01-17 11:53:42'),
(9, 'AL AMIN  HOSSAIN', NULL, '01402524959', NULL, NULL, '2022-01-17 11:54:23', '2022-01-17 11:54:23'),
(10, 'DULAL NANA', NULL, '01732569103', NULL, NULL, '2022-01-17 11:54:51', '2022-01-17 11:54:51'),
(11, 'RAHAT', NULL, '01409599680', NULL, NULL, '2022-01-17 11:55:20', '2022-01-17 11:55:20'),
(12, 'MIZAN DHALY', NULL, '01954762929', NULL, NULL, '2022-01-17 11:56:47', '2022-01-17 11:56:47'),
(13, 'SIFAT RAHMAN', NULL, '01789433842, 01302900481', NULL, NULL, '2022-01-17 11:57:44', '2022-01-17 11:57:44'),
(14, 'SULTAN MHAMUD', NULL, '017326741280', 'NARAYANGANJ', 'NARAYANGANJ', '2022-01-31 16:56:14', '2022-01-31 16:58:08'),
(15, 'RAZA MIA', NULL, '01850654236', 'BONDOR NARAYANGONJ', 'BONDOR NARAYANGONJ', '2022-02-03 11:09:31', '2022-02-03 11:09:54');

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

INSERT INTO `sales_payments` (`id`, `sales_id`, `customer_id`, `amount`, `payment_mode`, `cheque_number`, `cheque_due_date`, `bkash_number`, `bkash_trns_id`, `card_number`, `card_expire_date`, `remark`, `created_at`, `updated_at`) VALUES
(131, 127, 37, 1000, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-26 23:22:09', '2022-01-26 23:22:09'),
(134, 130, 37, 30000, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-29 13:32:10', '2022-01-29 13:32:10'),
(135, 131, 37, 10000, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-29 13:43:10', '2022-01-29 13:43:10'),
(136, 132, 38, 1000, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-29 13:51:05', '2022-01-29 13:51:05'),
(137, 133, 39, 1000, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-29 13:54:08', '2022-01-29 13:54:08'),
(138, 134, 43, 165780, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-29 15:47:47', '2022-01-29 15:47:47'),
(139, 135, 44, 15000, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-29 17:18:04', '2022-01-29 17:18:04'),
(140, 136, 44, 30000, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-29 17:44:41', '2022-01-29 17:44:41'),
(141, 137, 44, 4375, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-30 11:39:21', '2022-01-30 11:39:21'),
(142, 138, 46, 133365, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 12:00:22', '2022-01-31 12:00:22'),
(143, 139, 46, 132080, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 12:05:13', '2022-01-31 12:05:13'),
(144, 140, 46, 132080, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 12:08:05', '2022-01-31 12:08:05'),
(145, 141, 46, 132080, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 12:12:27', '2022-01-31 12:12:27'),
(148, 144, 38, 20250, 'Cheque', '1245453636565', '2022-02-04 00:00:00', NULL, NULL, NULL, NULL, NULL, '2022-01-31 16:39:11', '2022-01-31 16:39:11'),
(149, 145, 44, 100, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 16:44:54', '2022-01-31 16:44:54'),
(150, 146, 38, 0, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-01 12:58:51', '2022-02-01 12:58:51'),
(152, 148, 42, 500, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-02 11:52:26', '2022-02-02 11:52:26'),
(153, 149, 37, 1500, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-02 11:58:47', '2022-02-02 11:58:47'),
(157, 152, 38, 1000, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-03 16:08:06', '2022-02-03 16:08:06'),
(158, 153, 45, 40000, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-03 16:27:05', '2022-02-03 16:27:05'),
(160, 155, 38, 1000, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-06 15:52:08', '2022-02-06 15:52:08'),
(161, 156, 38, 1500, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-06 16:23:46', '2022-02-06 16:23:46'),
(162, 157, 43, 1000, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-02-07 13:25:34', '2022-02-07 13:25:34');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `quantity` decimal(10,3) DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `purchase_id`, `created_by`, `quantity`, `status`, `date`, `created_at`, `updated_at`) VALUES
(28, 25, '92', 18.835, '1', NULL, '2022-01-19 12:06:56', '2022-02-06 16:23:46'),
(29, 26, '92', 140.660, '1', NULL, '2022-01-19 12:20:18', '2022-01-31 16:39:11'),
(30, 27, '92', 262.600, '1', NULL, '2022-01-19 16:43:41', '2022-02-03 10:43:07'),
(31, 28, '92', 7386.000, '1', NULL, '2022-01-29 15:38:50', '2022-01-29 15:47:47'),
(32, 29, '92', 8581.000, '1', NULL, '2022-01-31 14:43:09', '2022-02-01 13:07:23'),
(42, 29, '92', -59.000, '1', NULL, '2022-02-01 13:04:01', '2022-02-01 13:04:01'),
(43, 29, '92', 29.000, '1', NULL, '2022-02-01 13:05:58', '2022-02-01 13:07:23'),
(44, 30, '92', 270.000, '1', NULL, '2022-02-02 12:29:02', '2022-02-06 15:52:08'),
(45, 31, '92', 200.000, '1', NULL, '2022-02-02 12:41:18', '2022-02-02 12:41:18'),
(46, 32, '92', 2000.000, '1', NULL, '2022-02-03 10:59:00', '2022-02-03 10:59:00'),
(47, 33, '92', 1768.000, '1', NULL, '2022-02-03 15:25:16', '2022-02-03 15:25:16'),
(48, 34, '92', 3502.000, '1', NULL, '2022-02-03 15:38:50', '2022-02-03 15:38:50');

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
(18, 16, 'MD.HUMAYON / MD. ILLIAS', NULL, '8801611098425', NULL, 'POST OFFICE ROAD, FATULLAH, NARAYANGONJ', 'POST OFFICE ROAD, FATULLAH, NARAYANGONJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-01-19 11:57:45', '2022-01-19 11:57:45'),
(19, 17, 'MD.DELOAR HOSSAIN', NULL, '8801819349456', NULL, 'CHITTAGONG', 'CHITTAGONG', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-01-19 16:40:08', '2022-01-19 16:40:08'),
(20, 26, 'ALAMIN', NULL, '01629136436', NULL, '2 NO GET', 'NARAYANGANJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-01-31 13:52:31', '2022-01-31 13:52:31'),
(21, 26, 'AL AMIN  HOSSAIN', NULL, '01629136436', NULL, 'NARYANGANJ', 'NARYANGANJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-01-31 14:10:46', '2022-01-31 14:10:46'),
(22, 26, 'AL AMIN  HOSSAIN', NULL, '01629136436', NULL, 'NARYANGANJ', 'NARYANGANJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-01-31 14:10:46', '2022-01-31 14:10:46'),
(24, 28, 'MD ALAMIN HOSSEN', NULL, '01629136436', NULL, 'NARYANGANJ', 'NARAYANGANJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-01-31 14:27:54', '2022-01-31 14:27:54'),
(25, 28, 'MD ALAMIN HOSSEN', NULL, '01629136436', NULL, 'NARYANGANJ', 'NARAYANGANJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-01-31 14:27:56', '2022-01-31 14:27:56'),
(26, 31, 'AZMAL', NULL, '0185467456', NULL, 'DHAKA', 'DHAKA', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-02-02 12:23:53', '2022-02-02 12:23:53'),
(27, 32, 'ROBIN', NULL, NULL, NULL, 'DHAKA', 'DHAKA', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-02-02 12:32:40', '2022-02-02 12:32:40'),
(28, 33, 'JMAL', NULL, '01815576402', NULL, 'DHAKA', 'DHAKA', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-02-02 13:51:56', '2022-02-02 13:51:56'),
(29, 36, 'ROBIN', NULL, '017023654535', NULL, 'Mohammadpur,Dhaka', 'Mohammadpur,Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-02-03 10:50:38', '2022-02-03 10:50:38'),
(30, 37, 'RAJIB SAHA', NULL, '01936560360', NULL, '108 VV ROAD NARAYANGONJ', '108 VV ROAD NARAYANGONJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-02-03 15:19:38', '2022-02-03 15:19:38'),
(31, 38, 'MD. RIYAD ISLSM', NULL, '01817546832', NULL, 'NARYANGANJ', 'NARYANGANJ', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-02-03 15:58:38', '2022-02-03 15:58:38');

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
(92, 'Super Admin', '', '01761955765', 'admin@gmail.com', '$2y$10$9LVl8Xz0Ps2S2cUZ14c8e.QOho1XfDdB96.AlX9GmPzQJOONtYmJu', NULL, 1, '2021-02-07 11:07:04', 85, '2021-04-08 17:09:31', 1, '7ioh6j8eM51s8y1sSyAAmBspK6WhN9ACpgb3PAL1tfHLQYHQEzUsbOPA5fcj', 11, 'admin'),
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
-- AUTO_INCREMENT for table `cheque_details`
--
ALTER TABLE `cheque_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1001;

--
-- AUTO_INCREMENT for table `dynamic_routes`
--
ALTER TABLE `dynamic_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `expenses_category`
--
ALTER TABLE `expenses_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_menu`
--
ALTER TABLE `master_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17954;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `product_ingredients`
--
ALTER TABLE `product_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `ready_product_details`
--
ALTER TABLE `ready_product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=158;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;

--
-- AUTO_INCREMENT for table `sales_executive_models`
--
ALTER TABLE `sales_executive_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sales_payments`
--
ALTER TABLE `sales_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `work_order`
--
ALTER TABLE `work_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `work_order_ingredient`
--
ALTER TABLE `work_order_ingredient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `work_order_party`
--
ALTER TABLE `work_order_party`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

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

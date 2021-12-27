-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2021 at 07:42 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.23

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
  `company_address` longtext DEFAULT NULL,
  `company_contact_no` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`id`, `company_name`, `company_address`, `company_contact_no`, `country`, `created_at`, `updated_at`) VALUES
(1, 'Whitley Koch Trading', 'Espinoza Bond Trading', 19, 'Facilis voluptatem', '2021-12-06 20:27:51', '2021-12-06 20:27:51'),
(3, 'Nash Stuart Trader', 'Turner and Reilly LLC', 58, 'Dignissimos consequa', '2021-12-25 19:23:21', '2021-12-26 22:03:30');

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
(1, NULL, 'Hollee Santiago', 'general', 'noqakivij@mailinator.com', '+1 (387) 426-2865', NULL, 'Commodo odio rerum q', NULL, NULL, '-20', NULL, NULL, NULL, NULL, NULL, 92, '2021-10-13 20:25:47', '2021-12-25 20:36:46'),
(2, 1, 'Karyn Kinney', 'general', 'dynijepof@mailinator.com', '+1 (286) 427-3093', NULL, 'Aut laborum Sint q', NULL, NULL, '-3220', NULL, NULL, '', NULL, NULL, 92, '2021-10-13 20:25:50', '2021-12-27 23:14:22'),
(3, 1, 'Mason Silva', 'general', 'razygyz@mailinator.com', '+1 (254) 365-9538', NULL, 'Non fuga Dolore cil', NULL, NULL, '-84', NULL, NULL, '', NULL, NULL, 92, '2021-10-13 20:25:52', '2021-12-27 19:27:10'),
(4, NULL, 'khademul islam', 'general', 'tashfiaexport@gmail.com', '01848080971', NULL, '52/2 b.b road', NULL, NULL, '26', NULL, NULL, NULL, NULL, NULL, 92, '2021-11-27 23:32:14', '2021-12-21 02:14:40'),
(5, NULL, 'Winifred Pratt', 'general', 'rydoredy@mailinator.com', '+1 (728) 971-9785', '+1 (798) 921-7253', 'Eos officia aut proi', NULL, 'Qui dolore eos comm', '0', 'Sit ut labore quibus', 'Iure quo et repudian', '2021-11-30-61a52b3ed959d.jpg', 'Laborum aperiam qui', 'Cillum aliquam maxim', 92, '2021-11-30 01:34:23', '2021-11-30 01:34:23'),
(6, NULL, 'Miranda Schmidt', 'general', 'jedeg@mailinator.com', '+1 (287) 674-7165', '+1 (466) 896-5755', 'Nihil animi mollit', NULL, 'Voluptatem facilis d', '0', 'Vel ut deserunt temp', 'Dolor rerum asperior', '2021-11-30-61a52b6ac208d.jpg', 'Error incidunt est', 'Nihil amet fugiat', 92, '2021-11-30 01:35:07', '2021-11-30 01:35:07'),
(7, NULL, 'Judith Kaufman', 'general', 'lacaw@mailinator.com', '+1 (881) 583-7501', '+1 (993) 664-8655', 'Nulla deserunt susci', NULL, 'Ex voluptate in sit', '0', 'Reiciendis nesciunt', 'Dolor dolor eligendi', '2021-11-30-61a5322355d56.jpg', 'Et mollit sed recusa', 'Sapiente impedit di', 92, '2021-11-30 02:03:47', '2021-11-30 02:03:47'),
(9, NULL, 'sdfsdf', 'general', NULL, NULL, NULL, NULL, NULL, NULL, '0', NULL, NULL, '', NULL, NULL, 92, '2021-12-01 17:27:22', '2021-12-01 17:27:22'),
(10, NULL, 'Brendan Wall', 'general', 'misy@mailinator.com', '+1 (907) 483-9685', '+1 (491) 788-7364', 'Aut velit architecto', NULL, 'Sapiente quaerat est', '0', 'Incidunt sunt tempo', 'Aut nulla quo libero', '2021-12-02-61a8c3148edb7.jpg', 'Soluta commodi id c', 'Quisquam commodi sun', 92, '2021-12-02 18:59:01', '2021-12-02 18:59:01'),
(11, NULL, 'Clementine Garrett', 'general', 'kyre@mailinator.com', '+1 (287) 272-1141', '+1 (511) 548-4669', 'Laborum quidem rem a', NULL, 'Ullamco voluptate ip', '0', 'Obcaecati qui except', 'Fugiat eu eius face', '', 'Do deserunt minima a', 'Nostrum et sit excep', 92, '2021-12-02 18:59:18', '2021-12-02 18:59:18'),
(12, NULL, 'Faith Sawyer', 'general', 'bebysuw@mailinator.com', '+1 (998) 619-9699', '+1 (305) 359-3872', 'Et Nam incididunt am', NULL, 'In vitae fuga Et co', '0', 'Aut a maxime dolore', 'Ipsum ea exercitati', '', 'Iusto rerum asperior', 'Sit irure consequat', 92, '2021-12-02 19:09:09', '2021-12-02 19:09:09'),
(13, NULL, 'Cassidy Mcmahon', 'general', NULL, '+1 (676) 679-2183', NULL, 'Nisi qui harum rerum', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:13:28', '2021-12-04 12:13:28'),
(14, NULL, 'Nissim Blackburn', 'general', NULL, '+1 (462) 572-5913', NULL, 'Porro delectus nost', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:16:41', '2021-12-04 12:16:41'),
(15, NULL, 'Gareth Randall', 'general', NULL, '+1 (714) 367-2127', NULL, 'Delectus quia ut la', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:17:00', '2021-12-04 12:17:00'),
(16, NULL, 'Alden Kramer', 'general', NULL, '+1 (571) 487-6104', NULL, 'Tenetur enim dolores', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:21:32', '2021-12-04 12:21:32'),
(17, NULL, 'Honorato Ortega', 'general', NULL, '+1 (294) 293-7415', NULL, 'Voluptatem deserunt', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:21:57', '2021-12-04 12:21:57'),
(18, NULL, 'Magee Fitzgerald', 'general', NULL, '+1 (671) 168-9957', NULL, 'Minus aute aute non', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:23:03', '2021-12-04 12:23:03'),
(19, NULL, 'Nita Cooke', 'general', NULL, '+1 (809) 151-7592', NULL, 'Natus nihil eligendi', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:23:57', '2021-12-04 12:23:57'),
(20, NULL, 'Caryn Atkins', 'wal in customer', NULL, '+1 (256) 247-7329', NULL, 'Est tempore deseru', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:26:29', '2021-12-04 12:26:29'),
(21, NULL, 'Shad Flowers', 'wal in customer', NULL, '+1 (908) 909-9502', NULL, 'Blanditiis perferend', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:27:01', '2021-12-04 12:27:01'),
(22, NULL, 'Mari Albert', 'wal in customer', NULL, '+1 (166) 113-9968', NULL, 'Est ut minim aut ani', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 13:08:20', '2021-12-04 13:08:20'),
(23, NULL, 'Nathaniel Webb', 'wal in customer', NULL, '+1 (938) 377-9215', NULL, 'Quis aliquid quis po', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 13:22:07', '2021-12-04 13:22:07'),
(24, NULL, 'wesd', 'wal in customer', NULL, '23423', NULL, 'Nisi qui harum rerum', NULL, NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 13:26:57', '2021-12-04 13:26:57'),
(25, 1, 'Md. Khasrur Rahman', 'general', 'khasrur8@gmail.com', '01761955765', NULL, 'satkhira,khulna bangladrsh', NULL, NULL, '-40', NULL, NULL, '2021-12-25-61c71738314d9.png', 'asdas', 'asdad', 92, '2021-12-06 20:48:40', '2021-12-25 19:06:00'),
(26, NULL, 'Md. Khasrur Rahman', 'wal in customer', NULL, '01761955765', NULL, 'satkhira,khulna bangladrsh', 'Ratin', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-27 11:07:04', '2021-12-27 11:07:04'),
(27, NULL, 'Md. Khasrur Rahman', 'wal in customer', NULL, '01761955765', NULL, 'satkhira,khulna bangladrsh', 'Ratin', NULL, '0', NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-27 23:15:11', '2021-12-27 23:17:12'),
(28, 1, 'Md. Khasrur Rahman', 'general', 'khasrur8@gmail.com', '01761955765', '01761955765', 'satkhira,khulna bangladrsh', NULL, 'Dhaka - North - Khilkhet', '-700', NULL, '123123123123', '2021-12-27-61c9f67172036.png', 'Numquam sed dolor re', 'In quo quidem non re', 92, '2021-12-27 23:22:57', '2021-12-27 23:25:20');

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
(295, 'Ingredient Index', 'ingredient/index', 'ingredient', NULL, 'IngredientController@index', 'get', 1, NULL, 1, 0, '1', '2021-10-12 21:35:03', '2021-10-12 21:35:03'),
(296, 'Ingredient search', 'ingredient/search', 'ingredient', NULL, 'IngredientController@search', 'Post', 1, NULL, 1, 0, '1', '2021-10-12 21:35:44', '2021-10-12 21:35:44'),
(297, 'Ingredient store', 'ingredient/store', 'ingredient', NULL, 'IngredientController@store', 'Post', 1, NULL, 1, 0, '1', '2021-10-12 21:36:14', '2021-10-12 21:36:14'),
(298, 'Ingredient Edit', 'ingredient/edit', 'ingredient', NULL, 'IngredientController@edit', 'get', 1, '{id}', 1, 0, '1', '2021-10-12 21:36:46', '2021-10-12 21:36:46'),
(299, 'Ingredient delete', 'ingredient/delete', 'ingredient', NULL, 'IngredientController@delete', 'get', 1, '{id}', 1, 0, '1', '2021-10-12 21:37:25', '2021-10-12 21:37:25'),
(300, 'product Category Index', 'productcategory/index', 'productcategory', NULL, 'ProductCategoryController@index', 'get', 1, NULL, 1, 1, '0', '2021-10-12 22:22:58', '2021-10-12 22:22:58'),
(301, 'Product Category seacrh', 'productcategory/search', 'productcategory', NULL, 'ProductCategoryController@search', 'Post', 1, NULL, 1, 0, '1', '2021-10-12 22:23:57', '2021-10-12 22:23:57'),
(302, 'Product Category store', 'productcategory/store', 'productcategory', NULL, 'ProductCategoryController@store', 'Post', 1, NULL, 1, 0, '1', '2021-10-12 22:41:23', '2021-10-12 22:41:23'),
(303, 'Product Category edit', 'productcategory/edit', 'productcategory', NULL, 'ProductCategoryController@edit', 'get', 1, '{id}', 1, 0, '1', '2021-10-12 22:41:52', '2021-10-12 22:41:52'),
(304, 'Product Category update', 'productcategory/update', 'productcategory', NULL, 'ProductCategoryController@update', 'Post', 1, '{id}', 1, 0, '0', '2021-10-12 22:42:30', '2021-12-26 16:12:38'),
(305, 'Product Category delete', 'productcategory/delete', 'productcategory', NULL, 'ProductController@delete', 'get', 1, '{id}', 1, 0, '1', '2021-10-12 22:43:04', '2021-10-12 22:43:04'),
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
(344, 'Sales Commision report show', 'report/sales_commision_report_show', 'Report', NULL, 'ReportController@sales_commision_report_show', 'get', 1, NULL, 1, 1, '0', '2021-12-26 18:25:18', '2021-12-26 18:25:18');

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
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `expenses_category_id`, `name`, `balance`, `Amount`, `created_by`, `created_at`, `updated_at`) VALUES
(3, 6, 'Daniel Yates', '89', '81', '92', '2021-10-14 11:53:24', '2021-10-14 11:53:24'),
(4, 6, 'Kyle Matthews', '28', '14', '92', '2021-10-14 11:53:29', '2021-10-14 11:53:29'),
(5, 6, 'Hope Sandoval', '34', '51', '92', '2021-10-14 11:53:33', '2021-10-14 11:53:33'),
(6, 10, 'tea', NULL, '500', '92', '2021-12-27 23:32:07', '2021-12-27 23:32:07');

-- --------------------------------------------------------

--
-- Table structure for table `expenses_category`
--

CREATE TABLE `expenses_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expenses_category`
--

INSERT INTO `expenses_category` (`id`, `name`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'Zahir Norton', 92, '2021-10-14 10:33:46', '2021-10-14 10:33:46'),
(5, 'Brynne Adkins', 92, '2021-10-14 10:33:49', '2021-10-14 10:33:49'),
(6, 'Yoshio Reese', 92, '2021-10-14 10:33:54', '2021-10-14 10:33:54'),
(7, 'intertainement', 92, '2021-11-27 23:54:13', '2021-11-27 23:54:13'),
(8, 'asdasd', 92, '2021-12-27 19:03:52', '2021-12-27 19:03:52'),
(9, 'test', 92, '2021-12-27 23:30:27', '2021-12-27 23:30:27'),
(10, 'office', 92, '2021-12-27 23:30:40', '2021-12-27 23:30:40');

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
(24, 'Stock Department', 'Stock Department', NULL, 1, 'ik-layout', 266, '2021-10-14 02:53:23', '2021-10-13 20:17:49', 92, 92),
(25, 'Sales department', 'Sales department', NULL, 1, 'ik-codepen', NULL, '2021-11-18 06:09:49', '2021-11-18 06:09:49', 92, 92),
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
(68, 'Sales Executive', 'Sales Executive', NULL, 1, 'ik-users', NULL, '2021-12-26 17:37:40', '2021-12-26 17:37:40', 92, 92),
(69, 'All Sales Executive', 'All Sales Executive', 68, 1, NULL, 336, '2021-12-26 17:37:27', '2021-12-26 17:37:27', 92, NULL),
(70, 'Create Sales Executive', 'Create Sales Executive', 68, 1, NULL, 338, '2021-12-26 17:39:12', '2021-12-26 17:39:12', 92, 92),
(71, 'Sales Commission', 'Sales Commission', 66, 1, NULL, 344, '2021-12-26 18:27:00', '2021-12-26 18:27:00', 92, NULL);

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
(9504, 12, 1, 'adminDashboard', '2021-04-18 15:13:37', '2021-04-18 15:13:37'),
(9505, 12, 91, 'admin/change_password', '2021-04-18 15:13:37', '2021-04-18 15:13:37'),
(9506, 12, 92, 'admin/save_change_password', '2021-04-18 15:13:37', '2021-04-18 15:13:37'),
(9508, 12, 9, 'all_user', '2021-04-18 15:13:37', '2021-04-18 15:13:37'),
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
(16250, 11, 1, 'adminDashboard', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16251, 11, 91, 'admin/change_password', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16252, 11, 92, 'admin/save_change_password', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16253, 11, 3, 'dynamic_route', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16254, 11, 4, 'dynamic_route', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16255, 11, 14, 'delete_route', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16256, 11, 16, 'edit_route', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16257, 11, 19, 'update_route', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16258, 11, 5, 'role/all_role', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16259, 11, 6, 'role/add_role', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16260, 11, 8, 'save_role', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16261, 11, 11, 'edit_role', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16262, 11, 12, 'update_role', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16263, 11, 13, 'delete_role', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16264, 11, 9, 'all_user', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16265, 11, 10, 'save_user', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16266, 11, 93, 'edit_user', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16267, 11, 94, 'upadte_user', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16268, 11, 95, 'suspend_user', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16269, 11, 96, 'unsuspend_user', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16270, 11, 127, 'delete_user', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16271, 11, 130, 'test', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16272, 11, 131, 'menu/menu_create', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16273, 11, 133, 'menu/menu_save', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16274, 11, 134, 'menu/all_menu', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16275, 11, 135, 'menu/menu_search', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16276, 11, 138, 'menu/edit_menu', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16277, 11, 139, 'menu/update_menu', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16278, 11, 254, 'product/craete', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16279, 11, 255, 'product/store', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16280, 11, 256, 'product/alldata', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16281, 11, 257, 'product/index', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16282, 11, 258, 'product/view', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16283, 11, 259, 'product/delete', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16284, 11, 286, 'product/ingredients', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16285, 11, 334, 'product/edit', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16286, 11, 335, 'product/update', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16287, 11, 260, 'sales/show_sales_department', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16288, 11, 261, 'sales/get_sales_department_data', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16289, 11, 262, 'sales/store_sales_department_data', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16290, 11, 263, 'sales/edit_sales_department_data', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16291, 11, 264, 'sales/update_sales_department_data', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16292, 11, 265, 'sales/delete_sales_department_data', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16293, 11, 273, 'sales/sales_department_invoice', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16294, 11, 316, 'sales/create', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16295, 11, 317, 'sales/customer_payment_history_search', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16296, 11, 318, 'sales/sales_details_invoice', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16297, 11, 319, 'sales/add_walk_in_cuatomer', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16298, 11, 325, 'sales/sales_due_payment', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16299, 11, 328, 'sales/invoice_payment_history', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16300, 11, 266, 'Department/show_lot_department', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16301, 11, 267, 'Department/search', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16302, 11, 268, 'Department/store_lot_department_data', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16303, 11, 269, 'Department/delete_lot_department_data', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16304, 11, 270, 'Department/edit_lot_department_data', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16305, 11, 271, 'Department/update_lot_department_data', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16306, 11, 272, 'Department/show_single_lot_department_data', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16307, 11, 274, 'customer/all_customer', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16308, 11, 275, 'customer/search', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16309, 11, 276, 'customer/store', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16310, 11, 277, 'customer/edit', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16311, 11, 278, 'customer/update', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16312, 11, 279, 'customer/delete', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16313, 11, 307, 'customer/show', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16314, 11, 324, 'customer/view', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16315, 11, 329, 'customer/manual_due_payment', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16316, 11, 280, 'supplier/index', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16317, 11, 281, 'supplier/search', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16318, 11, 282, 'supplier/store', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16319, 11, 283, 'supplier/edit', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16320, 11, 284, 'supplier/update', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16321, 11, 285, 'supplier/delete', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16322, 11, 293, 'supplier/show', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16323, 11, 287, 'purchase/index', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16324, 11, 288, 'purchase/search', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16325, 11, 289, 'purchase/store', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16326, 11, 290, 'purchase/edit', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16327, 11, 291, 'purchase/update', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16328, 11, 292, 'purchase/delete', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16329, 11, 294, 'purchase/show', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16330, 11, 295, 'ingredient/index', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16331, 11, 296, 'ingredient/search', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16332, 11, 297, 'ingredient/store', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16333, 11, 298, 'ingredient/edit', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16334, 11, 299, 'ingredient/delete', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16335, 11, 300, 'productcategory/index', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16336, 11, 301, 'productcategory/search', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16337, 11, 302, 'productcategory/store', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16338, 11, 303, 'productcategory/edit', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16339, 11, 304, 'productcategory/update', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16340, 11, 305, 'productcategory/delete', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16341, 11, 308, 'expenses/expenses_category_index', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16342, 11, 309, 'expenses/expenses_category_search', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16343, 11, 310, 'expenses/expenses_category_store', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16344, 11, 311, 'expenses/expenses_category_delete', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16345, 11, 312, 'expenses/expenses_index', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16346, 11, 313, 'expenses/expenses_search', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16347, 11, 314, 'expenses/expenses_store', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16348, 11, 315, 'expenses/expenses_delete', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16349, 11, 320, 'company/index', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16350, 11, 321, 'company/search', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16351, 11, 322, 'company/store', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16352, 11, 323, 'company/delete', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16353, 11, 330, 'company/edit_company', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16354, 11, 331, 'company/company_update', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16355, 11, 332, 'report/profit_show', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16356, 11, 333, 'report/profit_search', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16357, 11, 343, 'report/sales_commision_report', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16358, 11, 344, 'report/sales_commision_report_show', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16359, 11, 336, 'sales_executive/show', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16360, 11, 337, 'sales_executive/search', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16361, 11, 338, 'sales_executive/add', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16362, 11, 339, 'sales_executive/delete', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16363, 11, 340, 'sales_executive/edit', '2021-12-27 03:03:34', '2021-12-27 03:03:34'),
(16364, 11, 341, 'sales_executive/update', '2021-12-27 03:03:35', '2021-12-27 03:03:35'),
(16365, 11, 342, 'sales_executive/store', '2021-12-27 03:03:35', '2021-12-27 03:03:35'),
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
(16381, 18, 328, 'sales/invoice_payment_history', '2021-12-27 16:43:55', '2021-12-27 16:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `chalan_no` varchar(255) DEFAULT NULL,
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
  `created_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_category_id`, `chalan_no`, `party_name`, `quantity`, `unit_price`, `color_name`, `open_tube`, `sl_no`, `ggsm`, `yarn_count`, `yarn_lot_no`, `fb_rv_date`, `batch_process_date`, `lot_no`, `batch_no`, `order_no`, `style_no`, `finish_gsm`, `fabric_type`, `card_no`, `created_by`, `created_at`, `updated_at`) VALUES
(23, 2, 'Doloremque suscipit', 'Grant Daniel', '500', NULL, 'Angelica Carey', 'Perferendis harum ex', 'Nesciunt voluptatib', 'Libero ab odit delen', 'Qui praesentium moll', 'Elit reiciendis lab', '1985-07-19 00:00:00', '1979-04-29 00:00:00', 'Assumenda laborum al', 'Incidunt in tempore', 'Molestiae nihil est', 'Culpa labore quibus', 'Impedit aute necess', 'Voluptatem molestias', '1972729482', NULL, '2021-10-13 15:54:53', '2021-12-27 17:06:42'),
(24, 2, 'Quam quasi eiusmod v', 'Sacha Vang', '9645', NULL, 'Jordan Griffin', 'Quis repudiandae qui', 'Qui aliquam harum ex', 'Praesentium iure ea', 'Illo illum quaerat', 'Aliqua Veniam quam', '2013-09-23 00:00:00', '2001-08-25 00:00:00', 'Aute nihil ipsum pro', 'Quaerat beatae harum', 'Eos eos ullam labor', 'Ab cupiditate soluta', 'Ut quia est laudant', 'Perspiciatis sed of', '827148731', NULL, '2021-10-13 15:56:26', '2021-11-29 23:26:06'),
(25, 2, 'Quam quasi eiusmod v', 'Sacha Vang', '500', NULL, 'Jordan Griffin', 'Quis repudiandae qui', 'Qui aliquam harum ex', 'Praesentium iure ea', 'Illo illum quaerat', 'Aliqua Veniam quam', '2013-09-23 00:00:00', '2001-08-25 00:00:00', 'Aute nihil ipsum pro', 'Quaerat beatae harum', 'Eos eos ullam labor', 'Ab cupiditate soluta', 'Ut quia est laudant', 'Perspiciatis sed of', '285231764', NULL, '2021-10-13 15:57:27', '2021-12-25 14:23:20'),
(26, 2, 'Quam quasi eiusmod v', 'Sacha Vang', '45', NULL, 'Jordan Griffin', 'Quis repudiandae qui', 'Qui aliquam harum ex', 'Praesentium iure ea', 'Illo illum quaerat', 'Aliqua Veniam quam', '2013-09-23 00:00:00', '2001-08-25 00:00:00', 'Aute nihil ipsum pro', 'Quaerat beatae harum', 'Eos eos ullam labor', 'Ab cupiditate soluta', 'Ut quia est laudant', 'Perspiciatis sed of', '771333814', NULL, '2021-10-13 15:57:49', '2021-10-13 15:57:49'),
(27, 2, 'Enim amet aperiam t', 'Leslie Dillon', '345', NULL, 'Hedley Kline', 'Rem blanditiis sunt', 'Ea occaecat cumque i', 'Neque doloribus ea p', 'Doloremque voluptate', 'Reprehenderit odit', '2017-09-29 00:00:00', '1980-12-06 00:00:00', 'Aperiam rerum adipis', 'Velit ut eaque ea vo', 'Doloremque eu aliqua', 'Enim rerum ut autem', 'Explicabo Accusamus', 'Est error in qui ani', '1108787644', NULL, '2021-10-13 15:58:47', '2021-10-13 15:58:47'),
(28, 2, 'Enim amet aperiam t', 'Leslie Dillon', '45', NULL, 'Hedley Kline', 'Rem blanditiis sunt', 'Ea occaecat cumque i', 'Neque doloribus ea p', 'Doloremque voluptate', 'Reprehenderit odit', '2017-09-29 00:00:00', '1980-12-06 00:00:00', 'Aperiam rerum adipis', 'Velit ut eaque ea vo', 'Doloremque eu aliqua', 'Enim rerum ut autem', 'Explicabo Accusamus', 'Est error in qui ani', '266989971', NULL, '2021-10-13 15:59:39', '2021-10-13 15:59:39'),
(29, 1, 'Ad fugit minima ass', 'Xerxes Norton', '45', NULL, 'Ishmael Morgan', 'Adipisci non molesti', 'Veniam dolore lorem', 'Sed inventore quia e', 'Commodo dolor et eiu', 'Blanditiis enim sit', '2014-02-22 00:00:00', '1972-03-28 00:00:00', 'Modi qui ipsa eveni', 'Id ex ea anim eos au', 'Sint dolor quis neq', 'Odit voluptas repell', 'Voluptas dolorem eve', 'Ipsum irure eu sit', '2139582579', NULL, '2021-10-13 16:06:55', '2021-10-13 16:06:55'),
(30, 2, 'Magna dignissimos ip', 'Elijah Charles', NULL, NULL, 'Jena Talley', 'Veniam aut est reru', 'Delectus expedita c', 'Ipsum magnam quos o', 'Totam nemo rerum err', 'Explicabo Inventore', '1992-04-05 00:00:00', '1970-08-17 00:00:00', 'Quis eveniet quo ea', 'Quam molestiae vitae', 'Iusto in accusantium', 'Magnam dolorem eiusm', 'Rerum totam ut ex ea', 'Dolore quis esse vol', '429213367', NULL, '2021-11-26 20:06:16', '2021-11-26 20:06:16'),
(31, 2, 'Magna dignissimos ip', 'Elijah Charles', '5', NULL, 'Jena Talley', 'Veniam aut est reru', 'Delectus expedita c', 'Ipsum magnam quos o', 'Totam nemo rerum err', 'Explicabo Inventore', '1992-04-05 00:00:00', '1970-08-17 00:00:00', 'Quis eveniet quo ea', 'Quam molestiae vitae', 'Iusto in accusantium', 'Magnam dolorem eiusm', 'Rerum totam ut ex ea', 'Dolore quis esse vol', '16784852', NULL, '2021-11-26 20:11:41', '2021-12-25 14:16:08'),
(32, 2, 'Magna dignissimos ip', 'Elijah Charles', NULL, NULL, 'Jena Talley', 'Veniam aut est reru', 'Delectus expedita c', 'Ipsum magnam quos o', 'Totam nemo rerum err', 'Explicabo Inventore', '1992-04-05 00:00:00', '1970-08-17 00:00:00', 'Quis eveniet quo ea', 'Quam molestiae vitae', 'Iusto in accusantium', 'Magnam dolorem eiusm', 'Rerum totam ut ex ea', 'Dolore quis esse vol', '332264222', NULL, '2021-11-26 20:12:08', '2021-11-26 20:12:08'),
(33, 2, 'Aut aperiam voluptas', 'Jelani Jackson', '50', NULL, 'Ciara Mejia', 'Quia omnis ad do ab', 'Iusto veniam suscip', 'Sit mollit omnis cu', 'Consequuntur odio qu', 'Aut sed consectetur', '1997-10-27 00:00:00', '1972-09-25 00:00:00', 'Cumque minus magnam', 'Reprehenderit dolor', 'Consequatur Nisi eo', 'Porro iste qui moles', 'Dolore eos deserunt', 'Dolor ullam rerum pe', '1902869969', NULL, '2021-11-26 20:14:10', '2021-12-25 14:18:23'),
(34, 2, 'Aut aperiam voluptas', 'Jelani Jackson', NULL, NULL, 'Ciara Mejia', 'Quia omnis ad do ab', 'Iusto veniam suscip', 'Sit mollit omnis cu', 'Consequuntur odio qu', 'Aut sed consectetur', '1997-10-27 00:00:00', '1972-09-25 00:00:00', 'Cumque minus magnam', 'Reprehenderit dolor', 'Consequatur Nisi eo', 'Porro iste qui moles', 'Dolore eos deserunt', 'Dolor ullam rerum pe', '1895828625', NULL, '2021-11-26 20:16:25', '2021-11-26 20:16:25'),
(35, 1, '4963', 'Ridoy', '5000', NULL, 'Red', 'Open', '12345', '170', '30', '120', '2021-11-25 00:00:00', '2021-11-26 00:00:00', '12', '12', '32', '567', '160', 'Single J/S', '1055677609', NULL, '2021-11-27 21:19:33', '2021-11-27 21:24:20'),
(36, 1, '2025', 'abdullah traders', '1000', NULL, 'black', 'open', '1.75', '160', '30', '110', NULL, NULL, '100', '200', '10', '50', '160', 's/j', '1269519468', NULL, '2021-11-27 23:27:04', '2021-12-26 16:15:25'),
(37, 2, 'Suscipit vel est rep', 'Joelle Johnston', NULL, NULL, 'Harlan Bush', 'Eiusmod impedit ven', 'Quos sed quo laudant', 'Duis do enim repelle', 'Voluptas dolorem con', 'Corporis accusamus v', '2001-10-29 00:00:00', '2001-07-21 00:00:00', 'Sit perferendis dol', 'Illum modi at conse', 'Pariatur Dolore pla', 'Sit reprehenderit q', 'Distinctio Vero eni', 'Anim inventore accus', '1725037484', NULL, '2021-12-27 12:40:10', '2021-12-27 12:40:10'),
(38, 1, 'Et ducimus ut quisq', 'Leigh Merritt', NULL, NULL, 'Stone Boyle', 'Nostrum dolor facere', 'Quis qui nesciunt e', 'Libero ab consectetu', 'Consequat Molestiae', 'Do et sunt dicta ad', '2018-09-20 00:00:00', '1973-11-22 00:00:00', 'Perferendis pariatur', 'Voluptas reprehender', 'Rerum aliqua Proide', 'Ea exercitation elig', 'In praesentium iusto', 'Anim cupidatat conse', '1373451777', NULL, '2021-12-27 12:40:16', '2021-12-27 12:40:16'),
(39, 8, 'Ut veniam incidunt', 'Blake Phillips', NULL, NULL, 'Jackson Harmon', 'Minima quis voluptat', 'At aut sit aliqua', 'Sequi in amet nihil', 'Modi ipsum providen', 'Pariatur Suscipit v', NULL, NULL, 'Eiusmod quasi eum no', 'Velit cum autem cons', 'Quia alias sit pari', 'Sint quia hic nostr', 'Repudiandae voluptat', 'Voluptatum iure nemo', '42458513', NULL, '2021-12-27 16:53:33', '2021-12-27 16:53:43');

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
(1, 'purchase prodyct', 92, NULL, '2021-12-26 22:12:40'),
(2, 'ready product', NULL, NULL, NULL),
(3, 'Fabric Stock Purchase', 92, '2021-11-27 20:58:13', '2021-11-27 20:58:13'),
(4, 'interlock', 92, '2021-11-28 18:25:14', '2021-11-28 18:25:14'),
(5, 'terry', 92, '2021-11-28 18:25:31', '2021-11-28 18:25:31'),
(6, 'fleece', 92, '2021-11-28 18:25:45', '2021-11-28 18:25:45'),
(7, 's/j', 92, '2021-11-28 18:25:56', '2021-11-28 18:25:56'),
(8, 'asdasd', 92, '2021-12-27 18:38:16', '2021-12-27 18:38:16'),
(9, 'asdasd', 92, '2021-12-27 18:38:21', '2021-12-27 18:38:21');

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
(1, 'gggggsdfsdf', '336', NULL, NULL, '2021-10-13 16:33:37', '2021-11-27 02:16:25'),
(2, 'ssdfsdf', '-183', NULL, NULL, '2021-10-13 16:33:37', '2021-12-27 18:40:10'),
(3, 'Yan', '50', NULL, 92, '2021-11-27 21:07:40', '2021-11-27 21:07:40');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `supplier_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
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
(12, 23, 1, '92', '-10', '1', '50.00', '25000.00', '60.00', '30000.00', '2021-12-25 20:23:02', '2021-12-27 18:41:25'),
(13, 25, 2, '92', '100', '1', '40.00', '20000.00', '50.00', '25000.00', '2021-12-25 20:23:20', '2021-12-25 20:28:28'),
(14, 23, 1, '92', '968', '1', '54.00', '52272.00', '6.20', '6000.00', '2021-12-27 18:40:56', '2021-12-27 18:40:56'),
(15, 23, 4, '92', '100', '1', '50.00', '25000.00', '60.00', '30000.00', '2021-12-27 23:06:42', '2021-12-27 23:07:38');

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

--
-- Dumping data for table `ready_product_details`
--

INSERT INTO `ready_product_details` (`id`, `product_id`, `ingredient_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, 28, 1, '472', '2021-10-13 21:59:39', '2021-10-13 21:59:39'),
(2, 28, 2, '312', '2021-10-13 21:59:39', '2021-10-13 21:59:39'),
(3, 28, 2, '547', '2021-10-13 21:59:40', '2021-10-13 21:59:40'),
(4, 34, 1, '5', '2021-11-27 02:16:25', '2021-11-27 02:16:25'),
(5, 34, 1, '4', '2021-11-27 02:16:25', '2021-11-27 02:16:25'),
(6, 37, 2, '45', '2021-12-27 18:40:10', '2021-12-27 18:40:10'),
(7, 37, 2, '370', '2021-12-27 18:40:10', '2021-12-27 18:40:10');

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
(18, 'sales Manager', 'sales_manager', '2021-12-27 16:43:55', '2021-12-27 16:43:55');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `sales_executive_id` int(11) DEFAULT NULL,
  `total_price` varchar(255) DEFAULT NULL,
  `payment_amount` varchar(255) DEFAULT NULL,
  `due` varchar(255) DEFAULT NULL,
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
(65, 2, 1, '108', '60', '48', NULL, NULL, 0, '1910465470', NULL, NULL, NULL, '2021-12-25 20:43:40', '2021-12-25 20:43:40'),
(66, 2, 2, '108', '86', '22', NULL, NULL, 0, '51936560', '-2.00', NULL, NULL, '2021-12-25 21:07:16', '2021-12-25 21:07:16'),
(67, 3, 1, '68', '34', '34', NULL, NULL, 0, '1375712281', '-42.00', NULL, NULL, '2021-12-25 21:09:28', '2021-12-25 21:09:28'),
(68, 2, 1, '185', '33', '152', NULL, NULL, 0, '1531556237', '75.00', NULL, NULL, '2021-12-25 21:10:14', '2021-12-27 19:05:36'),
(69, 2, 1, '54', '54', '0', NULL, NULL, 1, '1210744099', '-6.00', NULL, NULL, '2021-12-27 00:15:04', '2021-12-27 18:47:23'),
(70, 3, 1, '54', '34', '20', NULL, NULL, 0, '627622660', '-6.00', NULL, NULL, '2021-12-27 19:27:09', '2021-12-27 19:27:10'),
(71, 3, 1, '5600', '200', '5400', NULL, NULL, 0, '973181898', NULL, NULL, NULL, '2021-12-27 23:12:47', '2021-12-27 23:12:47'),
(72, 3, 1, '5600', '200', '5400', NULL, NULL, 0, '730704820', NULL, NULL, NULL, '2021-12-27 23:13:03', '2021-12-27 23:13:03'),
(73, 2, 1, '3000', '100', '2900', NULL, NULL, 0, '1811061024', '500.00', NULL, NULL, '2021-12-27 23:14:22', '2021-12-27 23:14:23'),
(74, 27, 1, '670', '670', '0', NULL, NULL, 1, '1359961092', '170.00', NULL, NULL, '2021-12-27 23:15:26', '2021-12-27 23:17:12');

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
  `unit_price` decimal(10,2) DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `purchase_uint_price` decimal(10,2) DEFAULT NULL,
  `purchase_total_price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`id`, `customer_id`, `sales_id`, `stock_id`, `quantity`, `unit_price`, `total_price`, `purchase_uint_price`, `purchase_total_price`, `created_at`, `updated_at`) VALUES
(94, 2, 65, 11, '1', '54.00', '54.00', '60.00', '60.00', '2021-12-25 20:43:40', '2021-12-25 20:43:40'),
(95, 2, 65, 12, '1', '54.00', '54.00', '50.00', '50.00', '2021-12-25 20:43:40', '2021-12-25 20:43:40'),
(96, 2, 66, 11, '1', '54.00', '54.00', '60.00', '60.00', '2021-12-25 21:07:16', '2021-12-25 21:07:16'),
(97, 2, 66, 12, '1', '54.00', '54.00', '50.00', '50.00', '2021-12-25 21:07:16', '2021-12-25 21:07:16'),
(98, 3, 67, 11, '1', '34.00', '34.00', '60.00', '60.00', '2021-12-25 21:09:28', '2021-12-25 21:09:28'),
(99, 3, 67, 12, '1', '34.00', '34.00', '50.00', '50.00', '2021-12-25 21:09:28', '2021-12-25 21:09:28'),
(100, 2, 68, 11, '1', '76.00', '76.00', '60.00', '60.00', '2021-12-25 21:10:14', '2021-12-25 21:10:14'),
(101, 2, 68, 12, '1', '109.00', '109.00', '50.00', '50.00', '2021-12-25 21:10:14', '2021-12-25 21:10:14'),
(102, 2, 69, 11, '1', '54.00', '54.00', '60.00', '60.00', '2021-12-27 00:15:04', '2021-12-27 00:15:04'),
(103, 3, 70, 11, '1', '54.00', '54.00', '60.00', '60.00', '2021-12-27 19:27:10', '2021-12-27 19:27:10'),
(104, 3, 71, 15, '56', '100.00', '5600.00', '60.00', '3360.00', '2021-12-27 23:12:47', '2021-12-27 23:12:47'),
(105, 3, 72, 15, '56', '100.00', '5600.00', '60.00', '3360.00', '2021-12-27 23:13:03', '2021-12-27 23:13:03'),
(106, 2, 73, 12, '50', '60.00', '3000.00', '50.00', '2500.00', '2021-12-27 23:14:22', '2021-12-27 23:14:22'),
(107, 27, 74, 12, '10', '67.00', '670.00', '50.00', '500.00', '2021-12-27 23:15:26', '2021-12-27 23:15:26');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_executive_models`
--

INSERT INTO `sales_executive_models` (`id`, `name`, `email`, `phone`, `address`, `created_at`, `updated_at`) VALUES
(1, 'Josephine Slater', 'jafynizu@mailinator.com', '+1 (955) 237-8838', 'Et aliquid molestias', '2021-12-26 17:52:15', '2021-12-26 17:52:15'),
(2, 'Timothy Logan', 'wulukevyj@mailinator.com', '+1 (749) 943-3655', 'Aut debitis laborios', '2021-12-26 17:52:19', '2021-12-26 17:52:52');

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
  `remark` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_payments`
--

INSERT INTO `sales_payments` (`id`, `sales_id`, `customer_id`, `amount`, `payment_mode`, `remark`, `created_at`, `updated_at`) VALUES
(63, 65, 2, 30, 'cache', NULL, '2021-12-25 20:43:41', '2021-12-25 20:43:41'),
(64, 65, 2, 30, 'Card', NULL, '2021-12-25 20:43:41', '2021-12-25 20:43:41'),
(65, 66, 2, 56, 'cache', NULL, '2021-12-25 21:07:16', '2021-12-25 21:07:16'),
(66, 66, 2, 30, 'Card', NULL, '2021-12-25 21:07:16', '2021-12-25 21:07:16'),
(67, 67, 3, 34, 'cache', NULL, '2021-12-25 21:09:28', '2021-12-25 21:09:28'),
(68, 68, 2, 23, 'cache', NULL, '2021-12-25 21:10:14', '2021-12-25 21:10:14'),
(69, 69, 2, 43, 'cache', NULL, '2021-12-27 00:15:04', '2021-12-27 00:15:04'),
(70, 69, 2, 10, 'cache', NULL, '2021-12-27 18:46:48', '2021-12-27 18:46:48'),
(71, 69, 2, 1, 'cache', NULL, '2021-12-27 18:47:23', '2021-12-27 18:47:23'),
(72, 68, 2, 10, 'Cheque', NULL, '2021-12-27 19:05:36', '2021-12-27 19:05:36'),
(73, 70, 3, 34, 'Cheque', NULL, '2021-12-27 19:27:10', '2021-12-27 19:27:10'),
(74, 71, 3, 100, 'cache', NULL, '2021-12-27 23:12:47', '2021-12-27 23:12:47'),
(75, 71, 3, 100, 'Cheque', NULL, '2021-12-27 23:12:48', '2021-12-27 23:12:48'),
(76, 72, 3, 100, 'cache', NULL, '2021-12-27 23:13:03', '2021-12-27 23:13:03'),
(77, 72, 3, 100, 'Cheque', NULL, '2021-12-27 23:13:03', '2021-12-27 23:13:03'),
(78, 73, 2, 100, 'Cheque', NULL, '2021-12-27 23:14:22', '2021-12-27 23:14:22'),
(79, 74, 27, 12, 'cache', NULL, '2021-12-27 23:15:26', '2021-12-27 23:15:26'),
(80, 74, 27, 10, 'Cheque', NULL, '2021-12-27 23:16:46', '2021-12-27 23:16:46'),
(81, 74, 27, 648, 'Cheque', NULL, '2021-12-27 23:17:12', '2021-12-27 23:17:12'),
(82, NULL, 28, 300, 'Cheque', NULL, '2021-12-27 23:23:30', '2021-12-27 23:23:30'),
(83, NULL, 28, 3000, 'cache', NULL, '2021-12-27 23:25:20', '2021-12-27 23:25:20');

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT '1',
  `date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock`
--

INSERT INTO `stock` (`id`, `purchase_id`, `created_by`, `quantity`, `status`, `date`, `created_at`, `updated_at`) VALUES
(11, 12, '92', '16', '1', NULL, '2021-12-25 20:27:55', '2021-12-27 19:27:10'),
(12, 13, '92', '268', '1', NULL, '2021-12-25 20:28:29', '2021-12-27 23:15:26'),
(13, 12, '92', '430', '1', NULL, '2021-12-27 18:41:17', '2021-12-27 18:41:17'),
(14, 12, '92', '40', '1', NULL, '2021-12-27 18:41:25', '2021-12-27 18:41:25'),
(15, 15, '92', '176', '1', NULL, '2021-12-27 23:07:38', '2021-12-27 23:13:03');

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
(1, NULL, 'Hollee Santiago', 'noqakivij@mailinator.com', '+1 (387) 426-2865', NULL, 'Commodo odio rerum q', NULL, NULL, 'Kelley and Hunt Co', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2021-10-13 20:25:47', '2021-10-13 20:25:47'),
(2, NULL, 'Karyn Kinney', 'dynijepof@mailinator.com', '+1 (286) 427-3093', NULL, 'Aut laborum Sint q', NULL, NULL, 'Davenport Burris Inc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2021-10-13 20:25:50', '2021-10-13 20:25:50'),
(3, NULL, 'Mason Silva', 'razygyz@mailinator.com', '+1 (254) 365-9538', NULL, 'Non fuga Dolore cil', NULL, NULL, 'Mcfarland and Hicks Associates', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2021-10-13 20:25:52', '2021-10-13 20:25:52'),
(4, NULL, 'khademul islam', 'tashfiaexport@gmail.com', '01848080971', NULL, '52/2 b.b road', NULL, NULL, 'tashfia export', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2021-11-27 23:32:14', '2021-11-27 23:32:14'),
(5, NULL, 'Winifred Pratt', 'rydoredy@mailinator.com', '+1 (728) 971-9785', '+1 (798) 921-7253', 'Eos officia aut proi', 'Qui dolore eos comm', NULL, 'Walsh Mcintosh Inc', 'Neal and Blankenship Inc', 0, 'Sit ut labore quibus', 'Iure quo et repudian', '2021-11-30-61a52b3ed959d.jpg', 'Laborum aperiam qui', 'Cillum aliquam maxim', 'Perspiciatis accusa', 92, '2021-11-30 01:34:23', '2021-11-30 01:34:23'),
(6, NULL, 'Miranda Schmidt', 'jedeg@mailinator.com', '+1 (287) 674-7165', '+1 (466) 896-5755', 'Nihil animi mollit', 'Voluptatem facilis d', NULL, 'Shields and Ross LLC', 'Meyers Kelley Traders', 0, 'Vel ut deserunt temp', 'Dolor rerum asperior', '2021-11-30-61a52b6ac208d.jpg', 'Error incidunt est', 'Nihil amet fugiat', 'Quia aut in aut nihi', 92, '2021-11-30 01:35:07', '2021-11-30 01:35:07'),
(7, NULL, 'Cailin Dominguez', 'xekuke@mailinator.com', '+1 (625) 354-2594', '+1 (989) 224-5922', 'Adipisci nostrud pos', 'Et at cupiditate sit', NULL, 'Montgomery Garrett Associates', 'Powers Kemp Inc', 0, 'Repudiandae minim an', 'Quas placeat ipsam', '2021-11-30-61a531f613d83.png', 'Enim dolor natus acc', 'Corrupti amet qui', 'Id voluptatem Volu', 92, '2021-11-30 02:03:02', '2021-11-30 02:03:02'),
(8, 1, 'Ora Joseph', 'pogykepo@mailinator.com', '+1 (887) 299-6734', '+1 (227) 722-9906', 'Velit reiciendis au', 'Reiciendis est quam', NULL, 'Parsons and George Plc', 'Chang Castillo Trading', 0, 'Provident culpa mol', 'Quisquam soluta sunt', '', 'Sed cumque proident', 'Aut optio nostrum l', 'Doloribus vel adipis', 92, '2021-11-30 02:04:13', '2021-12-27 19:03:37');

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
(92, 'Super Admin', '', '01761955765', 'admin@gmail.com', '$2y$10$9LVl8Xz0Ps2S2cUZ14c8e.QOho1XfDdB96.AlX9GmPzQJOONtYmJu', NULL, 1, '2021-02-07 11:07:04', 85, '2021-04-08 17:09:31', 1, '1w2sfttbzvQifaA4b67xa8Q4Jwxf5l55lIm7WK45KNSW3TRGnLzPLHZEDEsJ', 11, 'admin'),
(105, 'rhythms', NULL, '01761955765', 'rhythms@outlook.com', '$2y$12$8K5vJYIUMomXvJ4v6reHfeX55kn6dxus5u1Cff6SdE0DJ.VGPvDjK', NULL, 1, '2021-06-10 12:31:09', 92, '2021-06-10 14:06:14', NULL, NULL, 16, 'admin'),
(106, 'sales Manager', NULL, '01761955765', 'sales@gmail.com', '$2y$10$8opRcX98SyaEidglieya5OsBmFjrG4e.DQ.3.ZKUIi4nyB1Iblyo6', NULL, 1, '2021-12-27 22:44:25', 92, '2021-12-27 22:44:25', NULL, NULL, 18, 'admin');

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cheque_details`
--
ALTER TABLE `cheque_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `dynamic_routes`
--
ALTER TABLE `dynamic_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=345;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `expenses_category`
--
ALTER TABLE `expenses_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_menu`
--
ALTER TABLE `master_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16382;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_ingredients`
--
ALTER TABLE `product_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ready_product_details`
--
ALTER TABLE `ready_product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `sales_executive_models`
--
ALTER TABLE `sales_executive_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sales_payments`
--
ALTER TABLE `sales_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2021 at 09:46 AM
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
(3, 'Nash Stuart Traders', 'Turner and Reilly LLC', 58, 'Dignissimos consequa', '2021-12-25 19:23:21', '2021-12-25 19:36:05');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT 'general',
  `email` varchar(255) DEFAULT NULL,
  `personal_phone` varchar(255) DEFAULT NULL,
  `optional_phone` varchar(255) DEFAULT NULL,
  `present_address` longtext DEFAULT NULL,
  `permanent_address` longtext DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_address` longtext DEFAULT NULL,
  `company_contact_no` varchar(255) DEFAULT NULL,
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
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `type`, `email`, `personal_phone`, `optional_phone`, `present_address`, `permanent_address`, `balance`, `company_name`, `company_address`, `company_contact_no`, `reference`, `nid`, `photo`, `nationality`, `designation`, `country`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Hollee Santiago', 'general', 'noqakivij@mailinator.com', '+1 (387) 426-2865', NULL, 'Commodo odio rerum q', NULL, NULL, 'Kelley and Hunt Co', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2021-10-13 20:25:47', '2021-10-13 20:25:47'),
(2, 'Karyn Kinney', 'general', 'dynijepof@mailinator.com', '+1 (286) 427-3093', NULL, 'Aut laborum Sint q', NULL, NULL, 'Davenport Burris Inc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2021-10-13 20:25:50', '2021-10-13 20:25:50'),
(3, 'Mason Silva', 'general', 'razygyz@mailinator.com', '+1 (254) 365-9538', NULL, 'Non fuga Dolore cil', NULL, NULL, 'Mcfarland and Hicks Associates', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2021-10-13 20:25:52', '2021-10-13 20:25:52'),
(4, 'khademul islam', 'general', 'tashfiaexport@gmail.com', '01848080971', NULL, '52/2 b.b road', NULL, NULL, 'tashfia export', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2021-11-27 23:32:14', '2021-11-27 23:32:14'),
(5, 'Winifred Pratt', 'general', 'rydoredy@mailinator.com', '+1 (728) 971-9785', '+1 (798) 921-7253', 'Eos officia aut proi', 'Qui dolore eos comm', NULL, 'Walsh Mcintosh Inc', 'Neal and Blankenship Inc', '0', 'Sit ut labore quibus', 'Iure quo et repudian', '2021-11-30-61a52b3ed959d.jpg', 'Laborum aperiam qui', 'Cillum aliquam maxim', 'Perspiciatis accusa', 92, '2021-11-30 01:34:23', '2021-11-30 01:34:23'),
(6, 'Miranda Schmidt', 'general', 'jedeg@mailinator.com', '+1 (287) 674-7165', '+1 (466) 896-5755', 'Nihil animi mollit', 'Voluptatem facilis d', NULL, 'Shields and Ross LLC', 'Meyers Kelley Traders', '0', 'Vel ut deserunt temp', 'Dolor rerum asperior', '2021-11-30-61a52b6ac208d.jpg', 'Error incidunt est', 'Nihil amet fugiat', 'Quia aut in aut nihi', 92, '2021-11-30 01:35:07', '2021-11-30 01:35:07'),
(7, 'Judith Kaufman', 'general', 'lacaw@mailinator.com', '+1 (881) 583-7501', '+1 (993) 664-8655', 'Nulla deserunt susci', 'Ex voluptate in sit', NULL, 'Salinas Goff LLC', 'Knox and Cantrell Plc', '0', 'Reiciendis nesciunt', 'Dolor dolor eligendi', '2021-11-30-61a5322355d56.jpg', 'Et mollit sed recusa', 'Sapiente impedit di', 'Qui alias et rerum r', 92, '2021-11-30 02:03:47', '2021-11-30 02:03:47'),
(9, 'sdfsdf', 'general', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 92, '2021-12-01 17:27:22', '2021-12-01 17:27:22'),
(10, 'Brendan Wall', 'general', 'misy@mailinator.com', '+1 (907) 483-9685', '+1 (491) 788-7364', 'Aut velit architecto', 'Sapiente quaerat est', NULL, 'Hopkins and Lancaster Plc', 'Beck and Nielsen Inc', '2147483647', 'Incidunt sunt tempo', 'Aut nulla quo libero', '2021-12-02-61a8c3148edb7.jpg', 'Soluta commodi id c', 'Quisquam commodi sun', 'Quod adipisci at dol', 92, '2021-12-02 18:59:01', '2021-12-02 18:59:01'),
(11, 'Clementine Garrett', 'general', 'kyre@mailinator.com', '+1 (287) 272-1141', '+1 (511) 548-4669', 'Laborum quidem rem a', 'Ullamco voluptate ip', NULL, 'Mccullough Conway Inc', 'Russell Steele Associates', '4444444', 'Obcaecati qui except', 'Fugiat eu eius face', '', 'Do deserunt minima a', 'Nostrum et sit excep', 'Non autem saepe irur', 92, '2021-12-02 18:59:18', '2021-12-02 18:59:18'),
(12, 'Faith Sawyer', 'general', 'bebysuw@mailinator.com', '+1 (998) 619-9699', '+1 (305) 359-3872', 'Et Nam incididunt am', 'In vitae fuga Et co', NULL, 'Green Pace Inc', 'Pittman Schroeder Inc', '27349829387492734892', 'Aut a maxime dolore', 'Ipsum ea exercitati', '', 'Iusto rerum asperior', 'Sit irure consequat', 'Ipsum exercitation', 92, '2021-12-02 19:09:09', '2021-12-02 19:09:09'),
(13, 'Cassidy Mcmahon', 'general', NULL, '+1 (676) 679-2183', NULL, 'Nisi qui harum rerum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:13:28', '2021-12-04 12:13:28'),
(14, 'Nissim Blackburn', 'general', NULL, '+1 (462) 572-5913', NULL, 'Porro delectus nost', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:16:41', '2021-12-04 12:16:41'),
(15, 'Gareth Randall', 'general', NULL, '+1 (714) 367-2127', NULL, 'Delectus quia ut la', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:17:00', '2021-12-04 12:17:00'),
(16, 'Alden Kramer', 'general', NULL, '+1 (571) 487-6104', NULL, 'Tenetur enim dolores', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:21:32', '2021-12-04 12:21:32'),
(17, 'Honorato Ortega', 'general', NULL, '+1 (294) 293-7415', NULL, 'Voluptatem deserunt', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:21:57', '2021-12-04 12:21:57'),
(18, 'Magee Fitzgerald', 'general', NULL, '+1 (671) 168-9957', NULL, 'Minus aute aute non', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:23:03', '2021-12-04 12:23:03'),
(19, 'Nita Cooke', 'general', NULL, '+1 (809) 151-7592', NULL, 'Natus nihil eligendi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:23:57', '2021-12-04 12:23:57'),
(20, 'Caryn Atkins', 'wal in customer', NULL, '+1 (256) 247-7329', NULL, 'Est tempore deseru', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:26:29', '2021-12-04 12:26:29'),
(21, 'Shad Flowers', 'wal in customer', NULL, '+1 (908) 909-9502', NULL, 'Blanditiis perferend', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 12:27:01', '2021-12-04 12:27:01'),
(22, 'Mari Albert', 'wal in customer', NULL, '+1 (166) 113-9968', NULL, 'Est ut minim aut ani', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 13:08:20', '2021-12-04 13:08:20'),
(23, 'Nathaniel Webb', 'wal in customer', NULL, '+1 (938) 377-9215', NULL, 'Quis aliquid quis po', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 13:22:07', '2021-12-04 13:22:07'),
(24, 'wesd', 'wal in customer', NULL, '23423', NULL, 'Nisi qui harum rerum', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-12-04 13:26:57', '2021-12-04 13:26:57');

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
(278, 'customer update', 'customer/update', 'customer', NULL, 'CustomerController@update', 'Post', 1, NULL, 1, 0, '1', '2021-10-12 07:19:42', '2021-10-12 07:21:22'),
(279, 'Customer Delete', 'customer/delete', 'customer', NULL, 'CustomerController@delete', 'get', 1, '{id}', 1, 0, '1', '2021-10-12 07:20:21', '2021-10-12 07:21:25'),
(280, 'supllier index', 'supplier/index', 'supplier', NULL, 'supplierController@index', 'get', 1, NULL, 1, 1, '0', '2021-10-12 07:25:14', '2021-10-12 07:26:03'),
(281, 'supplier search', 'supplier/search', 'supplier', NULL, 'supplierController@search', 'Post', 1, NULL, 1, 0, '1', '2021-10-12 07:25:50', '2021-10-12 07:25:50'),
(282, 'supplier store', 'supplier/store', 'supplier', NULL, 'supplierController@store', 'Post', 1, NULL, 1, 0, '1', '2021-10-12 07:30:59', '2021-10-12 07:30:59'),
(283, 'supplier edit', 'supplier/edit', 'supplier', NULL, 'supplierController@edit', 'get', 1, '{id}', 1, 0, '1', '2021-10-12 07:31:39', '2021-10-12 07:31:39'),
(284, 'supplier update', 'supplier/update', 'supplier', NULL, 'supplierController@update', 'Post', 1, NULL, 1, 0, '1', '2021-10-12 07:32:10', '2021-10-12 07:32:10'),
(285, 'supplier  delete', 'supplier/delete', 'supplier', NULL, 'supplierController@delete', 'get', 1, '{id}', 1, 0, '1', '2021-10-12 07:33:13', '2021-10-12 07:33:13'),
(286, 'product ingredient view', 'product/ingredients', 'product', NULL, 'ProductController@ingredients', 'get', 1, '{id}', 1, 0, '1', '2021-10-13 17:31:38', '2021-10-13 17:31:38'),
(287, 'Purchase index', 'purchase/index', 'purchase', NULL, 'purchaseController@index', 'get', 1, NULL, 1, 1, '0', '2021-10-13 18:13:25', '2021-10-13 18:13:25'),
(288, 'Purchase search', 'purchase/search', 'purchase', NULL, 'purchaseController@search', 'Post', 1, NULL, 1, 0, '1', '2021-10-13 18:13:56', '2021-10-13 18:13:56'),
(289, 'Purchase store', 'purchase/store', 'purchase', NULL, 'purchaseController@store', 'Post', 1, NULL, 1, 0, '1', '2021-10-13 18:14:28', '2021-10-13 18:14:28'),
(290, 'Purchase edit', 'purchase/edit', 'purchase', NULL, 'purchaseController@edit', 'get', 1, '{id}', 1, 0, '1', '2021-10-13 18:14:57', '2021-10-13 18:14:57'),
(291, 'Purchase update', 'purchase/update', 'purchase', NULL, 'purchaseController@update', 'Post', 1, NULL, 1, 0, '1', '2021-10-13 18:15:26', '2021-10-13 18:15:26'),
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
(304, 'Product Category update', 'productcategory/update', 'productcategory', NULL, 'ProductCategoryController@update', 'Post', 1, '{id}', 1, 0, '0', '2021-10-12 22:42:30', '2021-12-26 06:24:40'),
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
(320, 'Edit product', 'product/edit', 'product', NULL, 'ProductController@edit', 'get', 1, '{id}', 1, 0, '0', '2021-12-26 06:49:29', '2021-12-26 06:49:29'),
(321, 'Update Product', 'product/update', 'product', NULL, 'ProductController@update', 'Post', 1, '{id}', 1, 0, '0', '2021-12-26 06:50:43', '2021-12-26 06:50:43');

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
(5, 6, 'Hope Sandoval', '34', '51', '92', '2021-10-14 11:53:33', '2021-10-14 11:53:33');

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
(7, 'intertainement', 92, '2021-11-27 23:54:13', '2021-11-27 23:54:13');

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
(1, 'Dashboard', 'ড্যাশবোর্ড', NULL, 1, 'ik-home', 1, '2021-07-06 14:13:34', NULL, 1, NULL),
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
(58, 'New Sales', 'Create Sales', 25, 1, NULL, 316, '2021-11-18 06:16:21', '2021-11-18 06:16:21', 92, 92);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
(14885, 11, 1, 'adminDashboard', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14886, 11, 91, 'admin/change_password', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14887, 11, 92, 'admin/save_change_password', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14888, 11, 3, 'dynamic_route', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14889, 11, 4, 'dynamic_route', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14890, 11, 14, 'delete_route', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14891, 11, 16, 'edit_route', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14892, 11, 19, 'update_route', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14893, 11, 5, 'role/all_role', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14894, 11, 6, 'role/add_role', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14895, 11, 8, 'save_role', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14896, 11, 11, 'edit_role', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14897, 11, 12, 'update_role', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14898, 11, 13, 'delete_role', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14899, 11, 9, 'all_user', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14900, 11, 10, 'save_user', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14901, 11, 93, 'edit_user', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14902, 11, 94, 'upadte_user', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14903, 11, 95, 'suspend_user', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14904, 11, 96, 'unsuspend_user', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14905, 11, 127, 'delete_user', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14906, 11, 130, 'test', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14907, 11, 131, 'menu/menu_create', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14908, 11, 133, 'menu/menu_save', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14909, 11, 134, 'menu/all_menu', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14910, 11, 135, 'menu/menu_search', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14911, 11, 138, 'menu/edit_menu', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14912, 11, 139, 'menu/update_menu', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14913, 11, 254, 'product/craete', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14914, 11, 255, 'product/store', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14915, 11, 256, 'product/alldata', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14916, 11, 257, 'product/index', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14917, 11, 258, 'product/view', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14918, 11, 259, 'product/delete', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14919, 11, 286, 'product/ingredients', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14920, 11, 320, 'product/edit', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14921, 11, 321, 'product/update', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14922, 11, 260, 'sales/show_sales_department', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14923, 11, 261, 'sales/get_sales_department_data', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14924, 11, 262, 'sales/store_sales_department_data', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14925, 11, 263, 'sales/edit_sales_department_data', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14926, 11, 264, 'sales/update_sales_department_data', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14927, 11, 265, 'sales/delete_sales_department_data', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14928, 11, 273, 'sales/sales_department_invoice', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14929, 11, 316, 'sales/create', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14930, 11, 317, 'sales/customer_payment_history_search', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14931, 11, 318, 'sales/sales_details_invoice', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14932, 11, 319, 'sales/add_walk_in_cuatomer', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14933, 11, 266, 'Department/show_lot_department', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14934, 11, 267, 'Department/search', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14935, 11, 268, 'Department/store_lot_department_data', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14936, 11, 269, 'Department/delete_lot_department_data', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14937, 11, 270, 'Department/edit_lot_department_data', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14938, 11, 271, 'Department/update_lot_department_data', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14939, 11, 272, 'Department/show_single_lot_department_data', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14940, 11, 274, 'customer/all_customer', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14941, 11, 275, 'customer/search', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14942, 11, 276, 'customer/store', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14943, 11, 277, 'customer/edit', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14944, 11, 278, 'customer/update', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14945, 11, 279, 'customer/delete', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14946, 11, 307, 'customer/show', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14947, 11, 280, 'supplier/index', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14948, 11, 281, 'supplier/search', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14949, 11, 282, 'supplier/store', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14950, 11, 283, 'supplier/edit', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14951, 11, 284, 'supplier/update', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14952, 11, 285, 'supplier/delete', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14953, 11, 293, 'supplier/show', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14954, 11, 287, 'purchase/index', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14955, 11, 288, 'purchase/search', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14956, 11, 289, 'purchase/store', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14957, 11, 290, 'purchase/edit', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14958, 11, 291, 'purchase/update', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14959, 11, 292, 'purchase/delete', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14960, 11, 294, 'purchase/show', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14961, 11, 295, 'ingredient/index', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14962, 11, 296, 'ingredient/search', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14963, 11, 297, 'ingredient/store', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14964, 11, 298, 'ingredient/edit', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14965, 11, 299, 'ingredient/delete', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14966, 11, 300, 'productcategory/index', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14967, 11, 301, 'productcategory/search', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14968, 11, 302, 'productcategory/store', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14969, 11, 303, 'productcategory/edit', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14970, 11, 304, 'productcategory/update', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14971, 11, 305, 'productcategory/delete', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14972, 11, 308, 'expenses/expenses_category_index', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14973, 11, 309, 'expenses/expenses_category_search', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14974, 11, 310, 'expenses/expenses_category_store', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14975, 11, 311, 'expenses/expenses_category_delete', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14976, 11, 312, 'expenses/expenses_index', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14977, 11, 313, 'expenses/expenses_search', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14978, 11, 314, 'expenses/expenses_store', '2021-12-26 06:55:38', '2021-12-26 06:55:38'),
(14979, 11, 315, 'expenses/expenses_delete', '2021-12-26 06:55:38', '2021-12-26 06:55:38');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `product_category_id` int(11) DEFAULT NULL,
  `product_type` varchar(255) DEFAULT NULL,
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

INSERT INTO `products` (`id`, `product_category_id`, `product_type`, `chalan_no`, `party_name`, `quantity`, `unit_price`, `color_name`, `open_tube`, `sl_no`, `ggsm`, `yarn_count`, `yarn_lot_no`, `fb_rv_date`, `batch_process_date`, `lot_no`, `batch_no`, `order_no`, `style_no`, `finish_gsm`, `fabric_type`, `card_no`, `created_by`, `created_at`, `updated_at`) VALUES
(23, 2, NULL, 'Doloremque suscipit', 'Grant Daniel', '32', NULL, 'Angelica Carey', 'Perferendis harum ex', 'Nesciunt voluptatib', 'Libero ab odit delen', 'Qui praesentium moll', 'Elit reiciendis lab', '1985-07-19 00:00:00', '1979-04-29 00:00:00', 'Assumenda laborum al', 'Incidunt in tempore', 'Molestiae nihil est', 'Culpa labore quibus', 'Impedit aute necess', 'Voluptatem molestias', '1972729482', NULL, '2021-10-13 15:54:53', '2021-11-29 23:26:29'),
(24, 2, NULL, 'Quam quasi eiusmod v', 'Sacha Vang', '9645', NULL, 'Jordan Griffin', 'Quis repudiandae qui', 'Qui aliquam harum ex', 'Praesentium iure ea', 'Illo illum quaerat', 'Aliqua Veniam quam', '2013-09-23 00:00:00', '2001-08-25 00:00:00', 'Aute nihil ipsum pro', 'Quaerat beatae harum', 'Eos eos ullam labor', 'Ab cupiditate soluta', 'Ut quia est laudant', 'Perspiciatis sed of', '827148731', NULL, '2021-10-13 15:56:26', '2021-11-29 23:26:06'),
(25, 2, NULL, 'Quam quasi eiusmod v', 'Sacha Vang', '968', NULL, 'Jordan Griffin', 'Quis repudiandae qui', 'Qui aliquam harum ex', 'Praesentium iure ea', 'Illo illum quaerat', 'Aliqua Veniam quam', '2013-09-23 00:00:00', '2001-08-25 00:00:00', 'Aute nihil ipsum pro', 'Quaerat beatae harum', 'Eos eos ullam labor', 'Ab cupiditate soluta', 'Ut quia est laudant', 'Perspiciatis sed of', '285231764', NULL, '2021-10-13 15:57:27', '2021-10-13 19:48:43'),
(26, 2, NULL, 'Quam quasi eiusmod v', 'Sacha Vang', '45', NULL, 'Jordan Griffin', 'Quis repudiandae qui', 'Qui aliquam harum ex', 'Praesentium iure ea', 'Illo illum quaerat', 'Aliqua Veniam quam', '2013-09-23 00:00:00', '2001-08-25 00:00:00', 'Aute nihil ipsum pro', 'Quaerat beatae harum', 'Eos eos ullam labor', 'Ab cupiditate soluta', 'Ut quia est laudant', 'Perspiciatis sed of', '771333814', NULL, '2021-10-13 15:57:49', '2021-10-13 15:57:49'),
(27, 2, NULL, 'Enim amet aperiam t', 'Leslie Dillon', '345', NULL, 'Hedley Kline', 'Rem blanditiis sunt', 'Ea occaecat cumque i', 'Neque doloribus ea p', 'Doloremque voluptate', 'Reprehenderit odit', '2017-09-29 00:00:00', '1980-12-06 00:00:00', 'Aperiam rerum adipis', 'Velit ut eaque ea vo', 'Doloremque eu aliqua', 'Enim rerum ut autem', 'Explicabo Accusamus', 'Est error in qui ani', '1108787644', NULL, '2021-10-13 15:58:47', '2021-10-13 15:58:47'),
(28, 2, NULL, 'Enim amet aperiam t', 'Leslie Dillon', '45', NULL, 'Hedley Kline', 'Rem blanditiis sunt', 'Ea occaecat cumque i', 'Neque doloribus ea p', 'Doloremque voluptate', 'Reprehenderit odit', '2017-09-29 00:00:00', '1980-12-06 00:00:00', 'Aperiam rerum adipis', 'Velit ut eaque ea vo', 'Doloremque eu aliqua', 'Enim rerum ut autem', 'Explicabo Accusamus', 'Est error in qui ani', '266989971', NULL, '2021-10-13 15:59:39', '2021-10-13 15:59:39'),
(29, 1, NULL, 'Ad fugit minima ass', 'Xerxes Norton', '45', NULL, 'Ishmael Morgan', 'Adipisci non molesti', 'Veniam dolore lorem', 'Sed inventore quia e', 'Commodo dolor et eiu', 'Blanditiis enim sit', '2014-02-22 00:00:00', '1972-03-28 00:00:00', 'Modi qui ipsa eveni', 'Id ex ea anim eos au', 'Sint dolor quis neq', 'Odit voluptas repell', 'Voluptas dolorem eve', 'Ipsum irure eu sit', '2139582579', NULL, '2021-10-13 16:06:55', '2021-10-13 16:06:55'),
(30, 2, NULL, 'Magna dignissimos ip', 'Elijah Charles', NULL, NULL, 'Jena Talley', 'Veniam aut est reru', 'Delectus expedita c', 'Ipsum magnam quos o', 'Totam nemo rerum err', 'Explicabo Inventore', '1992-04-05 00:00:00', '1970-08-17 00:00:00', 'Quis eveniet quo ea', 'Quam molestiae vitae', 'Iusto in accusantium', 'Magnam dolorem eiusm', 'Rerum totam ut ex ea', 'Dolore quis esse vol', '429213367', NULL, '2021-11-26 20:06:16', '2021-11-26 20:06:16'),
(31, 2, NULL, 'Magna dignissimos ip', 'Elijah Charles', NULL, NULL, 'Jena Talley', 'Veniam aut est reru', 'Delectus expedita c', 'Ipsum magnam quos o', 'Totam nemo rerum err', 'Explicabo Inventore', '1992-04-05 00:00:00', '1970-08-17 00:00:00', 'Quis eveniet quo ea', 'Quam molestiae vitae', 'Iusto in accusantium', 'Magnam dolorem eiusm', 'Rerum totam ut ex ea', 'Dolore quis esse vol', '16784852', NULL, '2021-11-26 20:11:41', '2021-11-26 20:11:41'),
(32, 2, NULL, 'Magna dignissimos ip', 'Elijah Charles', NULL, NULL, 'Jena Talley', 'Veniam aut est reru', 'Delectus expedita c', 'Ipsum magnam quos o', 'Totam nemo rerum err', 'Explicabo Inventore', '1992-04-05 00:00:00', '1970-08-17 00:00:00', 'Quis eveniet quo ea', 'Quam molestiae vitae', 'Iusto in accusantium', 'Magnam dolorem eiusm', 'Rerum totam ut ex ea', 'Dolore quis esse vol', '332264222', NULL, '2021-11-26 20:12:08', '2021-11-26 20:12:08'),
(33, 2, NULL, 'Aut aperiam voluptas', 'Jelani Jackson', NULL, NULL, 'Ciara Mejia', 'Quia omnis ad do ab', 'Iusto veniam suscip', 'Sit mollit omnis cu', 'Consequuntur odio qu', 'Aut sed consectetur', '1997-10-27 00:00:00', '1972-09-25 00:00:00', 'Cumque minus magnam', 'Reprehenderit dolor', 'Consequatur Nisi eo', 'Porro iste qui moles', 'Dolore eos deserunt', 'Dolor ullam rerum pe', '1902869969', NULL, '2021-11-26 20:14:10', '2021-11-26 20:14:10'),
(34, 2, NULL, 'Aut aperiam voluptas', 'Jelani Jackson', NULL, NULL, 'Ciara Mejia', 'Quia omnis ad do ab', 'Iusto veniam suscip', 'Sit mollit omnis cu', 'Consequuntur odio qu', 'Aut sed consectetur', '1997-10-27 00:00:00', '1972-09-25 00:00:00', 'Cumque minus magnam', 'Reprehenderit dolor', 'Consequatur Nisi eo', 'Porro iste qui moles', 'Dolore eos deserunt', 'Dolor ullam rerum pe', '1895828625', NULL, '2021-11-26 20:16:25', '2021-11-26 20:16:25'),
(35, 1, NULL, '4963', 'Ridoy', '5000', NULL, 'Red', 'Open', '12345', '170', '30', '120', NULL, NULL, '12', '12', '32', '567', '160', 'Single J/S', '1055677609', NULL, '2021-11-27 21:19:33', '2021-12-26 07:50:18'),
(36, 1, NULL, '2025', 'abdullah traders', '1000', NULL, 'black', 'open', '1.75', '160', '30', '110', '2021-11-27 00:00:00', '2021-11-27 00:00:00', '100', '200', '10', '50', '160', 's/j', '1269519468', NULL, '2021-11-27 23:27:04', '2021-11-27 23:29:02'),
(38, 2, NULL, 'Consectetur sit qu', 'Ashton Manning', NULL, NULL, 'TaShya Walls', 'Sed modi tempora nul', 'Ab sequi nemo blandi', 'In est iste esse cup', 'Mollitia dolorem tem', 'Exercitation quia an', NULL, NULL, 'In ad et est qui', 'Vel vel tempor enim', 'Et veniam eiusmod n', 'Nam ut voluptas ab a', 'In tempore sint lab', 'Quasi in consequuntu', '968036619', NULL, '2021-12-26 06:00:09', '2021-12-26 07:47:16');

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
(1, 'purchase product', 92, NULL, '2021-12-26 12:24:48'),
(2, 'ready product', NULL, NULL, NULL),
(3, 'Fabric Stock Purchase', 92, '2021-11-27 20:58:13', '2021-11-27 20:58:13'),
(4, 'interlock', 92, '2021-11-28 18:25:14', '2021-11-28 18:25:14'),
(5, 'terry', 92, '2021-11-28 18:25:31', '2021-11-28 18:25:31'),
(6, 'fleece', 92, '2021-11-28 18:25:45', '2021-11-28 18:25:45'),
(7, 's/j', 92, '2021-11-28 18:25:56', '2021-11-28 18:25:56');

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
(1, 'gggggsdfsdf', '-240', NULL, NULL, '2021-10-13 16:33:37', '2021-12-26 12:00:09'),
(2, 'ssdfsdf', '232', NULL, NULL, '2021-10-13 16:33:37', '2021-10-13 16:33:37'),
(3, 'Yan', '-296', NULL, 92, '2021-11-27 21:07:40', '2021-12-26 12:00:09');

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
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`id`, `product_id`, `supplier_id`, `created_by`, `quantity`, `status`, `unit_price`, `total_purchas_price`, `created_at`, `updated_at`) VALUES
(2, 23, 1, '92', '-3608', '1', '54.00', '545.00', '2021-10-14 01:48:36', '2021-11-29 00:41:58'),
(3, 25, 2, '92', '302', '1', '55.00', '545.00', '2021-10-14 01:48:43', '2021-11-27 02:24:36'),
(4, 24, 1, '92', '40', '1', '20.00', '800.00', '2021-11-27 19:31:25', '2021-11-27 19:31:25'),
(5, 35, 1, '92', '5000', '1', '30.00', '150000.00', '2021-11-27 21:24:20', '2021-11-27 21:24:20'),
(6, 36, 1, '92', '1000', '1', '100.00', '100000.00', '2021-11-27 23:29:02', '2021-11-27 23:29:02'),
(7, 24, 2, '92', '9645', '1', '34.00', '327930.00', '2021-11-30 05:26:06', '2021-11-30 05:26:06'),
(8, 23, 2, '92', '32', '1', '32.00', '1024.00', '2021-11-30 05:26:29', '2021-11-30 05:26:29');

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
(6, 38, 3, '346', '2021-12-26 12:00:09', '2021-12-26 12:00:09'),
(7, 38, 1, '576', '2021-12-26 12:00:09', '2021-12-26 12:00:09');

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
(17, 'test', 'test', '2021-06-10 07:09:52', '2021-06-10 07:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `total_price` varchar(255) DEFAULT NULL,
  `payment_amount` varchar(255) DEFAULT NULL,
  `due` varchar(255) DEFAULT NULL,
  `reference` varchar(255) DEFAULT NULL,
  `sales_date` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `sales_code` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `customer_id`, `stock_id`, `total_price`, `payment_amount`, `due`, `reference`, `sales_date`, `status`, `sales_code`, `created_by`, `created_at`, `updated_at`, `date`) VALUES
(18, 1, NULL, NULL, NULL, '160', NULL, NULL, 0, NULL, NULL, '2021-11-27 01:40:30', '2021-11-27 01:40:30', NULL),
(19, 1, NULL, NULL, NULL, '160', NULL, NULL, 0, NULL, NULL, '2021-11-27 01:40:30', '2021-11-27 01:40:30', NULL),
(20, 2, NULL, NULL, NULL, '268', NULL, NULL, 0, NULL, NULL, '2021-11-27 01:46:48', '2021-11-27 01:46:48', NULL),
(21, 2, NULL, NULL, NULL, '268', NULL, NULL, 0, NULL, NULL, '2021-11-27 01:46:48', '2021-11-27 01:46:48', NULL),
(22, 2, NULL, NULL, NULL, '376', NULL, NULL, 0, NULL, NULL, '2021-11-27 01:47:22', '2021-11-27 01:47:22', NULL),
(23, 2, NULL, NULL, NULL, '376', NULL, NULL, 0, NULL, NULL, '2021-11-27 01:47:22', '2021-11-27 01:47:22', NULL),
(24, 2, NULL, NULL, NULL, '376', NULL, NULL, 0, NULL, NULL, '2021-11-27 01:47:22', '2021-11-27 01:47:22', NULL),
(25, 2, NULL, NULL, NULL, '376', NULL, NULL, 0, NULL, NULL, '2021-11-27 01:47:22', '2021-11-27 01:47:22', NULL),
(26, 2, NULL, NULL, NULL, '376', NULL, NULL, 0, NULL, NULL, '2021-11-27 01:48:18', '2021-11-27 01:48:18', NULL),
(27, 2, NULL, NULL, NULL, '226', NULL, NULL, 0, NULL, NULL, '2021-11-27 02:27:44', '2021-11-27 02:27:44', NULL),
(28, 3, NULL, NULL, NULL, '383', NULL, NULL, 0, NULL, NULL, '2021-11-27 02:40:39', '2021-11-27 02:40:39', NULL),
(29, 1, NULL, NULL, NULL, '157', NULL, NULL, 0, NULL, NULL, '2021-11-27 19:29:48', '2021-11-27 19:29:48', NULL),
(30, 2, NULL, NULL, NULL, '0', NULL, NULL, 0, NULL, NULL, '2021-11-27 19:45:07', '2021-11-27 19:45:07', NULL),
(31, 1, NULL, NULL, NULL, '103', NULL, NULL, 0, NULL, NULL, '2021-11-27 21:44:59', '2021-11-27 21:44:59', NULL),
(32, 4, NULL, NULL, NULL, '100', NULL, NULL, 0, NULL, NULL, '2021-11-27 23:38:42', '2021-11-27 23:38:42', NULL),
(33, 4, NULL, NULL, NULL, '-145', NULL, NULL, 0, NULL, NULL, '2021-11-30 04:00:23', '2021-11-30 04:00:23', NULL),
(34, 2, NULL, NULL, NULL, '-16', NULL, NULL, 0, NULL, NULL, '2021-11-30 04:03:29', '2021-11-30 04:03:29', NULL),
(35, 2, NULL, NULL, NULL, '-21', NULL, NULL, 0, NULL, NULL, '2021-11-30 04:59:02', '2021-11-30 04:59:02', NULL),
(36, 2, NULL, NULL, NULL, '164', NULL, NULL, 0, NULL, NULL, '2021-11-30 05:34:32', '2021-11-30 05:34:32', NULL),
(37, 2, NULL, NULL, NULL, '-65', NULL, NULL, 0, NULL, NULL, '2021-11-30 05:44:36', '2021-11-30 05:44:36', NULL),
(38, 1, NULL, '86', '68', '18', NULL, NULL, 0, '1428947463', NULL, '2021-12-04 09:44:50', '2021-12-04 09:44:50', NULL),
(39, 1, NULL, '86', '68', '18', NULL, NULL, 0, '519964501', NULL, '2021-12-04 09:45:20', '2021-12-04 09:45:20', NULL),
(40, 21, NULL, '86', '108', '-22', NULL, NULL, 0, '1202176291', NULL, '2021-12-04 12:27:25', '2021-12-04 12:27:25', NULL),
(41, 21, NULL, '86', '108', '-22', NULL, NULL, 0, '2031778706', NULL, '2021-12-04 12:27:59', '2021-12-04 12:27:59', NULL),
(42, 21, NULL, '86', '84', '2', NULL, NULL, 0, '142125802', NULL, '2021-12-04 12:29:22', '2021-12-04 12:29:22', NULL),
(43, 21, NULL, '86', '84', '2', NULL, NULL, 0, '2076732726', NULL, '2021-12-04 12:29:43', '2021-12-04 12:29:43', NULL),
(44, 4, NULL, '94', '68', '26', NULL, NULL, 0, '589122680', NULL, '2021-12-04 13:21:44', '2021-12-04 13:21:44', NULL),
(45, 23, NULL, '86', '79', '7', NULL, NULL, 0, '92054114', NULL, '2021-12-04 13:22:36', '2021-12-04 13:22:36', NULL),
(46, 3, NULL, '529', '102', '427', NULL, NULL, 0, '161002191', NULL, '2021-12-04 13:26:32', '2021-12-04 13:26:32', NULL),
(47, 24, NULL, '43', '43', '0', NULL, NULL, 1, '1459230430', NULL, '2021-12-04 13:27:21', '2021-12-04 13:27:21', NULL);

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
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_details`
--

INSERT INTO `sales_details` (`id`, `customer_id`, `sales_id`, `stock_id`, `quantity`, `unit_price`, `total_price`, `created_at`, `updated_at`) VALUES
(1, 4, NULL, 9, '1', '54.00', '54.00', '2021-11-30 03:56:33', '2021-11-30 03:56:33'),
(2, 4, NULL, 9, '1', '54.00', '54.00', '2021-11-30 03:59:56', '2021-11-30 03:59:56'),
(3, 4, NULL, 9, '1', '54.00', '54.00', '2021-11-30 03:59:56', '2021-11-30 03:59:56'),
(4, 4, NULL, 9, '3', '64.00', '192.00', '2021-11-30 03:59:56', '2021-11-30 03:59:56'),
(5, 4, NULL, 7, '1', '55.00', '55.00', '2021-11-30 03:59:56', '2021-11-30 03:59:56'),
(6, 4, NULL, 9, '1', '54.00', '54.00', '2021-11-30 04:00:23', '2021-11-30 04:00:23'),
(7, 4, NULL, 9, '1', '54.00', '54.00', '2021-11-30 04:00:23', '2021-11-30 04:00:23'),
(8, 4, NULL, 9, '3', '64.00', '192.00', '2021-11-30 04:00:23', '2021-11-30 04:00:23'),
(9, 4, NULL, 7, '1', '55.00', '55.00', '2021-11-30 04:00:23', '2021-11-30 04:00:23'),
(10, 2, NULL, 6, '1', '54.00', '54.00', '2021-11-30 04:03:29', '2021-11-30 04:03:29'),
(11, 2, NULL, 9, '4', '71.00', '284.00', '2021-11-30 04:03:29', '2021-11-30 04:03:29'),
(12, 2, 34, 6, '1', '54.00', '54.00', '2021-11-30 04:03:29', '2021-11-30 04:03:29'),
(13, 2, 34, 9, '4', '71.00', '284.00', '2021-11-30 04:03:29', '2021-11-30 04:03:29'),
(14, 2, NULL, 5, '5', '61.00', '305.00', '2021-11-30 04:59:02', '2021-11-30 04:59:02'),
(15, 2, NULL, 7, '3', '58.00', '174.00', '2021-11-30 04:59:02', '2021-11-30 04:59:02'),
(16, 2, 35, 5, '5', '61.00', '305.00', '2021-11-30 04:59:02', '2021-11-30 04:59:02'),
(17, 2, 35, 7, '3', '58.00', '174.00', '2021-11-30 04:59:02', '2021-11-30 04:59:02'),
(18, 2, NULL, 6, '4', '61.00', '244.00', '2021-11-30 05:34:32', '2021-11-30 05:34:32'),
(19, 2, NULL, 7, '6', '70.00', '420.00', '2021-11-30 05:34:32', '2021-11-30 05:34:32'),
(20, 2, 36, 6, '4', '61.00', '244.00', '2021-11-30 05:34:32', '2021-11-30 05:34:32'),
(21, 2, 36, 7, '6', '70.00', '420.00', '2021-11-30 05:34:32', '2021-11-30 05:34:32'),
(22, 2, NULL, 7, '3', '55.00', '165.00', '2021-11-30 05:44:36', '2021-11-30 05:44:36'),
(23, 2, NULL, 7, '1', '69.00', '70.00', '2021-11-30 05:44:36', '2021-11-30 05:44:36'),
(24, 2, 37, 7, '3', '55.00', '165.00', '2021-11-30 05:44:36', '2021-11-30 05:44:36'),
(25, 2, 37, 7, '1', '69.00', '70.00', '2021-11-30 05:44:36', '2021-11-30 05:44:36'),
(26, 1, 38, 5, '1', '43.00', '43.00', '2021-12-04 09:44:50', '2021-12-04 09:44:50'),
(27, 1, 38, 5, '1', '43.00', '43.00', '2021-12-04 09:44:50', '2021-12-04 09:44:50'),
(28, 1, 38, 5, '1', '43.00', '43.00', '2021-12-04 09:44:50', '2021-12-04 09:44:50'),
(29, 1, 38, 5, '1', '43.00', '43.00', '2021-12-04 09:44:50', '2021-12-04 09:44:50'),
(30, 1, 39, 5, '1', '43.00', '43.00', '2021-12-04 09:45:20', '2021-12-04 09:45:20'),
(31, 1, 39, 5, '1', '43.00', '43.00', '2021-12-04 09:45:20', '2021-12-04 09:45:20'),
(32, 1, 39, 5, '1', '43.00', '43.00', '2021-12-04 09:45:20', '2021-12-04 09:45:20'),
(33, 1, 39, 5, '1', '43.00', '43.00', '2021-12-04 09:45:20', '2021-12-04 09:45:20'),
(34, 21, 40, 4, '1', '43.00', '43.00', '2021-12-04 12:27:25', '2021-12-04 12:27:25'),
(35, 21, 40, 5, '1', '43.00', '43.00', '2021-12-04 12:27:25', '2021-12-04 12:27:25'),
(36, 21, 40, 4, '1', '43.00', '43.00', '2021-12-04 12:27:25', '2021-12-04 12:27:25'),
(37, 21, 40, 5, '1', '43.00', '43.00', '2021-12-04 12:27:25', '2021-12-04 12:27:25'),
(38, 21, 41, 4, '1', '43.00', '43.00', '2021-12-04 12:27:59', '2021-12-04 12:27:59'),
(39, 21, 41, 5, '1', '43.00', '43.00', '2021-12-04 12:27:59', '2021-12-04 12:27:59'),
(40, 21, 41, 4, '1', '43.00', '43.00', '2021-12-04 12:27:59', '2021-12-04 12:27:59'),
(41, 21, 41, 5, '1', '43.00', '43.00', '2021-12-04 12:27:59', '2021-12-04 12:27:59'),
(42, 21, 42, 4, '1', '43.00', '43.00', '2021-12-04 12:29:22', '2021-12-04 12:29:22'),
(43, 21, 42, 5, '1', '43.00', '43.00', '2021-12-04 12:29:22', '2021-12-04 12:29:22'),
(44, 21, 42, 4, '1', '43.00', '43.00', '2021-12-04 12:29:22', '2021-12-04 12:29:22'),
(45, 21, 42, 5, '1', '43.00', '43.00', '2021-12-04 12:29:22', '2021-12-04 12:29:22'),
(46, 21, 43, 4, '1', '43.00', '43.00', '2021-12-04 12:29:43', '2021-12-04 12:29:43'),
(47, 21, 43, 5, '1', '43.00', '43.00', '2021-12-04 12:29:43', '2021-12-04 12:29:43'),
(48, 21, 43, 4, '1', '43.00', '43.00', '2021-12-04 12:29:43', '2021-12-04 12:29:43'),
(49, 21, 43, 5, '1', '43.00', '43.00', '2021-12-04 12:29:43', '2021-12-04 12:29:43'),
(50, 4, 44, 5, '1', '43.00', '43.00', '2021-12-04 13:21:44', '2021-12-04 13:21:44'),
(51, 4, 44, 8, '1', '51.00', '51.00', '2021-12-04 13:21:44', '2021-12-04 13:21:44'),
(52, 4, 44, 5, '1', '43.00', '43.00', '2021-12-04 13:21:44', '2021-12-04 13:21:44'),
(53, 4, 44, 8, '1', '51.00', '51.00', '2021-12-04 13:21:44', '2021-12-04 13:21:44'),
(54, 23, 45, 4, '1', '43.00', '43.00', '2021-12-04 13:22:36', '2021-12-04 13:22:36'),
(55, 23, 45, 6, '1', '43.00', '43.00', '2021-12-04 13:22:36', '2021-12-04 13:22:36'),
(56, 23, 45, 4, '1', '43.00', '43.00', '2021-12-04 13:22:36', '2021-12-04 13:22:36'),
(57, 23, 45, 6, '1', '43.00', '43.00', '2021-12-04 13:22:36', '2021-12-04 13:22:36'),
(58, 3, 46, 4, '1', '43.00', '43.00', '2021-12-04 13:26:32', '2021-12-04 13:26:32'),
(59, 3, 46, 6, '9', '54.00', '486.00', '2021-12-04 13:26:32', '2021-12-04 13:26:32'),
(60, 3, 46, 4, '1', '43.00', '43.00', '2021-12-04 13:26:32', '2021-12-04 13:26:32'),
(61, 3, 46, 6, '9', '54.00', '486.00', '2021-12-04 13:26:32', '2021-12-04 13:26:32'),
(62, 24, 47, 5, '1', '43.00', '43.00', '2021-12-04 13:27:21', '2021-12-04 13:27:21'),
(63, 24, 47, 5, '1', '43.00', '43.00', '2021-12-04 13:27:21', '2021-12-04 13:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `sales_payments`
--

CREATE TABLE `sales_payments` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `amount` int(11) NOT NULL,
  `payment_mode` int(11) NOT NULL,
  `remark` longtext DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_payments`
--

INSERT INTO `sales_payments` (`id`, `sales_id`, `customer_id`, `amount`, `payment_mode`, `remark`, `created_at`, `updated_at`) VALUES
(1, 39, 1, 34, 0, 'sdfsd', '2021-12-04 09:45:20', '2021-12-04 09:45:20'),
(2, 39, 1, 34, 0, NULL, '2021-12-04 09:45:20', '2021-12-04 09:45:20'),
(3, 40, 21, 74, 0, NULL, '2021-12-04 12:27:25', '2021-12-04 12:27:25'),
(4, 40, 21, 34, 0, NULL, '2021-12-04 12:27:25', '2021-12-04 12:27:25'),
(5, 41, 21, 74, 0, NULL, '2021-12-04 12:27:59', '2021-12-04 12:27:59'),
(6, 41, 21, 34, 0, NULL, '2021-12-04 12:27:59', '2021-12-04 12:27:59'),
(7, 42, 21, 74, 0, NULL, '2021-12-04 12:29:22', '2021-12-04 12:29:22'),
(8, 42, 21, 10, 0, NULL, '2021-12-04 12:29:22', '2021-12-04 12:29:22'),
(9, 43, 21, 74, 0, NULL, '2021-12-04 12:29:43', '2021-12-04 12:29:43'),
(10, 43, 21, 10, 0, NULL, '2021-12-04 12:29:43', '2021-12-04 12:29:43'),
(11, 44, 4, 34, 0, NULL, '2021-12-04 13:21:44', '2021-12-04 13:21:44'),
(12, 44, 4, 34, 0, NULL, '2021-12-04 13:21:44', '2021-12-04 13:21:44'),
(13, 45, 23, 34, 0, 'Quis vel quae ex vol', '2021-12-04 13:22:36', '2021-12-04 13:22:36'),
(14, 45, 23, 45, 0, NULL, '2021-12-04 13:22:36', '2021-12-04 13:22:36'),
(15, 46, 3, 34, 0, NULL, '2021-12-04 13:26:32', '2021-12-04 13:26:32'),
(16, 46, 3, 34, 0, NULL, '2021-12-04 13:26:32', '2021-12-04 13:26:32'),
(17, 46, 3, 34, 0, NULL, '2021-12-04 13:26:32', '2021-12-04 13:26:32'),
(18, 47, 24, 43, 0, 'asdasd', '2021-12-04 13:27:21', '2021-12-04 13:27:21');

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
(4, 2, '92', '-37', '1', NULL, '2021-10-14 03:13:59', '2021-12-04 13:26:32'),
(5, 2, '92', '664', '1', NULL, '2021-10-14 03:14:02', '2021-12-04 13:27:21'),
(6, 2, '92', '780', '1', NULL, '2021-10-14 03:14:56', '2021-12-04 13:26:32'),
(7, 3, '92', '494', '1', NULL, '2021-11-27 02:24:36', '2021-11-30 05:44:36'),
(8, 6, '92', '-101', '1', NULL, '2021-11-27 23:30:45', '2021-12-04 13:21:44'),
(9, 2, '92', '427', '1', NULL, '2021-11-29 00:41:58', '2021-11-30 04:03:29');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
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

INSERT INTO `suppliers` (`id`, `name`, `email`, `personal_phone`, `optional_phone`, `present_address`, `permanent_address`, `balance`, `company_name`, `company_address`, `company_contact_no`, `reference`, `nid`, `photo`, `nationality`, `designation`, `country`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Hollee Santiago', 'noqakivij@mailinator.com', '+1 (387) 426-2865', NULL, 'Commodo odio rerum q', NULL, NULL, 'Kelley and Hunt Co', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2021-10-13 20:25:47', '2021-10-13 20:25:47'),
(2, 'Karyn Kinney', 'dynijepof@mailinator.com', '+1 (286) 427-3093', NULL, 'Aut laborum Sint q', NULL, NULL, 'Davenport Burris Inc', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2021-10-13 20:25:50', '2021-10-13 20:25:50'),
(3, 'Mason Silva', 'razygyz@mailinator.com', '+1 (254) 365-9538', NULL, 'Non fuga Dolore cil', NULL, NULL, 'Mcfarland and Hicks Associates', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2021-10-13 20:25:52', '2021-10-13 20:25:52'),
(4, 'khademul islam', 'tashfiaexport@gmail.com', '01848080971', NULL, '52/2 b.b road', NULL, NULL, 'tashfia export', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 92, '2021-11-27 23:32:14', '2021-11-27 23:32:14'),
(5, 'Winifred Pratt', 'rydoredy@mailinator.com', '+1 (728) 971-9785', '+1 (798) 921-7253', 'Eos officia aut proi', 'Qui dolore eos comm', NULL, 'Walsh Mcintosh Inc', 'Neal and Blankenship Inc', 0, 'Sit ut labore quibus', 'Iure quo et repudian', '2021-11-30-61a52b3ed959d.jpg', 'Laborum aperiam qui', 'Cillum aliquam maxim', 'Perspiciatis accusa', 92, '2021-11-30 01:34:23', '2021-11-30 01:34:23'),
(6, 'Miranda Schmidt', 'jedeg@mailinator.com', '+1 (287) 674-7165', '+1 (466) 896-5755', 'Nihil animi mollit', 'Voluptatem facilis d', NULL, 'Shields and Ross LLC', 'Meyers Kelley Traders', 0, 'Vel ut deserunt temp', 'Dolor rerum asperior', '2021-11-30-61a52b6ac208d.jpg', 'Error incidunt est', 'Nihil amet fugiat', 'Quia aut in aut nihi', 92, '2021-11-30 01:35:07', '2021-11-30 01:35:07'),
(7, 'Cailin Dominguez', 'xekuke@mailinator.com', '+1 (625) 354-2594', '+1 (989) 224-5922', 'Adipisci nostrud pos', 'Et at cupiditate sit', NULL, 'Montgomery Garrett Associates', 'Powers Kemp Inc', 0, 'Repudiandae minim an', 'Quas placeat ipsam', '2021-11-30-61a531f613d83.png', 'Enim dolor natus acc', 'Corrupti amet qui', 'Id voluptatem Volu', 92, '2021-11-30 02:03:02', '2021-11-30 02:03:02'),
(8, 'Ora Joseph', 'pogykepo@mailinator.com', '+1 (887) 299-6734', '+1 (227) 722-9906', 'Velit reiciendis au', 'Reiciendis est quam', NULL, 'Parsons and George Plc', 'Chang Castillo Trading', 0, 'Provident culpa mol', 'Quisquam soluta sunt', '2021-11-30-61a5323c258aa.jpg', 'Sed cumque proident', 'Aut optio nostrum l', 'Doloribus vel adipis', 92, '2021-11-30 02:04:13', '2021-11-30 02:04:13'),
(9, 'asdasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 92, '2021-12-01 17:42:00', '2021-12-01 17:42:00');

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

INSERT INTO `users` (`id`, `name`, `lastname`, `mobile`, `email`, `password`, `status_id`, `created_at`, `created_by`, `updated_at`, `version`, `remember_token`, `role_id`, `type`) VALUES
(92, 'Super Admin', '', '01761955765', 'admin@gmail.com', '$2y$10$9LVl8Xz0Ps2S2cUZ14c8e.QOho1XfDdB96.AlX9GmPzQJOONtYmJu', 1, '2021-02-07 11:07:04', 85, '2021-04-08 17:09:31', 1, 'UdZRk0KfceaO6DkLlVuAElqoEYN3iOF4hi4SIt2uHIyufdokP4qe1oJFh4L9', 11, 'admin'),
(105, 'rhythms', NULL, '01761955765', 'rhythms@outlook.com', '$2y$12$8K5vJYIUMomXvJ4v6reHfeX55kn6dxus5u1Cff6SdE0DJ.VGPvDjK', 1, '2021-06-10 12:31:09', 92, '2021-06-10 14:06:14', NULL, NULL, 16, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `company_info`
--
ALTER TABLE `company_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `stock_id` (`stock_id`);

--
-- Indexes for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_id` (`sales_id`),
  ADD KEY `sales_customer_id` (`customer_id`),
  ADD KEY `sales_stock_id` (`stock_id`);

--
-- Indexes for table `sales_payments`
--
ALTER TABLE `sales_payments`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `company_info`
--
ALTER TABLE `company_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `dynamic_routes`
--
ALTER TABLE `dynamic_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `master_menu`
--
ALTER TABLE `master_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14980;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `product_ingredients`
--
ALTER TABLE `product_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ready_product_details`
--
ALTER TABLE `ready_product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `sales_payments`
--
ALTER TABLE `sales_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

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
  ADD CONSTRAINT `customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_id` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales_details`
--
ALTER TABLE `sales_details`
  ADD CONSTRAINT `sales_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_id` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `sales_stock_id` FOREIGN KEY (`stock_id`) REFERENCES `stock` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `purchase_id` FOREIGN KEY (`purchase_id`) REFERENCES `purchase` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

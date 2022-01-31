-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2022 at 08:52 AM
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
  `company_contact_no` int(11) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`id`, `company_name`, `category`, `company_address`, `company_contact_no`, `country`, `created_at`, `updated_at`) VALUES
(6, 'MD. RAZIB SHA', NULL, 'GOLACIPA MOSHJID', 1681069256, 'BANGLADESH', '2022-01-17 12:04:54', '2022-01-17 12:04:54'),
(7, 'SOHEL RANA', NULL, 'NARAYAANGANJ', 1304604386, 'BANGLADESH', '2022-01-17 12:26:40', '2022-01-17 12:26:40'),
(8, 'NEW RUPA ENTERPRISE', NULL, NULL, NULL, NULL, '2022-01-17 12:32:53', '2022-01-17 12:32:53'),
(9, 'samir fashion', NULL, 'mirpur 10,Dhaka', 1850624730, 'Bangladesh', '2022-01-17 13:31:00', '2022-01-17 13:31:00'),
(10, 'NEW RUPA ENTERPRISE', NULL, 'MALIBAGH, DHAKA', 152154874, 'BANGLADESH', '2022-01-17 13:45:52', '2022-01-17 13:45:52'),
(11, 'Fahim Dewan', NULL, 'Paikpara', 1920154610, 'BANGLADESH', '2022-01-17 14:59:24', '2022-01-17 14:59:24'),
(12, 'NEW RUPA ENTERPRISE', NULL, 'Dhaka', 1705386513, 'BANGLADESH', '2022-01-17 15:17:49', '2022-01-17 15:17:49'),
(13, 'SAYEM FASHION', NULL, 'UTTAR NOWSINPUR, NARAYANGONJ', 2147483647, 'BANGLADESH', '2022-01-17 15:39:30', '2022-01-17 15:39:30'),
(14, 'MD. MIZANUR ROHOMAN', NULL, 'MIRPUR 12 DHAKA', 1961256143, NULL, '2022-01-18 09:55:41', '2022-01-18 09:55:41'),
(15, 'Rosales Keller Inc', 'purchase', 'Vasquez Whitehead LLC', 43, 'Aut ut tempore magn', '2022-01-28 21:25:43', '2022-01-28 21:25:43');

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
(32, 8, 'ALAMIN', 'general', NULL, '01402524959', NULL, 'Dhaka', NULL, 'Dhaka', '-0.61000000000058', NULL, NULL, '', 'BANGLADESHI', 'Marketing Manager', 92, '2022-01-17 12:34:01', '2022-01-17 12:37:59'),
(33, 10, 'Rakib', 'general', NULL, '01705386513', NULL, 'Mohammadpur,Dhaka', NULL, 'Mohammadpur,Dhaka', '-69794', NULL, NULL, '2022-01-17-61e51ef2b5b87.png', 'BANGLADESHI', 'SS OFFICOR', 92, '2022-01-17 13:46:58', '2022-01-31 12:08:10'),
(34, 12, 'Rakib', 'general', NULL, NULL, NULL, 'Mohammadpur,Dhaka', NULL, 'Mohammadpur,Dhaka', '416', NULL, NULL, '2022-01-17-61e5352a3a28b.png', 'BANGLADESHI', 'Marketing Manager', 92, '2022-01-17 15:21:46', '2022-01-31 12:10:47'),
(35, 13, 'SAYEM FASHION-MILON SIR', 'general', NULL, '8801914142921', NULL, 'UTTAR NORSINPUR, NARAYANGONJ', NULL, 'UTTAR NORSINPUR, NARAYANGONJ', '1989836', NULL, NULL, '', 'BANGLADESHI', 'GM', 92, '2022-01-17 15:42:00', '2022-01-17 15:55:10'),
(100, 12, 'Strong Vargas LLC', 'general', 'loxyxaryzi@mailinator.com', '81', '96', 'Patel Michael Trading', NULL, 'Pugh Horne Trading', '91', 'Landry and Williamson Traders', '48', '2022-01-31-61f75a1d228c4.jpg', 'Schroeder and Carrillo Associates', 'Ryan Bond Inc', 92, '2022-01-31 09:40:13', '2022-01-31 09:40:13');

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
(359, 'Search Account Summary', 'report/search_account_summary', 'Report', NULL, 'ReportController@search_account_summary', 'Post', 1, NULL, 1, 0, '0', '2022-01-17 03:26:06', '2022-01-17 03:26:06');

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
(9, 13, 'RIDOY', NULL, '3966', 'SAYEM FASHION', '92', '2022-01-17 15:48:03', '2022-01-17 15:48:03');

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
(81, 'Account Summary', 'Account Summary', 66, 1, NULL, 358, '2022-01-17 03:27:35', '2022-01-17 03:27:35', 92, NULL),
(83, 'peoples', '66', 60, 1, 'ik-users', 4, '2022-01-31 04:07:01', '2022-01-31 04:07:01', 92, 92);

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
(17126, 11, 1, 'adminDashboard', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17127, 11, 91, 'admin/change_password', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17128, 11, 92, 'admin/save_change_password', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17129, 11, 3, 'dynamic_route', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17130, 11, 4, 'dynamic_route', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17131, 11, 14, 'delete_route', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17132, 11, 16, 'edit_route', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17133, 11, 19, 'update_route', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17134, 11, 5, 'role/all_role', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17135, 11, 6, 'role/add_role', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17136, 11, 8, 'save_role', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17137, 11, 11, 'edit_role', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17138, 11, 12, 'update_role', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17139, 11, 13, 'delete_role', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17140, 11, 9, 'all_user', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17141, 11, 10, 'save_user', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17142, 11, 93, 'edit_user', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17143, 11, 94, 'upadte_user', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17144, 11, 95, 'suspend_user', '2022-01-17 03:26:15', '2022-01-17 03:26:15'),
(17145, 11, 96, 'unsuspend_user', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17146, 11, 127, 'delete_user', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17147, 11, 130, 'test', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17148, 11, 131, 'menu/menu_create', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17149, 11, 133, 'menu/menu_save', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17150, 11, 134, 'menu/all_menu', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17151, 11, 135, 'menu/menu_search', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17152, 11, 138, 'menu/edit_menu', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17153, 11, 139, 'menu/update_menu', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17154, 11, 254, 'product/craete', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17155, 11, 255, 'product/store', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17156, 11, 256, 'product/alldata', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17157, 11, 257, 'product/index', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17158, 11, 258, 'product/view', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17159, 11, 259, 'product/delete', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17160, 11, 286, 'product/ingredients', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17161, 11, 334, 'product/edit', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17162, 11, 335, 'product/update', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17163, 11, 260, 'sales/show_sales_department', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17164, 11, 261, 'sales/get_sales_department_data', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17165, 11, 262, 'sales/store_sales_department_data', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17166, 11, 263, 'sales/edit_sales_department_data', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17167, 11, 264, 'sales/update_sales_department_data', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17168, 11, 265, 'sales/delete_sales_department_data', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17169, 11, 273, 'sales/sales_department_invoice', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17170, 11, 316, 'sales/create', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17171, 11, 317, 'sales/customer_payment_history_search', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17172, 11, 318, 'sales/sales_details_invoice', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17173, 11, 319, 'sales/add_walk_in_cuatomer', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17174, 11, 325, 'sales/sales_due_payment', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17175, 11, 328, 'sales/invoice_payment_history', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17176, 11, 357, 'sales/customer_details', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17177, 11, 266, 'Department/show_lot_department', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17178, 11, 267, 'Department/search', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17179, 11, 268, 'Department/store_lot_department_data', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17180, 11, 269, 'Department/delete_lot_department_data', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17181, 11, 270, 'Department/edit_lot_department_data', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17182, 11, 271, 'Department/update_lot_department_data', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17183, 11, 272, 'Department/show_single_lot_department_data', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17184, 11, 274, 'customer/all_customer', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17185, 11, 275, 'customer/search', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17186, 11, 276, 'customer/store', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17187, 11, 277, 'customer/edit', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17188, 11, 278, 'customer/update', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17189, 11, 279, 'customer/delete', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17190, 11, 307, 'customer/show', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17191, 11, 324, 'customer/view', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17192, 11, 329, 'customer/manual_due_payment', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17193, 11, 280, 'supplier/index', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17194, 11, 281, 'supplier/search', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17195, 11, 282, 'supplier/store', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17196, 11, 283, 'supplier/edit', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17197, 11, 284, 'supplier/update', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17198, 11, 285, 'supplier/delete', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17199, 11, 293, 'supplier/show', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17200, 11, 287, 'purchase/index', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17201, 11, 288, 'purchase/search', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17202, 11, 289, 'purchase/store', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17203, 11, 290, 'purchase/edit', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17204, 11, 291, 'purchase/update', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17205, 11, 292, 'purchase/delete', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17206, 11, 294, 'purchase/show', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17207, 11, 295, 'ingredient/index', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17208, 11, 296, 'ingredient/search', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17209, 11, 297, 'ingredient/store', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17210, 11, 298, 'ingredient/edit', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17211, 11, 299, 'ingredient/delete', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17212, 11, 300, 'productcategory/index', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17213, 11, 301, 'productcategory/search', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17214, 11, 302, 'productcategory/store', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17215, 11, 303, 'productcategory/edit', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17216, 11, 304, 'productcategory/update', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17217, 11, 305, 'productcategory/delete', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17218, 11, 308, 'expenses/expenses_category_index', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17219, 11, 309, 'expenses/expenses_category_search', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17220, 11, 310, 'expenses/expenses_category_store', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17221, 11, 311, 'expenses/expenses_category_delete', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17222, 11, 312, 'expenses/expenses_index', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17223, 11, 313, 'expenses/expenses_search', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17224, 11, 314, 'expenses/expenses_store', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17225, 11, 315, 'expenses/expenses_delete', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17226, 11, 320, 'company/index', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17227, 11, 321, 'company/search', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17228, 11, 322, 'company/store', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17229, 11, 323, 'company/delete', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17230, 11, 330, 'company/edit_company', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17231, 11, 331, 'company/company_update', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17232, 11, 332, 'report/profit_show', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17233, 11, 333, 'report/profit_search', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17234, 11, 343, 'report/sales_commision_report', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17235, 11, 344, 'report/sales_commision_report_show', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17236, 11, 358, 'report/account_summary', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17237, 11, 359, 'report/search_account_summary', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17238, 11, 336, 'sales_executive/show', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17239, 11, 337, 'sales_executive/search', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17240, 11, 338, 'sales_executive/add', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17241, 11, 339, 'sales_executive/delete', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17242, 11, 340, 'sales_executive/edit', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17243, 11, 341, 'sales_executive/update', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17244, 11, 342, 'sales_executive/store', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17245, 11, 346, 'workorder/create_workorder_party', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17246, 11, 347, 'workorder/store_workorder_party', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17247, 11, 348, 'workorder/edit_workorder_party', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17248, 11, 349, 'workorder/update_workorder_party', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17249, 11, 350, 'workorder/search_workorder_party', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17250, 11, 351, 'workorder/delete_workorder_party', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17251, 11, 352, 'workorder/create_workorder', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17252, 11, 353, 'workorder/store_workorder', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17253, 11, 354, 'workorder/index_workorder', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17254, 11, 355, 'workorder/search_workorder', '2022-01-17 03:26:16', '2022-01-17 03:26:16'),
(17255, 11, 356, 'workorder/delete_workorder', '2022-01-17 03:26:16', '2022-01-17 03:26:16');

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
(42, 13, 'DENIM', '1267', 'MD. RAZIB SAHA', '3598', NULL, 'NAVY', 'Open', NULL, '200', NULL, NULL, '2022-01-15 00:00:00', '2022-01-15 00:00:00', '201', '201', '201', NULL, '200', 'DENIM', '1510004682', NULL, NULL, NULL, '2022-01-17 12:09:02', '2022-01-17 12:15:07'),
(43, 12, 'pk', '202', 'MD. RAKIB', '500', NULL, 'black', 'Open', NULL, '200', NULL, NULL, '2022-01-17 00:00:00', '2022-01-16 00:00:00', '202', '202', NULL, NULL, '200', 'PK', '1922545858', NULL, NULL, NULL, '2022-01-17 12:28:56', '2022-01-17 12:31:41'),
(44, 13, 'cotton s/j', '105', 'tajul islam', '500', NULL, 'NAVY', 'Open', '10', '150', NULL, NULL, '2022-01-19 00:00:00', '2022-01-19 00:00:00', '102', '102', '152', '36', '150', 'COTTON', '538574841', NULL, NULL, NULL, '2022-01-17 13:34:49', '2022-01-17 15:15:57'),
(45, 12, 'average colour viscos fine fabrics', 'Et quia ratione recu', 'Stephanie Cantu', NULL, NULL, 'Lilah Holman', 'Quasi quo nulla volu', 'Aliqua Dolores odio', 'Quia autem dolorem a', 'Lorem debitis nulla', 'Voluptatem minus ali', NULL, NULL, 'Voluptatem Ut ea ne', 'Nobis nostrud libero', 'Cum ad non ipsum es', 'Distinctio Irure ex', 'Veritatis vero et et', 'Anim dolores dolor e', '1064646714', 'Elit voluptas ducim', 'Sit fugiat voluptate', NULL, '2022-01-31 07:41:05', '2022-01-31 07:42:22');

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
(2, 'ready product', NULL, NULL, NULL),
(12, 'purchase product', 92, '2022-01-17 11:34:57', '2022-01-17 11:34:57'),
(13, 'PURCHASE PRODUCTS', 92, '2022-01-17 12:05:37', '2022-01-17 12:05:37'),
(14, 'PURCHASE PRODUCTS', 92, '2022-01-17 13:32:07', '2022-01-17 13:32:07'),
(15, 'PURCHASE PRODUCTS', 92, '2022-01-17 15:00:52', '2022-01-17 15:00:52');

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
(21, 42, 13, '92', '0.000', '1', '298.00', '1072204.00', '299.11', '1076204.00', '2022-01-17 12:15:07', '2022-01-17 12:15:50'),
(22, 43, 14, '92', '0.000', '1', '280.00', '140000.00', '284.00', '142000.00', '2022-01-17 12:31:41', '2022-01-17 12:32:08'),
(23, 44, 15, '92', '0.000', '1', '180.00', '180000.00', '185.00', '185000.00', '2022-01-17 13:43:01', '2022-01-17 13:44:36'),
(24, 44, 16, '92', '0.000', '1', '180.00', '90000.00', '190.00', '95000.00', '2022-01-17 15:15:57', '2022-01-17 15:17:00');

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
(18, 'sales Manager', 'sales_manager', '2021-12-27 16:43:55', '2021-12-27 16:43:55');

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
(117, 32, 6, '17236.61', '17236.00', '0.61', NULL, NULL, 0, '1941633770', '-8527.59', NULL, NULL, '2022-01-17 12:37:59', '2022-01-17 12:37:59'),
(118, 33, 5, '107500.00', '50000.00', '57500.00', NULL, NULL, 0, '1817177523', '18650.00', NULL, NULL, '2022-01-17 13:49:44', '2022-01-17 13:49:44'),
(119, 33, 6, '44500.00', '20000.00', '24500.00', NULL, NULL, 0, '1233902801', '13910.00', NULL, NULL, '2022-01-17 15:32:32', '2022-01-17 15:32:32'),
(120, 35, 4, '1205330.00', '0.00', '1205330.00', NULL, NULL, 0, '1611535281', '129132.22', NULL, NULL, '2022-01-17 15:55:10', '2022-01-17 15:55:10'),
(121, 33, 3, '1000.00', '500.00', '500.00', NULL, NULL, 0, '75867001', '-1840.00', NULL, NULL, '2022-01-17 21:10:59', '2022-01-17 21:10:59'),
(122, 34, 8, '12000.00', '11000.00', '1000.00', NULL, NULL, 0, '594404281', '640.00', NULL, NULL, '2022-01-18 10:01:46', '2022-01-18 10:01:46'),
(123, 33, 3, '2500.00', '1500.00', '1000.00', NULL, NULL, 0, '1929144012', '-340.00', NULL, NULL, '2022-01-18 22:58:37', '2022-01-18 22:58:37'),
(124, 33, 1, '1288.00', '57.00', '1231.00', NULL, NULL, 0, '1133724836', '-3535.00', NULL, NULL, '2022-01-31 11:52:56', '2022-01-31 11:52:56'),
(125, 33, 2, '108.00', '45.00', '63.00', NULL, NULL, 0, '73847348', '-267.00', NULL, NULL, '2022-01-31 12:08:10', '2022-01-31 12:08:10'),
(126, 34, 2, '108.00', '24.00', '84.00', NULL, NULL, 0, '2091387125', '-267.00', NULL, NULL, '2022-01-31 12:10:47', '2022-01-31 12:10:47');

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
(158, 32, 117, 25, '90.719', NULL, '190.00', '17236.61', '284.00', '25764.20', '10.00', '2022-01-17 12:37:59', '2022-01-17 12:37:59'),
(159, 33, 118, 25, '150', NULL, '250.00', '37500.00', '284.00', '42600.00', '10.00', '2022-01-17 13:49:44', '2022-01-17 13:49:44'),
(160, 33, 118, 26, '250', NULL, '280.00', '70000.00', '185.00', '46250.00', '15.00', '2022-01-17 13:49:44', '2022-01-17 13:49:44'),
(161, 33, 119, 25, '10', NULL, '250.00', '2500.00', '284.00', '2840.00', '5.00', '2022-01-17 15:32:32', '2022-01-17 15:32:32'),
(162, 33, 119, 26, '150', NULL, '280.00', '42000.00', '185.00', '27750.00', '10.00', '2022-01-17 15:32:32', '2022-01-17 15:32:32'),
(163, 35, 120, 24, '3598', NULL, '335.00', '1205330.00', '299.11', '1076197.78', '180.00', '2022-01-17 15:55:10', '2022-01-17 15:55:10'),
(164, 33, 121, 25, '10', NULL, '100.00', '1000.00', '284.00', '2840.00', '10.00', '2022-01-17 21:10:59', '2022-01-17 21:10:59'),
(165, 34, 122, 25, '40', NULL, '300.00', '12000.00', '284.00', '11360.00', '10.00', '2022-01-18 10:01:46', '2022-01-18 10:01:46'),
(166, 33, 123, 25, '10', NULL, '250.00', '2500.00', '284.00', '2840.00', '5.00', '2022-01-18 22:58:37', '2022-01-18 22:58:37'),
(167, 33, 124, 26, '23', NULL, '54.00', '1242.00', '185.00', '4255.00', '0.00', '2022-01-31 11:52:56', '2022-01-31 11:52:56'),
(168, 33, 124, 25, '2', NULL, '23.00', '46.00', '284.00', '568.00', '0.00', '2022-01-31 11:52:56', '2022-01-31 11:52:56'),
(169, 33, 125, 26, '1', '1', '54.00', '54.00', '185.00', '185.00', '1.00', '2022-01-31 12:08:10', '2022-01-31 12:08:10'),
(170, 33, 125, 27, '1', '0', '54.00', '54.00', '190.00', '190.00', '0.00', '2022-01-31 12:08:10', '2022-01-31 12:08:10'),
(171, 34, 126, 26, '1', '121212', '54.00', '54.00', '185.00', '185.00', '0.00', '2022-01-31 12:10:47', '2022-01-31 12:10:47'),
(172, 34, 126, 27, '1', '121d', '54.00', '54.00', '190.00', '190.00', '0.00', '2022-01-31 12:10:47', '2022-01-31 12:10:47');

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
(13, 'SIFAT RAHMAN', NULL, '01789433842, 01302900481', NULL, NULL, '2022-01-17 11:57:44', '2022-01-17 11:57:44');

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
(120, 117, 32, 17236, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-17 12:37:59', '2022-01-17 12:37:59'),
(121, 118, 33, 50000, 'Bkash', NULL, NULL, '01752014566', '01523654751', NULL, NULL, NULL, '2022-01-17 13:49:44', '2022-01-17 13:49:44'),
(122, 119, 33, 20000, 'Bkash', NULL, NULL, '0175086513', '01850624730', NULL, NULL, NULL, '2022-01-17 15:32:32', '2022-01-17 15:32:32'),
(123, 120, 35, 0, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-17 15:55:10', '2022-01-17 15:55:10'),
(124, 121, 33, 500, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-17 21:10:59', '2022-01-17 21:10:59'),
(125, 122, 34, 11000, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-18 10:01:46', '2022-01-18 10:01:46'),
(126, 123, 33, 1500, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-18 22:58:37', '2022-01-18 22:58:37'),
(127, 124, 33, 34, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 11:52:56', '2022-01-31 11:52:56'),
(128, 124, 33, 23, 'Card', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 11:52:56', '2022-01-31 11:52:56'),
(129, 125, 33, 12, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 12:08:10', '2022-01-31 12:08:10'),
(130, 125, 33, 21, 'Cheque', '121212', '2022-01-12 00:00:00', NULL, NULL, NULL, NULL, NULL, '2022-01-31 12:08:10', '2022-01-31 12:08:10'),
(131, 125, 33, 12, 'Bkash', NULL, NULL, '121212', 'sdsf32r23r', NULL, NULL, NULL, '2022-01-31 12:08:10', '2022-01-31 12:08:10'),
(132, 126, 34, 12, 'Cash', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-31 12:10:47', '2022-01-31 12:10:47'),
(133, 126, 34, 12, 'Cheque', '1212', '2022-01-15 00:00:00', NULL, NULL, NULL, NULL, NULL, '2022-01-31 12:10:47', '2022-01-31 12:10:47');

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
(24, 21, '92', '0.000', '1', NULL, '2022-01-17 12:15:50', '2022-01-17 15:55:10'),
(25, 22, '92', '187.281', '1', NULL, '2022-01-17 12:32:08', '2022-01-31 11:52:56'),
(26, 23, '92', '575.000', '1', NULL, '2022-01-17 13:44:36', '2022-01-31 12:10:47'),
(27, 24, '92', '498.000', '1', NULL, '2022-01-17 15:17:00', '2022-01-31 12:10:47');

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
(13, 6, 'MD.RAZIB SAHA', NULL, '01681069256', NULL, 'GOLACIPA MOSJIDE', 'GOLACIPA MOSJIDE', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-01-17 12:11:07', '2022-01-17 12:11:07'),
(14, 7, 'MD.RAKIB', NULL, '01705386513', NULL, 'Dhaka', 'Mirpur 10, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, '', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-01-17 12:30:16', '2022-01-17 12:30:16'),
(15, 9, 'tajul islam', NULL, '01705386513', NULL, 'Mirpur 10, Dhaka', 'Mirpur 10, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-17-61e51cdc2971f.png', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-01-17 13:38:04', '2022-01-17 13:38:04'),
(16, 11, 'Hridoy Hasan', NULL, '0154698748525', NULL, 'Mohammadpur,Dhaka', 'Mohammadpur,Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, '2022-01-17-61e5337231df7.png', 'BANGLADESHI', 'OWNER', NULL, 92, '2022-01-17 15:14:26', '2022-01-17 15:14:26');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `dynamic_routes`
--
ALTER TABLE `dynamic_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=360;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17256;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `product_ingredients`
--
ALTER TABLE `product_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `sales_details`
--
ALTER TABLE `sales_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `sales_executive_models`
--
ALTER TABLE `sales_executive_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sales_payments`
--
ALTER TABLE `sales_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

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

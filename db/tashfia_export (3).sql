-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 12, 2021 at 10:35 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

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
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(260, 'sales Department', 'department/show_sales_department', 'sales_department', NULL, 'DepartmentController@show_sales_department', 'get', 1, NULL, 1, 1, '0', '2021-09-28 03:16:36', '2021-10-04 03:50:08'),
(261, 'Get Sales Department Data', 'Department/get_sales_department_data', 'sales_department', NULL, 'DepartmentController@get_sales_department_data', 'Post', 1, NULL, 1, 0, '1', '2021-09-28 03:17:27', '2021-10-04 03:50:32'),
(262, 'save sales department', 'Department/store_sales_department_data', 'sales_department', NULL, 'DepartmentController@store_sales_department_data', 'Post', 1, NULL, 1, 0, '1', '2021-09-28 05:01:18', '2021-10-04 03:50:31'),
(263, 'Edit sales Department', 'Department/edit_sales_department_data', 'sales_department', NULL, 'DepartmentController@edit_sales_department_data', 'get', 1, '{id}', 1, 0, '1', '2021-09-28 05:02:04', '2021-10-04 03:50:31'),
(264, 'Update sales Department', 'Department/update_sales_department_data', 'sales_department', NULL, 'DepartmentController@update_sales_department_data', 'Post', 1, NULL, 1, 0, '1', '2021-09-28 05:02:52', '2021-10-04 03:50:30'),
(265, 'Delete sales Department', 'Department/delete_sales_department_data', 'sales_department', NULL, 'DepartmentController@delete_sales_department_data', 'get', 1, '{id}', 1, 0, '1', '2021-09-28 05:31:49', '2021-10-04 03:50:29'),
(266, 'Show Lot Department', 'Department/show_lot_department', 'lot_department', NULL, 'DepartmentController@show_lot_department', 'get', 1, NULL, 1, 1, '0', '2021-09-28 15:55:55', '2021-10-04 03:49:07'),
(267, 'Get Lot Department Data', 'Department/get_lot_department_data', 'lot_department', NULL, 'DepartmentController@get_lot_department_data', 'Post', 1, NULL, 1, 0, '1', '2021-09-28 15:56:43', '2021-10-04 03:49:48'),
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
(285, 'supplier  delete', 'supplier/delete', 'supplier', NULL, 'supplierController@delete', 'get', 1, '{id}', 1, 0, '1', '2021-10-12 07:33:13', '2021-10-12 07:33:13');

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
(2, 'Products', 'Products', NULL, 1, 'ik-layers', NULL, '2021-10-04 06:46:39', '2021-10-04 06:35:22', 92, NULL),
(42, 'Stock Department', 'Stock Department', NULL, 1, 'ik-chevrons-right', 266, '2021-10-04 03:56:10', '2021-10-04 03:56:10', 92, 92),
(43, 'Sales department', 'Sales department', NULL, 1, 'ik-chevrons-left', 260, '2021-10-04 03:55:34', '2021-10-04 03:55:34', 92, NULL),
(47, 'Create product', 'Create product', 2, 1, NULL, 254, '2021-10-04 15:26:49', '2021-10-04 15:26:49', 92, NULL),
(48, 'All product', 'All product', 2, 1, NULL, 257, '2021-10-04 15:27:19', '2021-10-04 15:27:19', 92, NULL),
(49, 'Customers', 'Customers', NULL, 1, 'ik-user', 274, '2021-10-12 07:39:29', '2021-10-12 07:39:29', 92, 92),
(50, 'suppliers', 'suppliers', NULL, 1, 'ik-users', 280, '2021-10-12 07:40:04', '2021-10-12 07:40:04', 92, NULL);

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
(13615, 11, 1, 'adminDashboard', '2021-10-12 07:33:36', '2021-10-12 07:33:36'),
(13616, 11, 91, 'admin/change_password', '2021-10-12 07:33:36', '2021-10-12 07:33:36'),
(13617, 11, 92, 'admin/save_change_password', '2021-10-12 07:33:36', '2021-10-12 07:33:36'),
(13618, 11, 3, 'dynamic_route', '2021-10-12 07:33:36', '2021-10-12 07:33:36'),
(13619, 11, 4, 'dynamic_route', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13620, 11, 14, 'delete_route', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13621, 11, 16, 'edit_route', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13622, 11, 19, 'update_route', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13623, 11, 5, 'role/all_role', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13624, 11, 6, 'role/add_role', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13625, 11, 8, 'save_role', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13626, 11, 11, 'edit_role', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13627, 11, 12, 'update_role', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13628, 11, 13, 'delete_role', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13629, 11, 9, 'all_user', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13630, 11, 10, 'save_user', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13631, 11, 93, 'edit_user', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13632, 11, 94, 'upadte_user', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13633, 11, 95, 'suspend_user', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13634, 11, 96, 'unsuspend_user', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13635, 11, 127, 'delete_user', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13636, 11, 130, 'test', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13637, 11, 131, 'menu/menu_create', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13638, 11, 133, 'menu/menu_save', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13639, 11, 134, 'menu/all_menu', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13640, 11, 135, 'menu/menu_search', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13641, 11, 138, 'menu/edit_menu', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13642, 11, 139, 'menu/update_menu', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13643, 11, 254, 'product/craete', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13644, 11, 255, 'product/store', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13645, 11, 256, 'product/alldata', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13646, 11, 257, 'product/index', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13647, 11, 258, 'product/view', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13648, 11, 259, 'product/delete', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13649, 11, 260, 'department/show_sales_department', '2021-10-12 07:33:37', '2021-10-12 07:33:37'),
(13650, 11, 261, 'Department/get_sales_department_data', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13651, 11, 262, 'Department/store_sales_department_data', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13652, 11, 263, 'Department/edit_sales_department_data', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13653, 11, 264, 'Department/update_sales_department_data', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13654, 11, 265, 'Department/delete_sales_department_data', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13655, 11, 273, 'sales/sales_department_invoice', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13656, 11, 266, 'Department/show_lot_department', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13657, 11, 267, 'Department/get_lot_department_data', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13658, 11, 268, 'Department/store_lot_department_data', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13659, 11, 269, 'Department/delete_lot_department_data', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13660, 11, 270, 'Department/edit_lot_department_data', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13661, 11, 271, 'Department/update_lot_department_data', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13662, 11, 272, 'Department/show_single_lot_department_data', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13663, 11, 274, 'customer/all_customer', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13664, 11, 275, 'customer/search', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13665, 11, 276, 'customer/store', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13666, 11, 277, 'customer/edit', '2021-10-12 07:33:38', '2021-10-12 07:33:38'),
(13667, 11, 278, 'customer/update', '2021-10-12 07:33:39', '2021-10-12 07:33:39'),
(13668, 11, 279, 'customer/delete', '2021-10-12 07:33:39', '2021-10-12 07:33:39'),
(13669, 11, 280, 'supplier/index', '2021-10-12 07:33:39', '2021-10-12 07:33:39'),
(13670, 11, 281, 'supplier/search', '2021-10-12 07:33:39', '2021-10-12 07:33:39'),
(13671, 11, 282, 'supplier/store', '2021-10-12 07:33:39', '2021-10-12 07:33:39'),
(13672, 11, 283, 'supplier/edit', '2021-10-12 07:33:39', '2021-10-12 07:33:39'),
(13673, 11, 284, 'supplier/update', '2021-10-12 07:33:39', '2021-10-12 07:33:39'),
(13674, 11, 285, 'supplier/delete', '2021-10-12 07:33:39', '2021-10-12 07:33:39');

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
(15, NULL, 'Sed enim eveniet fu', 'Lillian Jefferson', NULL, NULL, 'Winifred Mcmahon', 'Do voluptatem sunt a', 'Amet quaerat nesciu', 'Praesentium enim iru', 'Veritatis totam ulla', 'Obcaecati non eiusmo', '2005-05-27 00:00:00', '2017-06-29 00:00:00', 'Sed harum enim in do', 'Aut magna Nam perfer', 'Quis laborum ipsum a', 'Obcaecati ad mollit', 'Nisi repudiandae qua', 'In maxime et aut qui', '234234234234', NULL, '2021-09-23 07:30:34', '2021-09-23 07:30:34'),
(16, NULL, 'Corporis iste est of', 'Wyatt Bartlett', NULL, NULL, 'Hyatt Dunlap', 'Dolore atque quia re', 'Fugiat fuga Volupta', 'Et tempora eos ut qu', 'Qui saepe sint unde', 'Voluptas esse occaec', '1986-03-05 00:00:00', '1996-06-26 00:00:00', 'Est laborum Volupta', 'Sint autem numquam f', 'Autem odit nihil con', 'Minim animi labore', 'Non maiores sit con', 'Ex quaerat sit sequ', '3423423423', NULL, '2021-09-23 07:30:37', '2021-09-23 07:30:37'),
(17, NULL, 'Perspiciatis volupt', 'Octavia Martin', NULL, NULL, 'Miranda Wood', 'Rem vel nulla volupt', 'Nobis elit soluta b', 'Ut repellendus Itaq', 'Reiciendis culpa eu', 'Consequatur Est lab', '2021-07-28 00:00:00', '1974-01-07 00:00:00', 'Eos dolore reiciend', 'Officiis ea autem ha', 'Adipisci quis anim p', 'Vitae sint sunt eu', 'Veniam minima repel', 'Voluptatem recusand', '2342342342434', NULL, '2021-09-23 07:30:40', '2021-09-23 07:30:40'),
(19, NULL, 'Enim in magna ea sim', 'Camille Logan', NULL, NULL, 'Chaim Mclaughlin', 'Beatae delectus et', 'Excepturi mollit rep', 'Aliqua Nulla duis s', 'Odio labore qui poss', 'Exercitationem non i', '2005-12-19 00:00:00', '2003-02-28 00:00:00', 'Recusandae Aut eius', 'Est sint illo non', 'Ut repudiandae offic', 'Eiusmod in vitae ut', 'Id vitae sint quibus', 'Eum atque eum eos do', '128570764', NULL, '2021-09-28 17:09:33', '2021-09-28 17:09:33'),
(20, NULL, 'A1234', 'Jisan', NULL, NULL, 'Pink', 'Open', '123456', '123', '54', '213', '2021-09-29 00:00:00', '2021-09-26 00:00:00', '213', '123', '0998', '542', '3232', '213', '559759498', NULL, '2021-10-01 14:20:43', '2021-10-01 14:20:43'),
(21, NULL, 'Anim enim in totam m', 'Victor Haley', NULL, NULL, 'Zeph Sharp', 'At eum excepteur ad', 'Qui reiciendis labor', 'Et fugiat earum pers', 'Consectetur laudant', 'Quis rerum ut quasi', '2018-12-26 00:00:00', '2001-10-02 00:00:00', 'Quis tempore repreh', 'Cillum doloremque au', 'Animi corrupti num', 'Irure magni est lab', 'Voluptate rerum nihi', 'Consectetur totam qu', '1121842535', NULL, '2021-10-05 05:12:12', '2021-10-05 05:12:12');

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
  `quantity` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `total_purchas_price` decimal(10,2) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(17, 'test', 'test', '2021-06-10 07:09:52', '2021-06-10 07:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `unit_price` decimal(10,2) DEFAULT NULL,
  `quantity_of_sell` varchar(255) DEFAULT NULL,
  `order_no` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `purchase_id` int(11) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `total_sales_price` decimal(10,2) DEFAULT NULL,
  `total_purchas_price` decimal(10,2) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` longtext DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `dynamic_routes`
--
ALTER TABLE `dynamic_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `master_menu`
--
ALTER TABLE `master_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13675;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_ingredients`
--
ALTER TABLE `product_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ready_product_details`
--
ALTER TABLE `ready_product_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `purchase_id` FOREIGN KEY (`purchase_id`) REFERENCES `purchase` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2021 at 08:36 AM
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
(271, 'update lot department data', 'Department/update_lot_department_data', 'lot_department', NULL, 'DepartmentController@update_lot_department_data', 'Post', 1, NULL, 1, 0, '1', '2021-09-28 15:59:46', '2021-10-04 03:49:04');

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
-- Table structure for table `lot_department`
--

CREATE TABLE `lot_department` (
  `id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `roll` varchar(255) DEFAULT NULL,
  `lot` varchar(255) DEFAULT NULL,
  `buyer` varchar(255) DEFAULT NULL,
  `sell` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lot_department`
--

INSERT INTO `lot_department` (`id`, `date`, `product_id`, `quantity`, `roll`, `lot`, `buyer`, `sell`, `balance`, `created_at`, `updated_at`) VALUES
(1, '1999-03-11 00:00:00', 19, '364', 'Animi soluta mollit', 'Quaerat earum volupt', 'Optio ex obcaecati', '36', '32', '2021-09-28 11:11:33', '2021-09-29 23:15:40'),
(2, '2001-04-06 00:00:00', 19, '739', 'Officia officiis est', 'Illum saepe delectu', 'Ea amet debitis lab', '77', '234', '2021-09-28 11:12:03', '2021-09-29 23:20:55'),
(7, '2001-04-06 00:00:00', 19, '739', 'Officia officiis est', 'Illum saepe delectu', 'Ea amet debitis lab', '77', '234', '2021-09-29 23:21:00', '2021-09-29 23:21:00'),
(8, '2021-01-16 00:00:00', 19, '766', 'Ex fugit dolore lab', 'Sint nulla autem duc', 'Porro voluptatibus a', '64', '59', '2021-09-30 00:04:13', '2021-09-30 00:04:13'),
(10, '1972-09-14 00:00:00', 16, '770', 'Consequuntur volupta', 'Eu odio laboris ut q', 'Totam facilis unde c', '12', '96', '2021-09-30 00:06:09', '2021-09-30 00:17:31'),
(11, '2021-10-13 00:00:00', 19, '876', 'jh', '777', 'hhhh', '87686', '888', '2021-10-02 11:05:43', '2021-10-02 11:05:43');

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
(42, 'Stock Department', 'Stock Department', NULL, 1, 'ik-chevrons-right', 266, '2021-10-04 03:56:10', '2021-10-04 03:56:10', 92, 92),
(43, 'Sales department', 'Sales department', NULL, 1, 'ik-chevrons-left', 260, '2021-10-04 03:55:34', '2021-10-04 03:55:34', 92, NULL),
(44, 'Products', 'Products', NULL, 1, 'ik-layers', NULL, '2021-10-04 06:35:22', '2021-10-04 06:35:22', 92, NULL),
(45, 'Create product', 'Create product', 44, 1, NULL, 254, '2021-10-04 06:35:43', '2021-10-04 06:35:43', 92, NULL),
(46, 'All product', 'All product', 44, 1, NULL, 257, '2021-10-04 06:36:00', '2021-10-04 06:36:00', 92, NULL);

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
(13420, 11, 1, 'adminDashboard', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13421, 11, 91, 'admin/change_password', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13422, 11, 92, 'admin/save_change_password', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13423, 11, 3, 'dynamic_route', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13424, 11, 4, 'dynamic_route', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13425, 11, 14, 'delete_route', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13426, 11, 16, 'edit_route', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13427, 11, 19, 'update_route', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13428, 11, 5, 'role/all_role', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13429, 11, 6, 'role/add_role', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13430, 11, 8, 'save_role', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13431, 11, 11, 'edit_role', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13432, 11, 12, 'update_role', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13433, 11, 13, 'delete_role', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13434, 11, 9, 'all_user', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13435, 11, 10, 'save_user', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13436, 11, 93, 'edit_user', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13437, 11, 94, 'upadte_user', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13438, 11, 95, 'suspend_user', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13439, 11, 96, 'unsuspend_user', '2021-10-04 03:50:47', '2021-10-04 03:50:47'),
(13440, 11, 127, 'delete_user', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13441, 11, 130, 'test', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13442, 11, 131, 'menu/menu_create', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13443, 11, 133, 'menu/menu_save', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13444, 11, 134, 'menu/all_menu', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13445, 11, 135, 'menu/menu_search', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13446, 11, 138, 'menu/edit_menu', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13447, 11, 139, 'menu/update_menu', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13448, 11, 254, 'product/craete', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13449, 11, 255, 'product/store', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13450, 11, 256, 'product/alldata', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13451, 11, 257, 'product/index', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13452, 11, 258, 'product/view', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13453, 11, 259, 'product/delete', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13454, 11, 260, 'department/show_sales_department', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13455, 11, 261, 'Department/get_sales_department_data', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13456, 11, 262, 'Department/store_sales_department_data', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13457, 11, 263, 'Department/edit_sales_department_data', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13458, 11, 264, 'Department/update_sales_department_data', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13459, 11, 265, 'Department/delete_sales_department_data', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13460, 11, 266, 'Department/show_lot_department', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13461, 11, 267, 'Department/get_lot_department_data', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13462, 11, 268, 'Department/store_lot_department_data', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13463, 11, 269, 'Department/delete_lot_department_data', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13464, 11, 270, 'Department/edit_lot_department_data', '2021-10-04 03:50:48', '2021-10-04 03:50:48'),
(13465, 11, 271, 'Department/update_lot_department_data', '2021-10-04 03:50:48', '2021-10-04 03:50:48');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `chalan_no` varchar(255) DEFAULT NULL,
  `party_name` varchar(255) DEFAULT NULL,
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `chalan_no`, `party_name`, `color_name`, `open_tube`, `sl_no`, `ggsm`, `yarn_count`, `yarn_lot_no`, `fb_rv_date`, `batch_process_date`, `lot_no`, `batch_no`, `order_no`, `style_no`, `finish_gsm`, `fabric_type`, `card_no`, `created_at`, `updated_at`) VALUES
(15, 'Sed enim eveniet fu', 'Lillian Jefferson', 'Winifred Mcmahon', 'Do voluptatem sunt a', 'Amet quaerat nesciu', 'Praesentium enim iru', 'Veritatis totam ulla', 'Obcaecati non eiusmo', '2005-05-27 00:00:00', '2017-06-29 00:00:00', 'Sed harum enim in do', 'Aut magna Nam perfer', 'Quis laborum ipsum a', 'Obcaecati ad mollit', 'Nisi repudiandae qua', 'In maxime et aut qui', '234234234234', '2021-09-23 07:30:34', '2021-09-23 07:30:34'),
(16, 'Corporis iste est of', 'Wyatt Bartlett', 'Hyatt Dunlap', 'Dolore atque quia re', 'Fugiat fuga Volupta', 'Et tempora eos ut qu', 'Qui saepe sint unde', 'Voluptas esse occaec', '1986-03-05 00:00:00', '1996-06-26 00:00:00', 'Est laborum Volupta', 'Sint autem numquam f', 'Autem odit nihil con', 'Minim animi labore', 'Non maiores sit con', 'Ex quaerat sit sequ', '3423423423', '2021-09-23 07:30:37', '2021-09-23 07:30:37'),
(17, 'Perspiciatis volupt', 'Octavia Martin', 'Miranda Wood', 'Rem vel nulla volupt', 'Nobis elit soluta b', 'Ut repellendus Itaq', 'Reiciendis culpa eu', 'Consequatur Est lab', '2021-07-28 00:00:00', '1974-01-07 00:00:00', 'Eos dolore reiciend', 'Officiis ea autem ha', 'Adipisci quis anim p', 'Vitae sint sunt eu', 'Veniam minima repel', 'Voluptatem recusand', '2342342342434', '2021-09-23 07:30:40', '2021-09-23 07:30:40'),
(19, 'Enim in magna ea sim', 'Camille Logan', 'Chaim Mclaughlin', 'Beatae delectus et', 'Excepturi mollit rep', 'Aliqua Nulla duis s', 'Odio labore qui poss', 'Exercitationem non i', '2005-12-19 00:00:00', '2003-02-28 00:00:00', 'Recusandae Aut eius', 'Est sint illo non', 'Ut repudiandae offic', 'Eiusmod in vitae ut', 'Id vitae sint quibus', 'Eum atque eum eos do', '128570764', '2021-09-28 17:09:33', '2021-09-28 17:09:33'),
(20, 'A1234', 'Jisan', 'Pink', 'Open', '123456', '123', '54', '213', '2021-09-29 00:00:00', '2021-09-26 00:00:00', '213', '123', '0998', '542', '3232', '213', '559759498', '2021-10-01 14:20:43', '2021-10-01 14:20:43');

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
-- Table structure for table `sales_department`
--

CREATE TABLE `sales_department` (
  `id` int(11) NOT NULL,
  `stock_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `roll` varchar(255) DEFAULT NULL,
  `lot` varchar(255) DEFAULT NULL,
  `buyer` varchar(255) DEFAULT NULL,
  `sell` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sales_department`
--

INSERT INTO `sales_department` (`id`, `stock_id`, `date`, `quantity`, `roll`, `lot`, `buyer`, `sell`, `balance`, `created_at`, `updated_at`) VALUES
(1, 7, '1999-03-11 00:00:00', '364', 'Animi soluta mollit', 'Quaerat earum volupt', 'Optio ex obcaecati', '36', '323', '2021-09-28 11:11:33', '2021-09-28 11:11:33'),
(2, 7, '2001-04-06 00:00:00', '739', 'Officia officiis est', 'Illum saepe delectu', 'Ea amet debitis lab', '77', '23', '2021-09-28 11:12:03', '2021-09-28 11:12:03'),
(6, 7, '2021-09-22 00:00:00', '2342', '234', '43', 'Odio officia officia', '34343', '34', '2021-09-28 23:12:51', '2021-09-29 23:18:09'),
(7, 7, '2005-06-19 00:00:00', '27', 'Aliquid laudantium', 'Qui rerum ducimus e', 'Voluptatum est iusto', '12', '23', '2021-09-29 23:08:00', '2021-09-29 23:08:00'),
(8, 7, '1999-05-19 00:00:00', '133', 'Alias corporis excep', 'Iste earum fuga Vol', 'Dolorem amet deseru', '76', '123', '2021-09-29 23:08:59', '2021-09-29 23:08:59'),
(9, 7, '2000-11-14 00:00:00', '817', 'Ipsum ut rerum aut e', 'Velit blanditiis au', 'Laborum Sint dignis', '82', '12', '2021-09-29 23:09:32', '2021-09-30 00:21:19');

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
-- Indexes for table `lot_department`
--
ALTER TABLE `lot_department`
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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `roles_name_unique` (`name`) USING BTREE;

--
-- Indexes for table `sales_department`
--
ALTER TABLE `sales_department`
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
-- AUTO_INCREMENT for table `dynamic_routes`
--
ALTER TABLE `dynamic_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `lot_department`
--
ALTER TABLE `lot_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `master_menu`
--
ALTER TABLE `master_menu`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permission_roles`
--
ALTER TABLE `permission_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13466;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `sales_department`
--
ALTER TABLE `sales_department`
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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

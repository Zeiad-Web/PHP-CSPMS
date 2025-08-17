-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 16, 2024 at 08:13 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpsms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_list`
--

CREATE TABLE `brand_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand_list`
--

INSERT INTO `brand_list` (`id`, `name`, `image_path`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Yamaha-موني', 'uploads/brands/1.png?v=1642731446', 0, 1, '2024-12-16 20:29:18', '2024-12-16 20:31:07'),
(2, 'Kawasaki-كاوسكي', 'uploads/brands/2.jpg?v=1734284306', 0, 1, '2024-12-16 20:29:18', '2024-12-16 20:31:02'),
(3, 'BMW-بي ام دبليو', 'uploads/brands/3.png?v=1642731467', 0, 1, '2024-12-16 20:29:18', '2024-12-16 20:30:58'),
(4, 'Harley-هامر', 'uploads/brands/4.jpg?v=1734284284', 0, 1, '2024-12-16 20:29:18', '2024-12-16 20:30:54'),
(5, 'Ducati-ديهاتسو', 'uploads/brands/5.jpg?v=1734284271', 0, 1, '2024-12-16 20:29:18', '2024-12-16 20:30:49'),
(6, 'Oil Company', 'uploads/brands/6.jpg?v=1734284345', 1, 1, '2024-12-16 20:29:18', '2024-12-16 20:30:44'),
(7, 'Maxxis', 'uploads/brands/7.jpg?v=1734284327', 1, 1, '2024-12-16 20:29:18', '2024-12-16 20:30:37'),
(8, 'TOYOTA-تويوتى', 'uploads/brands/8.jpg?v=1734258733', 0, 1, '2024-12-15 13:32:13', '2024-12-16 20:20:05'),
(9, 'HYUNDAI-هوانداي', 'uploads/brands/9.jpg?v=1734258790', 0, 1, '2024-12-15 13:33:10', '2024-12-16 20:19:28'),
(10, 'Marseeds-مرسيدس', 'uploads/brands/10.jpg?v=1734258842', 0, 1, '2024-12-15 13:34:02', '2024-12-16 20:19:46'),
(11, 'SUZUKE-سازوكي', 'uploads/brands/11.jpg?v=1734372125', 0, 1, '2024-12-16 21:02:05', '2024-12-16 21:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`id`, `client_id`, `product_id`, `quantity`, `date_added`) VALUES
(14, 1, 3, 2, '2024-12-10 07:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'تكملات', 1, 0, '2024-12-10 07:32:59'),
(2, 'الهيكل الداخلي', 1, 0, '2024-12-10 07:32:59'),
(3, 'الادوات', 1, 0, '2024-12-10 07:32:59'),
(5, 'اطارات', 1, 0, '2024-12-10 07:32:59'),
(6, 'مرتزيات', 1, 0, '2024-12-10 07:32:59'),
(7, 'الزيوت', 1, 0, '2024-12-10 07:32:59'),
(8, 'المكينة', 1, 0, '2024-12-10 07:32:59'),
(9, 'الهيكل', 1, 0, '2024-12-10 07:32:59'),
(10, 'الفريمات', 1, 0, '2024-12-16 20:25:09');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_added` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `status`, `delete_flag`, `date_created`, `date_added`) VALUES
(1, 'جبر', 'حامد', 'النمر', 'ذكر', '101000325', 'شارع اليمن المركون', 'ha@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 0, '2024-12-10 07:32:59', '2024-12-16 20:51:43'),
(2, 'A', 'A', 'Male', '', '65223336', 'kjkl kNk4n K  2556', 'A@gmail.com', '202cb962ac59075b964b07152d234b70', 1, 0, '2024-12-10 07:32:59', NULL),
(3, 'احمد', 'محمد', 'جابر', 'Male', '770000000', 'صعدة', 'aaa@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 0, '2024-12-15 20:01:56', '2024-12-16 11:44:02'),
(4, 'ايهم', '', 'ذكر', '', '770000002', 'تياتايت تيىتى مسيك', 'ae@gmial.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 0, '2024-12-16 21:12:43', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mechanics_list`
--

CREATE TABLE `mechanics_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mechanics_list`
--

INSERT INTO `mechanics_list` (`id`, `name`, `contact`, `email`, `status`, `date_created`) VALUES
(1, 'محمد', '09123456789', 'mo@gmail.com', 1, '2024-12-16 20:45:33'),
(2, 'جمال', '09112355799', 'gm@gmail.com', 1, '2024-12-16 20:45:33'),
(3, 'العبري', '770000000', 'alabre@gmail.com', 1, '2024-12-16 20:45:33'),
(4, 'الطيري', '770000001', 'te@gmail.com', 1, '2024-12-16 20:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `date_added`) VALUES
(8, 6, 1, 1, '2024-12-10 07:32:59'),
(9, 6, 4, 2, '2024-12-10 07:32:59'),
(10, 7, 4, 2, '2024-12-10 07:32:59'),
(11, 7, 3, 4, '2024-12-10 07:32:59');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `total_amount` float NOT NULL DEFAULT 0,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending,1 = packed, 2 = for delivery, 3 = on the way, 4 = delivered, 5=cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `ref_code`, `client_id`, `total_amount`, `delivery_address`, `status`, `date_created`, `date_updated`) VALUES
(6, '202201-00001', 1, 11500, 'This is my sample address only', 3, '2024-12-10 07:32:59', '2024-12-16 20:58:12'),
(7, '202201-00002', 1, 11080, 'This is my sample address only', 2, '2024-12-10 07:32:59', '2024-12-16 20:54:12');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `models` text NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `brand_id`, `category_id`, `name`, `models`, `description`, `price`, `status`, `image_path`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 1, 3, 'خبطة', 'Nma- V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&amp;nbsp;Nma- V2 خبطة&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&amp;nbsp;Nma- V2 خبطة&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&amp;nbsp;Nma- V2 خبطة&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&amp;nbsp;Nma- V2 خبطة&amp;nbsp;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&amp;nbsp;Nma- V2 خبطة&amp;nbsp;&amp;nbsp;Nma- V2 خبطة&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&amp;nbsp;Nma- V2 خبطة&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&lt;br&gt;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;&amp;nbsp;Nma- V2 خبطة&amp;nbsp;&lt;/span&gt;&lt;/p&gt;', 15, 1, 'uploads/products/1.png?v=1642735227', 0, '2024-12-10 07:32:59', '2024-12-16 20:55:27'),
(2, 5, 3, 'Steering Dumper', 'Sample', '&lt;p&gt;sample&lt;/p&gt;', 15000, 1, 'uploads/products/2.png?v=1642736907', 1, '2024-12-10 07:32:59', '2024-12-10 07:32:59'),
(3, 3, 7, ' 10W-40 (1L)زيت', 'زيت-Sample', '&lt;p style=&quot;text-align: right; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;زيت-Sample&amp;nbsp;&lt;/span&gt;&lt;/font&gt;&lt;span style=&quot;text-align: right; font-size: 14px;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;زيت-Sample&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;span style=&quot;text-align: right; font-size: 14px;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;زيت-Sample&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align: right; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;span style=&quot;text-align: right;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot; style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;زيت-Sample&lt;/span&gt;&lt;br&gt;&lt;/font&gt;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 8, 1, 'uploads/products/3.png?v=1642828345', 0, '2024-12-10 07:32:59', '2024-12-16 20:55:27'),
(4, 10, 5, 'اطار gt', '17-f', '&lt;p style=&quot;text-align: right; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;اطار gt&lt;/span&gt;&lt;/font&gt;&lt;span style=&quot;text-align: right; font-size: 14px;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;اطار gt&lt;/font&gt;&lt;/span&gt;&lt;span style=&quot;text-align: right; font-size: 14px;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;اطار gt&lt;/font&gt;&lt;/span&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;&lt;span style=&quot;font-size: 14px;&quot;&gt;اطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gt&lt;/span&gt;&lt;/font&gt;&lt;br&gt;&lt;/p&gt;', 50, 1, 'uploads/products/4.jpg?v=1734372371', 1, '2024-12-10 07:32:59', '2024-12-16 21:06:17'),
(5, 5, 6, '101', 'Any', '&lt;p&gt;مرتزي مرتزي مرتزي مرتزي مرتزي مرتزي مرتزي مرتزي مرتزي مرتزي مرتزي مرتزي مرتزي مرتزي مرتزي مرتزي&amp;nbsp;&lt;/p&gt;&lt;p&gt;مرتزي&amp;nbsp;&lt;span style=&quot;font-size: 1rem;&quot;&gt;مرتزي&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;مرتزي&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;مرتزي&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;مرتزي&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;مرتزي&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;مرتزي&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;مرتزي&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;مرتزي&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;مرتزي&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;مرتزي&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;مرتزي&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;مرتزي&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;مرتزي&amp;nbsp;&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 20, 1, 'uploads/products/5.jpg?v=1734284842', 0, '2024-12-10 07:32:59', '2024-12-16 20:55:27'),
(6, 9, 2, 'exe', '56498962258', '&lt;p&gt;jhhfh jvgddv jgvhfcvjh gcljkjjhkjbvjcxdx fxduytyrcbn n nnghgh&lt;/p&gt;', 100, 1, 'uploads/products/6.jpg?v=1734284423', 0, '2024-12-10 07:47:01', '2024-12-15 20:40:23'),
(7, 8, 5, 'cv-2155', 'siii', '&lt;p&gt;msn sjnjnsklaijna aeemn mkkaonabbbvbnmhammmand ssksehsalah ajllllsjdlalfglal&lt;/p&gt;', 70, 1, 'uploads/products/7.jpg?v=1734284494', 0, '2024-12-10 08:04:25', '2024-12-15 20:41:34'),
(8, 8, 1, 'كشاف', '56498962258-mjbh', '&lt;p&gt;كشاف كورلا 2018 يمين&lt;br&gt;&lt;/p&gt;', 90, 1, '', 0, '2024-12-16 20:36:10', NULL),
(9, 9, 10, 'فريم خلفي توسان', 'Nma- V2', '&lt;p&gt;فريم خلفي توسان&amp;nbsp;فريم خلفي توسانفريم خلفي توسانفريم خلفي توسانفريم خلفي توسان&lt;/p&gt;&lt;p&gt;فريم خلفي توسان&lt;br&gt;&lt;/p&gt;', 30, 1, '', 0, '2024-12-16 21:00:53', NULL),
(10, 8, 5, 'اطار gtt', '17-f', '&lt;p&gt;اطار gt&amp;nbsp;اطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gt&lt;/p&gt;&lt;p&gt;اطار gtاطار gtاطار gtاطار gtاطار gtاطار gtاطار gt&lt;/p&gt;&lt;p&gt;اطار gtاطار gtاطار gt&lt;br&gt;&lt;/p&gt;', 50, 1, 'uploads/products/10.jpg?v=1734372519', 0, '2024-12-16 21:08:39', '2024-12-16 21:08:39');

-- --------------------------------------------------------

--
-- Table structure for table `request_meta`
--

CREATE TABLE `request_meta` (
  `request_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_meta`
--

INSERT INTO `request_meta` (`request_id`, `meta_field`, `meta_value`) VALUES
(4, 'vehicle_type', 'Sample'),
(4, 'vehicle_name', 'Yamaha Nmax V2'),
(4, 'vehicle_registration_number', 'GCN 2306'),
(4, 'vehicle_model', '2021'),
(4, 'service_id', '1,2,4'),
(4, 'pickup_address', ''),
(5, 'vehicle_type', 'Sample 102'),
(5, 'vehicle_name', 'Sample'),
(5, 'vehicle_registration_number', 'TEST123'),
(5, 'vehicle_model', 'test'),
(5, 'service_id', '3'),
(5, 'pickup_address', 'Sample Address'),
(6, 'vehicle_type', 'تويوتا'),
(6, 'vehicle_name', 'يارس'),
(6, 'vehicle_registration_number', '544'),
(6, 'vehicle_model', '2008'),
(6, 'service_id', '3'),
(6, 'pickup_address', ''),
(7, 'vehicle_type', 'تويوتا'),
(7, 'vehicle_name', 'يارس'),
(7, 'vehicle_registration_number', '544'),
(7, 'vehicle_model', '2008'),
(7, 'service_id', '3'),
(7, 'pickup_address', '');

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(30) NOT NULL,
  `service` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `service`, `description`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'تغيير الزيوت', '&lt;p style=&quot;text-align: justify; &quot;&gt;تغيير الزيوت&amp;nbsp;تغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوتتغيير الزيوت&amp;nbsp;تغيير الزيوت&amp;nbsp;تغيير الزيوت&amp;nbsp;تغيير الزيوت&lt;br&gt;&lt;/p&gt;', 1, 0, '2024-12-16 20:29:18'),
(2, 'الفحص الشامل', '&lt;p style=&quot;text-align: justify; &quot;&gt;الفحص الشامل&amp;nbsp;الفحص الشامل&amp;nbsp;الفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشاملالفحص الشامل&lt;br&gt;&lt;/p&gt;', 1, 0, '2024-12-16 20:29:18'),
(3, 'ظبط المحرك', '&lt;p style=&quot;text-align: justify; &quot;&gt;ظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحركظبط المحرك&lt;br&gt;&lt;/p&gt;', 1, 0, '2024-12-16 20:29:18'),
(4, 'تغيير الاطارات', '&lt;p style=&quot;text-align: justify; &quot;&gt;تغيير الاطارات&amp;nbsp;تغيير الاطارات&amp;nbsp;تغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطاراتتغيير الاطارات&lt;br&gt;&lt;/p&gt;', 1, 0, '2024-12-16 20:29:18'),
(5, 'زينة السيارة', '&lt;p&gt;زينة السيارة&amp;nbsp;زينة السيارة&amp;nbsp;زينة السيارة&amp;nbsp;زينة السيارة&amp;nbsp;زينة السيارة&amp;nbsp;زينة السيارة&amp;nbsp;زينة السيارة&amp;nbsp;زينة السيارة&amp;nbsp;زينة السيارة&lt;/p&gt;&lt;p&gt;زينة السيارة&amp;nbsp;زينة السيارة&amp;nbsp;زينة السيارةزينة السيارةزينة السيارةزينة السيارةزينة السيارةزينة السيارة&lt;br&gt;&lt;/p&gt;', 1, 0, '2024-12-16 20:29:18');

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `service_type` text NOT NULL,
  `mechanic_id` int(30) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `client_id`, `service_type`, `mechanic_id`, `status`, `date_created`) VALUES
(4, 1, 'Drop Off', 2, 3, '2024-12-10 07:32:59'),
(5, 1, 'استلام', 3, 1, '2024-12-10 07:32:59'),
(6, 4, 'الغاء', NULL, 4, '2024-12-16 21:36:14'),
(7, 4, 'رفض', 2, 1, '2024-12-16 21:44:04');

-- --------------------------------------------------------

--
-- Table structure for table `stock_list`
--

CREATE TABLE `stock_list` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1= IN, 2= Out',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_list`
--

INSERT INTO `stock_list` (`id`, `product_id`, `quantity`, `type`, `date_created`) VALUES
(1, 1, 10, 1, '2024-12-10 07:32:59'),
(4, 3, 30, 1, '2024-12-10 07:32:59'),
(5, 5, 25, 1, '2024-12-10 07:32:59'),
(8, 4, 50, 1, '2024-12-10 07:32:59'),
(9, 6, 5, 1, '2024-12-16 12:00:44'),
(10, 1, 4, 1, '2024-12-16 13:12:55'),
(11, 7, 20, 1, '2024-12-16 20:57:35'),
(12, 8, 10, 1, '2024-12-16 20:57:52');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'SCPMS- متميزون في تلبية كل احتياجات سيارتك'),
(6, 'short_name', 'SCPMS' ),
(11, 'logo', 'uploads/1734258540_IMG-20241212-WA0007.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1734372240_Mercedes-Benz-EQS-580-4Matic-Hero.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'مشرف', 'المشرف', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1734376080_٢٠٢١٠٨٠١_٠١٠٢٣٠.jpg', NULL, 1, '2024-12-10 07:32:59', '2024-12-16 22:08:24'),
(6, 'شاكر', 'وديع', 'AAA', 'e10adc3949ba59abbe56e057f20f883e', 'uploads/1632990840_ava.jpg', NULL, 2, '2024-12-10 07:32:59', '2024-12-16 20:56:51'),
(7, 'احمد', 'صالح', 'st', 'e10adc3949ba59abbe56e057f20f883e', NULL, NULL, 2, '2024-12-16 12:10:06', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_list`
--
ALTER TABLE `brand_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indexes for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `mechanic_id` (`mechanic_id`);

--
-- Indexes for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_list`
--
ALTER TABLE `brand_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `stock_list`
--
ALTER TABLE `stock_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `cart_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_list_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_list_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD CONSTRAINT `request_meta_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD CONSTRAINT `service_requests_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_requests_ibfk_2` FOREIGN KEY (`mechanic_id`) REFERENCES `mechanics_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD CONSTRAINT `stock_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

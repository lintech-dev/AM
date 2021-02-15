-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 15, 2021 at 07:56 AM
-- Server version: 5.7.21
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asset_ticketing`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

DROP TABLE IF EXISTS `accessories`;
CREATE TABLE IF NOT EXISTS `accessories` (
  `Accessory_id` int(11) NOT NULL AUTO_INCREMENT,
  `Accessary_company` varchar(250) DEFAULT NULL,
  `Accessary_name` varchar(100) DEFAULT NULL,
  `Accessory_Category` varchar(100) DEFAULT NULL,
  `Accessory_Supplier` varchar(100) DEFAULT NULL,
  `Accessory_Manufacturer` varchar(100) DEFAULT NULL,
  `Accessory_Location` varchar(100) DEFAULT NULL,
  `Accessory_Model_no` varchar(100) DEFAULT NULL,
  `Accessory_Order_no` varchar(100) DEFAULT NULL,
  `Accessory_Purchase_cost` varchar(100) DEFAULT NULL,
  `Accessory_Purchase_dt` varchar(100) DEFAULT NULL,
  `Accessory_Quantity` varchar(100) DEFAULT NULL,
  `Accessory_min_Quantity` varchar(250) DEFAULT NULL,
  `Acc_Image_link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Accessory_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`Accessory_id`, `Accessary_company`, `Accessary_name`, `Accessory_Category`, `Accessory_Supplier`, `Accessory_Manufacturer`, `Accessory_Location`, `Accessory_Model_no`, `Accessory_Order_no`, `Accessory_Purchase_cost`, `Accessory_Purchase_dt`, `Accessory_Quantity`, `Accessory_min_Quantity`, `Acc_Image_link`) VALUES
(1, 'Company 1', 'aname', 'Desktop', 'supplier 1', 'Manufacture 1', 'Bangalore', '323232', '22331212', NULL, '2018-07-27', '22', '2', 'med_new.png');

-- --------------------------------------------------------

--
-- Table structure for table `assets`
--

DROP TABLE IF EXISTS `assets`;
CREATE TABLE IF NOT EXISTS `assets` (
  `Asset_Id` int(11) NOT NULL AUTO_INCREMENT,
  `Asset_Tag` varchar(40) DEFAULT NULL,
  `QR_BAR_code` varchar(100) DEFAULT NULL,
  `Model` varchar(100) DEFAULT NULL,
  `Status` varchar(100) DEFAULT NULL,
  `serial` varchar(250) DEFAULT NULL,
  `Asset_name` varchar(100) DEFAULT NULL,
  `Purchase_dt` varchar(100) DEFAULT NULL,
  `Supplier` varchar(100) DEFAULT NULL,
  `Order_no` varchar(100) DEFAULT NULL,
  `Purchase_cost` varchar(100) DEFAULT NULL,
  `Warranty` varchar(100) DEFAULT NULL,
  `Remarks` varchar(100) DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `Requestable` varchar(100) DEFAULT NULL,
  `Asset_Image_link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Asset_Id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assets`
--

INSERT INTO `assets` (`Asset_Id`, `Asset_Tag`, `QR_BAR_code`, `Model`, `Status`, `serial`, `Asset_name`, `Purchase_dt`, `Supplier`, `Order_no`, `Purchase_cost`, `Warranty`, `Remarks`, `Location`, `Requestable`, `Asset_Image_link`) VALUES
(1, '21221', NULL, 't430', 'pending', '23432', 'laptop', '2018-07-27', 'Supplier 1', 'test order', '25000', '2 years', 'test notes', 'Bangalore', 'requesttable', 'images123.png');

-- --------------------------------------------------------

--
-- Table structure for table `asset_assign`
--

DROP TABLE IF EXISTS `asset_assign`;
CREATE TABLE IF NOT EXISTS `asset_assign` (
  `assign_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(250) DEFAULT NULL,
  `asset_tag` varchar(100) DEFAULT NULL,
  `request_dt` date NOT NULL,
  `assigned_to` varchar(100) DEFAULT NULL,
  `assigned_dt` date NOT NULL,
  `remarks` text,
  `quantity` varchar(100) DEFAULT NULL,
  `asset_type` varchar(100) DEFAULT NULL,
  `asset_status` varchar(100) DEFAULT NULL,
  `asset_retieved_dt` date NOT NULL,
  `licence` varchar(250) DEFAULT NULL,
  `accessory_name` varchar(250) DEFAULT NULL,
  `model_no1` varchar(250) DEFAULT NULL,
  `manufacturer` varchar(250) DEFAULT NULL,
  `consumable_name` varchar(250) DEFAULT NULL,
  `model_no2` varchar(250) DEFAULT NULL,
  `component_name` varchar(250) DEFAULT NULL,
  `component_serial_no` varchar(250) DEFAULT NULL,
  PRIMARY KEY (`assign_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `asset_assign`
--

INSERT INTO `asset_assign` (`assign_id`, `type`, `asset_tag`, `request_dt`, `assigned_to`, `assigned_dt`, `remarks`, `quantity`, `asset_type`, `asset_status`, `asset_retieved_dt`, `licence`, `accessory_name`, `model_no1`, `manufacturer`, `consumable_name`, `model_no2`, `component_name`, `component_serial_no`) VALUES
(3, 'Asset', 'wert22112-22', '2018-07-27', 'Krishna', '2018-07-28', 'test remarks test', '4', NULL, NULL, '2018-07-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Accessory', NULL, '2018-07-27', 'test assing', '2018-07-26', 'test', '3', NULL, NULL, '2018-07-27', NULL, 'acess name', 'model no', 'Manufacturer', NULL, NULL, NULL, NULL),
(5, 'Component', NULL, '2018-07-27', 'Shekar', '2018-07-27', 'test remarks', '22', NULL, NULL, '2018-07-27', NULL, NULL, NULL, NULL, NULL, NULL, 'Component Name', 'Serial No');

-- --------------------------------------------------------

--
-- Table structure for table `asset_licences`
--

DROP TABLE IF EXISTS `asset_licences`;
CREATE TABLE IF NOT EXISTS `asset_licences` (
  `Software_name` varchar(100) DEFAULT NULL,
  `Licence_id` int(11) NOT NULL AUTO_INCREMENT,
  `Category_name` varchar(100) DEFAULT NULL,
  `Product_key` varchar(100) DEFAULT NULL,
  `seats` varchar(100) DEFAULT NULL,
  `Manufacturer` varchar(100) DEFAULT NULL,
  `Licensed_name` varchar(100) DEFAULT NULL,
  `License_email` varchar(100) DEFAULT NULL,
  `Reassignable` varchar(100) DEFAULT NULL,
  `Supplier` varchar(100) DEFAULT NULL,
  `Order_no` varchar(100) DEFAULT NULL,
  `Purchase_cost` varchar(100) DEFAULT NULL,
  `Purchase_dt` varchar(100) DEFAULT NULL,
  `Expiration_dt` varchar(100) DEFAULT NULL,
  `Termination_dt` varchar(100) DEFAULT NULL,
  `Purchase_order_no` varchar(100) DEFAULT NULL,
  `Depreciation` varchar(100) DEFAULT NULL,
  `Maintained` varchar(100) DEFAULT NULL,
  `Remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Licence_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `Category_name` varchar(100) DEFAULT NULL,
  `Category_type` varchar(100) DEFAULT NULL,
  UNIQUE KEY `Category_name` (`Category_name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Category_name`, `Category_type`) VALUES
('laptop', 'type'),
('Desktop', 'type'),
('Mouse', 'type'),
('Keyboard', 'type');

-- --------------------------------------------------------

--
-- Table structure for table `company_info`
--

DROP TABLE IF EXISTS `company_info`;
CREATE TABLE IF NOT EXISTS `company_info` (
  `comp_id` int(11) NOT NULL AUTO_INCREMENT,
  `comp_name` varchar(255) DEFAULT NULL,
  `priority` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`comp_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company_info`
--

INSERT INTO `company_info` (`comp_id`, `comp_name`, `priority`) VALUES
(1, 'company 1', 'High'),
(2, 'company 2', 'High'),
(3, 'company 3', 'High'),
(4, 'company 4', 'Medium'),
(5, 'company 5', 'Medium'),
(6, 'company 6', 'Low'),
(7, 'company 7', 'Low');

-- --------------------------------------------------------

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
CREATE TABLE IF NOT EXISTS `component` (
  `Component_id` int(11) NOT NULL AUTO_INCREMENT,
  `Component_name` varchar(250) DEFAULT NULL,
  `Component_category` varchar(100) DEFAULT NULL,
  `Component_Quantity` varchar(100) DEFAULT NULL,
  `Component_min_Quantity` varchar(250) DEFAULT NULL,
  `Component_serial` varchar(100) DEFAULT NULL,
  `Company` varchar(250) DEFAULT NULL,
  `Component_location` varchar(100) DEFAULT NULL,
  `Component_order_no` varchar(100) DEFAULT NULL,
  `Component_purchase_dt` varchar(100) DEFAULT NULL,
  `Component_purchase_cost` varchar(100) DEFAULT NULL,
  `Component_image_link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Component_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `component`
--

INSERT INTO `component` (`Component_id`, `Component_name`, `Component_category`, `Component_Quantity`, `Component_min_Quantity`, `Component_serial`, `Company`, `Component_location`, `Component_order_no`, `Component_purchase_dt`, `Component_purchase_cost`, `Component_image_link`) VALUES
(1, 'cname', 'laptop', '22', '2', '23432', 'Company 1', 'Banglore', '22331212', '2018-07-27', '20000', '123.png');

-- --------------------------------------------------------

--
-- Table structure for table `consumable`
--

DROP TABLE IF EXISTS `consumable`;
CREATE TABLE IF NOT EXISTS `consumable` (
  `Consumable_id` int(11) NOT NULL AUTO_INCREMENT,
  `company` varchar(250) DEFAULT NULL,
  `Consumable_name` varchar(100) DEFAULT NULL,
  `consumable_category` varchar(100) DEFAULT NULL,
  `consumable_Manufacturer` varchar(100) DEFAULT NULL,
  `Consumable_Location` varchar(100) DEFAULT NULL,
  `Consumable_Model_No` varchar(100) DEFAULT NULL,
  `Consumable_item_no` varchar(100) DEFAULT NULL,
  `Consumable_order_no` varchar(100) DEFAULT NULL,
  `Consumable_Purchase_dt` varchar(100) DEFAULT NULL,
  `Consumable_Purchase_cost` varchar(100) DEFAULT NULL,
  `Consumable_Quantity` varchar(100) DEFAULT NULL,
  `minquantity` varchar(250) DEFAULT NULL,
  `Consumable_image_link` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Consumable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `consumable`
--

INSERT INTO `consumable` (`Consumable_id`, `company`, `Consumable_name`, `consumable_category`, `consumable_Manufacturer`, `Consumable_Location`, `Consumable_Model_No`, `Consumable_item_no`, `Consumable_order_no`, `Consumable_Purchase_dt`, `Consumable_Purchase_cost`, `Consumable_Quantity`, `minquantity`, `Consumable_image_link`) VALUES
(1, 'Company 1', NULL, 'laptop', 'Manufacture 1', 'Banglore', '221133', '342212', '0001', '2018-07-27', '20000', '22', '2', '');

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

DROP TABLE IF EXISTS `holidays`;
CREATE TABLE IF NOT EXISTS `holidays` (
  `holiday_date` date DEFAULT NULL,
  `holiday_name` varchar(255) DEFAULT NULL,
  `path` text,
  `holiday_id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`holiday_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `issuecategory_info`
--

DROP TABLE IF EXISTS `issuecategory_info`;
CREATE TABLE IF NOT EXISTS `issuecategory_info` (
  `iss_id` int(11) NOT NULL AUTO_INCREMENT,
  `issuecat_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`iss_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `issuecategory_info`
--

INSERT INTO `issuecategory_info` (`iss_id`, `issuecat_name`) VALUES
(1, 'Category 1'),
(2, 'Category 2');

-- --------------------------------------------------------

--
-- Table structure for table `licences`
--

DROP TABLE IF EXISTS `licences`;
CREATE TABLE IF NOT EXISTS `licences` (
  `Software_name` varchar(100) DEFAULT NULL,
  `Licence_id` int(11) NOT NULL AUTO_INCREMENT,
  `Category_name` varchar(100) DEFAULT NULL,
  `Product_key` varchar(100) DEFAULT NULL,
  `seats` varchar(100) DEFAULT NULL,
  `company` varchar(250) DEFAULT NULL,
  `Manufacturer` varchar(100) DEFAULT NULL,
  `Licensed_name` varchar(100) DEFAULT NULL,
  `License_email` varchar(100) DEFAULT NULL,
  `Reassignable` varchar(100) DEFAULT NULL,
  `Supplier` varchar(100) DEFAULT NULL,
  `Order_no` varchar(100) DEFAULT NULL,
  `Purchase_cost` varchar(100) DEFAULT NULL,
  `Purchase_dt` varchar(100) DEFAULT NULL,
  `Expiration_dt` varchar(100) DEFAULT NULL,
  `Termination_dt` varchar(100) DEFAULT NULL,
  `Purchase_order_no` varchar(100) DEFAULT NULL,
  `Depreciation` varchar(100) DEFAULT NULL,
  `Maintained` varchar(100) DEFAULT NULL,
  `Remarks` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Licence_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `licences`
--

INSERT INTO `licences` (`Software_name`, `Licence_id`, `Category_name`, `Product_key`, `seats`, `company`, `Manufacturer`, `Licensed_name`, `License_email`, `Reassignable`, `Supplier`, `Order_no`, `Purchase_cost`, `Purchase_dt`, `Expiration_dt`, `Termination_dt`, `Purchase_order_no`, `Depreciation`, `Maintained`, `Remarks`) VALUES
('osystem', 1, 'laptop', '1221312-sasdas-2123dd-3212dd22', '2', 'Company 2', 'Manufacture 1', NULL, 'test@gmail.com', 'on', 'Supplier 1', '22331212', '5000', '2018-07-27', '2019-07-27', '2019-07-27', '32323', 'Depreciation 1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `location_info`
--

DROP TABLE IF EXISTS `location_info`;
CREATE TABLE IF NOT EXISTS `location_info` (
  `loc_id` int(11) NOT NULL AUTO_INCREMENT,
  `location_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`loc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `location_info`
--

INSERT INTO `location_info` (`loc_id`, `location_name`) VALUES
(1, 'Location 111'),
(2, 'Location 112');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

DROP TABLE IF EXISTS `manufacturer`;
CREATE TABLE IF NOT EXISTS `manufacturer` (
  `Manufacture_id` int(11) NOT NULL AUTO_INCREMENT,
  `Manufacture_name` varchar(100) NOT NULL,
  PRIMARY KEY (`Manufacture_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`Manufacture_id`, `Manufacture_name`) VALUES
(1, 'Manufacture 1'),
(2, 'Manufacture 2'),
(3, 'Manufacture 3');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

DROP TABLE IF EXISTS `models`;
CREATE TABLE IF NOT EXISTS `models` (
  `Model_name` varchar(100) NOT NULL,
  `Manufacturer` varchar(100) NOT NULL,
  `Category` varchar(100) NOT NULL,
  `Model_no` int(11) NOT NULL,
  PRIMARY KEY (`Model_no`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`Model_name`, `Manufacturer`, `Category`, `Model_no`) VALUES
('t430', 'Lenovo', 'Laptop', 123456),
('t450', 'Lenovo', 'Laptop', 567890);

-- --------------------------------------------------------

--
-- Table structure for table `region_info`
--

DROP TABLE IF EXISTS `region_info`;
CREATE TABLE IF NOT EXISTS `region_info` (
  `reg_id` int(11) NOT NULL AUTO_INCREMENT,
  `region_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`reg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `region_info`
--

INSERT INTO `region_info` (`reg_id`, `region_name`) VALUES
(1, 'Region 1'),
(2, 'Region 2');

-- --------------------------------------------------------

--
-- Table structure for table `segment_info`
--

DROP TABLE IF EXISTS `segment_info`;
CREATE TABLE IF NOT EXISTS `segment_info` (
  `seg_id` int(11) NOT NULL AUTO_INCREMENT,
  `seg_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`seg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `segment_info`
--

INSERT INTO `segment_info` (`seg_id`, `seg_name`) VALUES
(1, 'WIFI'),
(2, 'NETWORK'),
(3, 'FIRE WALL');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

DROP TABLE IF EXISTS `status`;
CREATE TABLE IF NOT EXISTS `status` (
  `Status_id` int(11) NOT NULL AUTO_INCREMENT,
  `Status_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Status_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`Status_id`, `Status_name`) VALUES
(1, 'Pending'),
(2, 'Ready to Develop'),
(3, 'Archived'),
(4, 'Broken Not Fixable'),
(5, 'Lost/Stolen'),
(6, 'Out for Diagnostics'),
(7, 'Out for Repair');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
CREATE TABLE IF NOT EXISTS `supplier` (
  `Supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `Supplier_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Supplier_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`Supplier_id`, `Supplier_name`) VALUES
(1, 'supplier 1'),
(2, 'supplier 2'),
(3, 'supplier 3');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_id` varchar(50) DEFAULT NULL,
  `created_by` varchar(50) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `cname` varchar(500) DEFAULT NULL,
  `mobile` varchar(500) DEFAULT NULL,
  `email` varchar(500) DEFAULT NULL,
  `segment` varchar(500) DEFAULT NULL,
  `company_name` varchar(500) DEFAULT NULL,
  `region` varchar(500) DEFAULT NULL,
  `location` varchar(500) DEFAULT NULL,
  `issue_cat` varchar(500) DEFAULT NULL,
  `t_type` varchar(500) DEFAULT NULL,
  `remarks` text,
  `status` varchar(255) DEFAULT 'pending',
  `closed_date` datetime DEFAULT NULL,
  `time_taken` varchar(255) DEFAULT NULL,
  `sla` varchar(255) DEFAULT NULL,
  `level` varchar(30) DEFAULT NULL,
  `solution` text,
  `assign_to` varchar(225) DEFAULT NULL,
  `closed_by` varchar(40) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `upath` varchar(255) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `ticket_id`, `created_by`, `created_date`, `cname`, `mobile`, `email`, `segment`, `company_name`, `region`, `location`, `issue_cat`, `t_type`, `remarks`, `status`, `closed_date`, `time_taken`, `sla`, `level`, `solution`, `assign_to`, `closed_by`, `path`, `upath`, `update_date`, `update_by`) VALUES
(1, '0001', NULL, '2020-06-23 06:06:45', 'gopal', '8892022172', 'gopalkrishna_b@lintechnokrats.com', 'WIFI', 'company 1', 'Karnataka', 'Mallesweram', 'test category', 'Type testing', 'testing remarks', 'pending', '2020-06-25 02:41:06', '0:5:0', NULL, 'level1', '|test update|closed|test reopen', 'gopalkrishna_b@lintechnokrats.com', 'gopalkrishna_b@lintechnokrats.com', '8.png', '|jrs_notes.txt||', '2020-06-25 03:11:46', 'gopalkrishna_b@lintechnokrats.com'),
(2, '0002', NULL, '2020-06-23 06:10:44', 'Hari', '8892022172', 'hari@gmail.com', 'FIRE WALL', 'company 4', 'Karnataka', 'Raichur', 'test category', 'Type testing', 'test reamrks', 'open', NULL, NULL, NULL, NULL, '|open', 'abhay_a@lintechnokrats.in', NULL, '7.png', '|', '2020-06-30 03:51:58', 'gopalkrishna_b@lintechnokrats.com');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_type_info`
--

DROP TABLE IF EXISTS `ticket_type_info`;
CREATE TABLE IF NOT EXISTS `ticket_type_info` (
  `tic_id` int(11) NOT NULL AUTO_INCREMENT,
  `ticket_typename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tic_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_type_info`
--

INSERT INTO `ticket_type_info` (`tic_id`, `ticket_typename`) VALUES
(1, 'Type 1'),
(2, 'Type 21');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `empid` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contactno` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confpwd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `segment_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `empid`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `location`, `department`, `contactno`, `confpwd`, `segment_name`) VALUES
(1, NULL, 'gopal', 'gopalkrishna_b@lintechnokrats.com', NULL, '$2y$10$MR9QiNgftJFr/YFDsFSgFeo2m/HIWIwM74hZ18mHlfRJG82LJ.ELq', NULL, '2020-06-23 01:49:43', '2020-06-23 01:49:43', NULL, NULL, NULL, NULL, 'WIFI'),
(2, NULL, 'Abhay', 'abhay_a@lintechnokrats.in', NULL, '$2y$10$MR9QiNgftJFr/YFDsFSgFeo2m/HIWIwM74hZ18mHlfRJG82LJ.ELq', 'Eb2V8l3Ndm2MkItzbkKf82epYB3ZchUghhYC8XW0Ven9PU9Js3fzhmyyDuyp', '2020-06-23 04:30:27', '2020-06-23 04:30:27', NULL, NULL, NULL, NULL, 'NETWORK'),
(3, NULL, 'Karan', 'karandeep_s@lintechnokrats.in', NULL, '$2y$10$MR9QiNgftJFr/YFDsFSgFeo2m/HIWIwM74hZ18mHlfRJG82LJ.ELq', NULL, '2020-06-25 00:20:27', '2020-06-25 00:20:27', NULL, NULL, NULL, NULL, 'FIRE WALL'),
(9, NULL, 'Raj', 'raj@convergentwireless.com', NULL, '$2y$10$v6enjre50uSO5W5FCJ1uNu7MR2WCK/ncPmGqowV1FIwgwJHzMSnpO', NULL, '2020-06-30 00:18:36', NULL, 'Banglore', 'Admin', '8892022172', 'Raj@Idurkar', 'Admin');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

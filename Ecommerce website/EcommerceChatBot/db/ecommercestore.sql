-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 17, 2020 at 11:18 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommercestore`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add admin', 1, 'add_admin'),
(2, 'Can change admin', 1, 'change_admin'),
(3, 'Can delete admin', 1, 'delete_admin'),
(4, 'Can view admin', 1, 'view_admin'),
(5, 'Can add category', 2, 'add_category'),
(6, 'Can change category', 2, 'change_category'),
(7, 'Can delete category', 2, 'delete_category'),
(8, 'Can view category', 2, 'view_category'),
(9, 'Can add conversation', 3, 'add_conversation'),
(10, 'Can change conversation', 3, 'change_conversation'),
(11, 'Can delete conversation', 3, 'delete_conversation'),
(12, 'Can view conversation', 3, 'view_conversation'),
(13, 'Can add customer', 4, 'add_customer'),
(14, 'Can change customer', 4, 'change_customer'),
(15, 'Can delete customer', 4, 'delete_customer'),
(16, 'Can view customer', 4, 'view_customer'),
(17, 'Can add delivery_ boy', 5, 'add_delivery_boy'),
(18, 'Can change delivery_ boy', 5, 'change_delivery_boy'),
(19, 'Can delete delivery_ boy', 5, 'delete_delivery_boy'),
(20, 'Can view delivery_ boy', 5, 'view_delivery_boy'),
(21, 'Can add order', 6, 'add_order'),
(22, 'Can change order', 6, 'change_order'),
(23, 'Can delete order', 6, 'delete_order'),
(24, 'Can view order', 6, 'view_order'),
(25, 'Can add payment', 7, 'add_payment'),
(26, 'Can change payment', 7, 'change_payment'),
(27, 'Can delete payment', 7, 'delete_payment'),
(28, 'Can view payment', 7, 'view_payment'),
(29, 'Can add supplier', 8, 'add_supplier'),
(30, 'Can change supplier', 8, 'change_supplier'),
(31, 'Can delete supplier', 8, 'delete_supplier'),
(32, 'Can view supplier', 8, 'view_supplier'),
(33, 'Can add sub_ category_ attributes', 9, 'add_sub_category_attributes'),
(34, 'Can change sub_ category_ attributes', 9, 'change_sub_category_attributes'),
(35, 'Can delete sub_ category_ attributes', 9, 'delete_sub_category_attributes'),
(36, 'Can view sub_ category_ attributes', 9, 'view_sub_category_attributes'),
(37, 'Can add shopping_ cart', 10, 'add_shopping_cart'),
(38, 'Can change shopping_ cart', 10, 'change_shopping_cart'),
(39, 'Can delete shopping_ cart', 10, 'delete_shopping_cart'),
(40, 'Can view shopping_ cart', 10, 'view_shopping_cart'),
(41, 'Can add product', 11, 'add_product'),
(42, 'Can change product', 11, 'change_product'),
(43, 'Can delete product', 11, 'delete_product'),
(44, 'Can view product', 11, 'view_product'),
(45, 'Can add order_ details', 12, 'add_order_details'),
(46, 'Can change order_ details', 12, 'change_order_details'),
(47, 'Can delete order_ details', 12, 'delete_order_details'),
(48, 'Can view order_ details', 12, 'view_order_details'),
(49, 'Can add conversation_ reply', 13, 'add_conversation_reply'),
(50, 'Can change conversation_ reply', 13, 'change_conversation_reply'),
(51, 'Can delete conversation_ reply', 13, 'delete_conversation_reply'),
(52, 'Can view conversation_ reply', 13, 'view_conversation_reply'),
(53, 'Can add attributes_ data', 14, 'add_attributes_data'),
(54, 'Can change attributes_ data', 14, 'change_attributes_data'),
(55, 'Can delete attributes_ data', 14, 'delete_attributes_data'),
(56, 'Can view attributes_ data', 14, 'view_attributes_data'),
(57, 'Can add log entry', 15, 'add_logentry'),
(58, 'Can change log entry', 15, 'change_logentry'),
(59, 'Can delete log entry', 15, 'delete_logentry'),
(60, 'Can view log entry', 15, 'view_logentry'),
(61, 'Can add permission', 16, 'add_permission'),
(62, 'Can change permission', 16, 'change_permission'),
(63, 'Can delete permission', 16, 'delete_permission'),
(64, 'Can view permission', 16, 'view_permission'),
(65, 'Can add group', 17, 'add_group'),
(66, 'Can change group', 17, 'change_group'),
(67, 'Can delete group', 17, 'delete_group'),
(68, 'Can view group', 17, 'view_group'),
(69, 'Can add user', 18, 'add_user'),
(70, 'Can change user', 18, 'change_user'),
(71, 'Can delete user', 18, 'delete_user'),
(72, 'Can view user', 18, 'view_user'),
(73, 'Can add content type', 19, 'add_contenttype'),
(74, 'Can change content type', 19, 'change_contenttype'),
(75, 'Can delete content type', 19, 'delete_contenttype'),
(76, 'Can view content type', 19, 'view_contenttype'),
(77, 'Can add session', 20, 'add_session'),
(78, 'Can change session', 20, 'change_session'),
(79, 'Can delete session', 20, 'delete_session'),
(80, 'Can view session', 20, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(15, 'admin', 'logentry'),
(17, 'auth', 'group'),
(16, 'auth', 'permission'),
(18, 'auth', 'user'),
(19, 'contenttypes', 'contenttype'),
(20, 'sessions', 'session'),
(1, 'Shop', 'admin'),
(14, 'Shop', 'attributes_data'),
(2, 'Shop', 'category'),
(3, 'Shop', 'conversation'),
(13, 'Shop', 'conversation_reply'),
(4, 'Shop', 'customer'),
(5, 'Shop', 'delivery_boy'),
(6, 'Shop', 'order'),
(12, 'Shop', 'order_details'),
(7, 'Shop', 'payment'),
(11, 'Shop', 'product'),
(10, 'Shop', 'shopping_cart'),
(9, 'Shop', 'sub_category_attributes'),
(8, 'Shop', 'supplier');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Shop', '0001_initial', '2020-09-16 11:39:14.431793'),
(2, 'contenttypes', '0001_initial', '2020-09-16 11:39:15.777073'),
(3, 'auth', '0001_initial', '2020-09-16 11:39:16.027238'),
(4, 'admin', '0001_initial', '2020-09-16 11:39:16.681025'),
(5, 'admin', '0002_logentry_remove_auto_add', '2020-09-16 11:39:16.988102'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2020-09-16 11:39:17.016395'),
(7, 'contenttypes', '0002_remove_content_type_name', '2020-09-16 11:39:17.145722'),
(8, 'auth', '0002_alter_permission_name_max_length', '2020-09-16 11:39:17.212980'),
(9, 'auth', '0003_alter_user_email_max_length', '2020-09-16 11:39:17.282568'),
(10, 'auth', '0004_alter_user_username_opts', '2020-09-16 11:39:17.298193'),
(11, 'auth', '0005_alter_user_last_login_null', '2020-09-16 11:39:17.355604'),
(12, 'auth', '0006_require_contenttypes_0002', '2020-09-16 11:39:17.355604'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2020-09-16 11:39:17.371232'),
(14, 'auth', '0008_alter_user_username_max_length', '2020-09-16 11:39:17.478537'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2020-09-16 11:39:17.593264'),
(16, 'auth', '0010_alter_group_name_max_length', '2020-09-16 11:39:17.696835'),
(17, 'auth', '0011_update_proxy_permissions', '2020-09-16 11:39:17.738899'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2020-09-16 11:39:17.890138'),
(19, 'sessions', '0001_initial', '2020-09-16 11:39:17.922970'),
(20, 'Shop', '0002_auto_20200917_0115', '2020-09-17 09:15:22.842962');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_admin`
--

CREATE TABLE `shop_admin` (
  `AdminID` int(11) NOT NULL,
  `AdminFirstName` varchar(50) NOT NULL,
  `AdminLastName` varchar(50) NOT NULL,
  `AdminPassword` varchar(16) NOT NULL,
  `AdminAddress` varchar(150) NOT NULL,
  `AdminPhone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_attributes_data`
--

CREATE TABLE `shop_attributes_data` (
  `AttributeDataID` int(11) NOT NULL,
  `AttributeValue` varchar(150) NOT NULL,
  `AttributeID_id` int(11) NOT NULL,
  `ProductID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_attributes_data`
--

INSERT INTO `shop_attributes_data` (`AttributeDataID`, `AttributeValue`, `AttributeID_id`, `ProductID_id`) VALUES
(1, '60', 1, 1),
(2, '28', 2, 1),
(3, 'Blue', 3, 1),
(4, 'Levis', 4, 1),
(5, 'Black', 5, 2),
(6, 'Rolex 22k Gold', 6, 2),
(7, '3 Years', 7, 2),
(8, '8GB DDR4', 8, 3),
(9, '500GB SSD', 9, 3),
(10, 'Microsoft Windows 10', 11, 3),
(11, 'i7 4210M 2.6GHz', 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `shop_category`
--

CREATE TABLE `shop_category` (
  `CategoryID` int(11) NOT NULL,
  `ParentID` varchar(50) NOT NULL,
  `CategoryName` varchar(50) NOT NULL,
  `CategoryDescription` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_category`
--

INSERT INTO `shop_category` (`CategoryID`, `ParentID`, `CategoryName`, `CategoryDescription`) VALUES
(1, 'p1', 'Garments', 'Garements category contains the items of  mens and womens garments and undergarments like pent, shirt etc'),
(2, 'p2', 'Electronics', 'This category contains all kinds of electronic accessories.');

-- --------------------------------------------------------

--
-- Table structure for table `shop_conversation`
--

CREATE TABLE `shop_conversation` (
  `ConversationID` int(11) NOT NULL,
  `Massage` varchar(100) NOT NULL,
  `IP` varchar(50) NOT NULL,
  `DateAndTime` date NOT NULL,
  `CustomerID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_conversation_reply`
--

CREATE TABLE `shop_conversation_reply` (
  `ConversationReplyID` int(11) NOT NULL,
  `ConversationReply` varchar(50) NOT NULL,
  `DateAndTime` date NOT NULL,
  `ConversationID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_customer`
--

CREATE TABLE `shop_customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerFirstName` varchar(50) NOT NULL,
  `CustomerLastName` varchar(50) NOT NULL,
  `CustomerEmailAddress` varchar(50) NOT NULL,
  `CustomerPassword` varchar(18) NOT NULL,
  `CustomerAddress` varchar(50) NOT NULL,
  `CustomerPhone` int(11) NOT NULL,
  `CustomerCity` varchar(50) NOT NULL,
  `CustomerState` varchar(50) NOT NULL,
  `CustomerPostalCode` int(11) NOT NULL,
  `CustomerCountry` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_customer`
--

INSERT INTO `shop_customer` (`CustomerID`, `CustomerFirstName`, `CustomerLastName`, `CustomerEmailAddress`, `CustomerPassword`, `CustomerAddress`, `CustomerPhone`, `CustomerCity`, `CustomerState`, `CustomerPostalCode`, `CustomerCountry`) VALUES
(1, 'sheri', 'khan', 'ravishankar.malhi1@gmail.com', 'ravidada', 'Punjab Colony', 434030690, 'karachi', 'sindh', 3306, 'Pakistan');

-- --------------------------------------------------------

--
-- Table structure for table `shop_delivery_boy`
--

CREATE TABLE `shop_delivery_boy` (
  `DeliveryBoyID` int(11) NOT NULL,
  `DeliveryBoyFirstName` varchar(50) NOT NULL,
  `DeliveryBoyLastName` varchar(50) NOT NULL,
  `DeliveryBoyPassword` varchar(16) NOT NULL,
  `DeliveryBoyAddress` varchar(150) NOT NULL,
  `DeliveryBoyPhone` int(11) NOT NULL,
  `DeliveryBoyShift` varchar(50) NOT NULL,
  `DeliveryBoySalary` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_order`
--

CREATE TABLE `shop_order` (
  `OrderID` int(11) NOT NULL,
  `OrderDate` date NOT NULL,
  `OrderStatus` varchar(50) NOT NULL,
  `OrderComment` varchar(150) NOT NULL,
  `CustomerID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_order_details`
--

CREATE TABLE `shop_order_details` (
  `OrderDetailID` int(11) NOT NULL,
  `OrderNum` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `UnitPrice` int(11) NOT NULL,
  `Discount` int(11) NOT NULL,
  `DeliveryDate` date NOT NULL,
  `CartID_id` int(11) NOT NULL,
  `OrderID_id` int(11) NOT NULL,
  `ProductID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_payment`
--

CREATE TABLE `shop_payment` (
  `PaymentID` int(11) NOT NULL,
  `CartID` int(11) NOT NULL,
  `PaymentDate` date NOT NULL,
  `AmountReceived` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_product`
--

CREATE TABLE `shop_product` (
  `ProductID` int(11) NOT NULL,
  `ProductName` varchar(60) NOT NULL,
  `ProductDescription` varchar(150) NOT NULL,
  `ProductMinPrice` int(11) NOT NULL,
  `ProductMaxPrice` int(11) DEFAULT NULL,
  `Product_image` varchar(100) NOT NULL,
  `SupplierID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_product`
--

INSERT INTO `shop_product` (`ProductID`, `ProductName`, `ProductDescription`, `ProductMinPrice`, `ProductMaxPrice`, `Product_image`, `SupplierID_id`) VALUES
(1, 'Jeans', 'Branded Jeans by Levis', 5000, 1000, 'jeans.jpg', 1),
(2, 'Wrist Watch', 'wrist watch by rolex original ', 7500, 8000, 'watch.jpg', 1),
(3, 'Dell Latitude e6530', 'Dell brand new laptop.', 75000, 80000, 'laptop.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shop_shopping_cart`
--

CREATE TABLE `shop_shopping_cart` (
  `ShoppingCartID` int(11) NOT NULL,
  `TotalPrice` int(11) NOT NULL,
  `CustomerID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shop_sub_category_attributes`
--

CREATE TABLE `shop_sub_category_attributes` (
  `AttributeID` int(11) NOT NULL,
  `AttributeName` varchar(50) NOT NULL,
  `SubCategoryID_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_sub_category_attributes`
--

INSERT INTO `shop_sub_category_attributes` (`AttributeID`, `AttributeName`, `SubCategoryID_id`) VALUES
(1, 'Height', 1),
(2, 'West', 1),
(3, 'Color', 1),
(4, 'Brand', 1),
(5, 'Watch Color', 2),
(6, 'Brand', 2),
(7, 'Warranty', 2),
(8, 'Ram', 2),
(9, 'Hard Drive', 2),
(10, 'Pocessor', 2),
(11, 'OS Type', 2);

-- --------------------------------------------------------

--
-- Table structure for table `shop_supplier`
--

CREATE TABLE `shop_supplier` (
  `SupplierID` int(11) NOT NULL,
  `SupplierFirstName` varchar(50) NOT NULL,
  `SupplierLastName` varchar(50) NOT NULL,
  `SupplierAddress` varchar(150) NOT NULL,
  `SupplierPhone` int(11) NOT NULL,
  `SupplierCompanyName` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shop_supplier`
--

INSERT INTO `shop_supplier` (`SupplierID`, `SupplierFirstName`, `SupplierLastName`, `SupplierAddress`, `SupplierPhone`, `SupplierCompanyName`) VALUES
(1, 'Ravi ', 'Shankar', 'Punjab Chowrangi ', 336248360, 'Fool making company');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `shop_admin`
--
ALTER TABLE `shop_admin`
  ADD PRIMARY KEY (`AdminID`);

--
-- Indexes for table `shop_attributes_data`
--
ALTER TABLE `shop_attributes_data`
  ADD PRIMARY KEY (`AttributeDataID`),
  ADD KEY `Shop_attributes_data_AttributeID_id_3f02f318_fk_Shop_sub_` (`AttributeID_id`),
  ADD KEY `Shop_attributes_data_ProductID_id_bb2ef8d3_fk_Shop_prod` (`ProductID_id`);

--
-- Indexes for table `shop_category`
--
ALTER TABLE `shop_category`
  ADD PRIMARY KEY (`CategoryID`);

--
-- Indexes for table `shop_conversation`
--
ALTER TABLE `shop_conversation`
  ADD PRIMARY KEY (`ConversationID`),
  ADD KEY `Shop_conversation_CustomerID_id_628dd035_fk_Shop_cust` (`CustomerID_id`);

--
-- Indexes for table `shop_conversation_reply`
--
ALTER TABLE `shop_conversation_reply`
  ADD PRIMARY KEY (`ConversationReplyID`),
  ADD KEY `Shop_conversation_re_ConversationID_id_c97cf303_fk_Shop_conv` (`ConversationID_id`);

--
-- Indexes for table `shop_customer`
--
ALTER TABLE `shop_customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `shop_delivery_boy`
--
ALTER TABLE `shop_delivery_boy`
  ADD PRIMARY KEY (`DeliveryBoyID`);

--
-- Indexes for table `shop_order`
--
ALTER TABLE `shop_order`
  ADD PRIMARY KEY (`OrderID`),
  ADD KEY `Shop_order_CustomerID_id_cddb1a95_fk_Shop_customer_CustomerID` (`CustomerID_id`);

--
-- Indexes for table `shop_order_details`
--
ALTER TABLE `shop_order_details`
  ADD PRIMARY KEY (`OrderDetailID`),
  ADD KEY `Shop_order_details_CartID_id_08e073bd_fk_Shop_shop` (`CartID_id`),
  ADD KEY `Shop_order_details_OrderID_id_e4bcfb72_fk_Shop_order_OrderID` (`OrderID_id`),
  ADD KEY `Shop_order_details_ProductID_id_75c6f6e8_fk_Shop_prod` (`ProductID_id`);

--
-- Indexes for table `shop_payment`
--
ALTER TABLE `shop_payment`
  ADD PRIMARY KEY (`PaymentID`);

--
-- Indexes for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `Shop_product_SupplierID_id_b01d8e1b_fk_Shop_supplier_SupplierID` (`SupplierID_id`);

--
-- Indexes for table `shop_shopping_cart`
--
ALTER TABLE `shop_shopping_cart`
  ADD PRIMARY KEY (`ShoppingCartID`),
  ADD KEY `Shop_shopping_cart_CustomerID_id_f41064a6_fk_Shop_cust` (`CustomerID_id`);

--
-- Indexes for table `shop_sub_category_attributes`
--
ALTER TABLE `shop_sub_category_attributes`
  ADD PRIMARY KEY (`AttributeID`),
  ADD KEY `Shop_sub_category_at_SubCategoryID_id_f34b58c4_fk_Shop_cate` (`SubCategoryID_id`);

--
-- Indexes for table `shop_supplier`
--
ALTER TABLE `shop_supplier`
  ADD PRIMARY KEY (`SupplierID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `shop_admin`
--
ALTER TABLE `shop_admin`
  MODIFY `AdminID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_attributes_data`
--
ALTER TABLE `shop_attributes_data`
  MODIFY `AttributeDataID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shop_category`
--
ALTER TABLE `shop_category`
  MODIFY `CategoryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shop_conversation`
--
ALTER TABLE `shop_conversation`
  MODIFY `ConversationID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_conversation_reply`
--
ALTER TABLE `shop_conversation_reply`
  MODIFY `ConversationReplyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_customer`
--
ALTER TABLE `shop_customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shop_delivery_boy`
--
ALTER TABLE `shop_delivery_boy`
  MODIFY `DeliveryBoyID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_order`
--
ALTER TABLE `shop_order`
  MODIFY `OrderID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_order_details`
--
ALTER TABLE `shop_order_details`
  MODIFY `OrderDetailID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_payment`
--
ALTER TABLE `shop_payment`
  MODIFY `PaymentID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_product`
--
ALTER TABLE `shop_product`
  MODIFY `ProductID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `shop_shopping_cart`
--
ALTER TABLE `shop_shopping_cart`
  MODIFY `ShoppingCartID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shop_sub_category_attributes`
--
ALTER TABLE `shop_sub_category_attributes`
  MODIFY `AttributeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `shop_supplier`
--
ALTER TABLE `shop_supplier`
  MODIFY `SupplierID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `shop_attributes_data`
--
ALTER TABLE `shop_attributes_data`
  ADD CONSTRAINT `Shop_attributes_data_AttributeID_id_3f02f318_fk_Shop_sub_` FOREIGN KEY (`AttributeID_id`) REFERENCES `shop_sub_category_attributes` (`AttributeID`),
  ADD CONSTRAINT `Shop_attributes_data_ProductID_id_bb2ef8d3_fk_Shop_prod` FOREIGN KEY (`ProductID_id`) REFERENCES `shop_product` (`ProductID`);

--
-- Constraints for table `shop_conversation`
--
ALTER TABLE `shop_conversation`
  ADD CONSTRAINT `Shop_conversation_CustomerID_id_628dd035_fk_Shop_cust` FOREIGN KEY (`CustomerID_id`) REFERENCES `shop_customer` (`CustomerID`);

--
-- Constraints for table `shop_conversation_reply`
--
ALTER TABLE `shop_conversation_reply`
  ADD CONSTRAINT `Shop_conversation_re_ConversationID_id_c97cf303_fk_Shop_conv` FOREIGN KEY (`ConversationID_id`) REFERENCES `shop_conversation` (`ConversationID`);

--
-- Constraints for table `shop_order`
--
ALTER TABLE `shop_order`
  ADD CONSTRAINT `Shop_order_CustomerID_id_cddb1a95_fk_Shop_customer_CustomerID` FOREIGN KEY (`CustomerID_id`) REFERENCES `shop_customer` (`CustomerID`);

--
-- Constraints for table `shop_order_details`
--
ALTER TABLE `shop_order_details`
  ADD CONSTRAINT `Shop_order_details_CartID_id_08e073bd_fk_Shop_shop` FOREIGN KEY (`CartID_id`) REFERENCES `shop_shopping_cart` (`ShoppingCartID`),
  ADD CONSTRAINT `Shop_order_details_OrderID_id_e4bcfb72_fk_Shop_order_OrderID` FOREIGN KEY (`OrderID_id`) REFERENCES `shop_order` (`OrderID`),
  ADD CONSTRAINT `Shop_order_details_ProductID_id_75c6f6e8_fk_Shop_prod` FOREIGN KEY (`ProductID_id`) REFERENCES `shop_product` (`ProductID`);

--
-- Constraints for table `shop_product`
--
ALTER TABLE `shop_product`
  ADD CONSTRAINT `Shop_product_SupplierID_id_b01d8e1b_fk_Shop_supplier_SupplierID` FOREIGN KEY (`SupplierID_id`) REFERENCES `shop_supplier` (`SupplierID`);

--
-- Constraints for table `shop_shopping_cart`
--
ALTER TABLE `shop_shopping_cart`
  ADD CONSTRAINT `Shop_shopping_cart_CustomerID_id_f41064a6_fk_Shop_cust` FOREIGN KEY (`CustomerID_id`) REFERENCES `shop_customer` (`CustomerID`);

--
-- Constraints for table `shop_sub_category_attributes`
--
ALTER TABLE `shop_sub_category_attributes`
  ADD CONSTRAINT `Shop_sub_category_at_SubCategoryID_id_f34b58c4_fk_Shop_cate` FOREIGN KEY (`SubCategoryID_id`) REFERENCES `shop_category` (`CategoryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

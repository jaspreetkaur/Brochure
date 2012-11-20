-- phpMyAdmin SQL Dump
-- version 3.4.10.1deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 20, 2012 at 10:55 AM
-- Server version: 5.5.28
-- PHP Version: 5.3.10-1ubuntu3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `b`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `group_id` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_425ae3c4` (`group_id`),
  KEY `auth_group_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_message`
--

CREATE TABLE IF NOT EXISTS `auth_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `message` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `auth_message_403f60f` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `content_type_id` (`content_type_id`,`codename`),
  KEY `auth_permission_1bb8f392` (`content_type_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add permission', 1, 'add_permission'),
(2, 'Can change permission', 1, 'change_permission'),
(3, 'Can delete permission', 1, 'delete_permission'),
(4, 'Can add group', 2, 'add_group'),
(5, 'Can change group', 2, 'change_group'),
(6, 'Can delete group', 2, 'delete_group'),
(7, 'Can add user', 3, 'add_user'),
(8, 'Can change user', 3, 'change_user'),
(9, 'Can delete user', 3, 'delete_user'),
(10, 'Can add message', 4, 'add_message'),
(11, 'Can change message', 4, 'change_message'),
(12, 'Can delete message', 4, 'delete_message'),
(13, 'Can add content type', 5, 'add_contenttype'),
(14, 'Can change content type', 5, 'change_contenttype'),
(15, 'Can delete content type', 5, 'delete_contenttype'),
(16, 'Can add session', 6, 'add_session'),
(17, 'Can change session', 6, 'change_session'),
(18, 'Can delete session', 6, 'delete_session'),
(19, 'Can add site', 7, 'add_site'),
(20, 'Can change site', 7, 'change_site'),
(21, 'Can delete site', 7, 'delete_site'),
(22, 'Can add organisation', 8, 'add_organisation'),
(23, 'Can change organisation', 8, 'change_organisation'),
(24, 'Can delete organisation', 8, 'delete_organisation'),
(25, 'Can add departments', 9, 'add_departments'),
(26, 'Can change departments', 9, 'change_departments'),
(27, 'Can delete departments', 9, 'delete_departments'),
(28, 'Can add labs', 10, 'add_labs'),
(29, 'Can change labs', 10, 'change_labs'),
(30, 'Can delete labs', 10, 'delete_labs'),
(31, 'Can add tests', 11, 'add_tests'),
(32, 'Can change tests', 11, 'change_tests'),
(33, 'Can delete tests', 11, 'delete_tests'),
(34, 'Can add sub_tests', 12, 'add_sub_tests'),
(35, 'Can change sub_tests', 12, 'change_sub_tests'),
(36, 'Can delete sub_tests', 12, 'delete_sub_tests'),
(37, 'Can add categories', 13, 'add_categories'),
(38, 'Can change categories', 13, 'change_categories'),
(39, 'Can delete categories', 13, 'delete_categories'),
(40, 'Can add team', 14, 'add_team'),
(41, 'Can change team', 14, 'change_team'),
(42, 'Can delete team', 14, 'delete_team'),
(43, 'Can add facilities', 15, 'add_facilities'),
(44, 'Can change facilities', 15, 'change_facilities'),
(45, 'Can delete facilities', 15, 'delete_facilities'),
(46, 'Can add training', 16, 'add_training'),
(47, 'Can change training', 16, 'change_training'),
(48, 'Can delete training', 16, 'delete_training'),
(49, 'Can add certification', 17, 'add_certification'),
(50, 'Can change certification', 17, 'change_certification'),
(51, 'Can delete certification', 17, 'delete_certification'),
(52, 'Can add graduation', 18, 'add_graduation'),
(53, 'Can change graduation', 18, 'change_graduation'),
(54, 'Can delete graduation', 18, 'delete_graduation'),
(55, 'Can add time_period', 19, 'add_time_period'),
(56, 'Can change time_period', 19, 'change_time_period'),
(57, 'Can delete time_period', 19, 'delete_time_period'),
(58, 'Can add courses', 20, 'add_courses'),
(59, 'Can change courses', 20, 'change_courses'),
(60, 'Can delete courses', 20, 'delete_courses');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(128) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `last_login` datetime NOT NULL,
  `date_joined` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`group_id`),
  KEY `auth_user_groups_403f60f` (`user_id`),
  KEY `auth_user_groups_425ae3c4` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_403f60f` (`user_id`),
  KEY `auth_user_user_permissions_1e014c8f` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_label` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `name`, `app_label`, `model`) VALUES
(1, 'permission', 'auth', 'permission'),
(2, 'group', 'auth', 'group'),
(3, 'user', 'auth', 'user'),
(4, 'message', 'auth', 'message'),
(5, 'content type', 'contenttypes', 'contenttype'),
(6, 'session', 'sessions', 'session'),
(7, 'site', 'sites', 'site'),
(8, 'organisation', 'tcc', 'organisation'),
(9, 'departments', 'tcc', 'departments'),
(10, 'labs', 'tcc', 'labs'),
(11, 'tests', 'tcc', 'tests'),
(12, 'sub_tests', 'tcc', 'sub_tests'),
(13, 'categories', 'tcc', 'categories'),
(14, 'team', 'tcc', 'team'),
(15, 'facilities', 'tcc', 'facilities'),
(16, 'training', 'tcc', 'training'),
(17, 'certification', 'tcc', 'certification'),
(18, 'graduation', 'tcc', 'graduation'),
(19, 'time_period', 'tcc', 'time_period'),
(20, 'courses', 'tcc', 'courses');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime NOT NULL,
  PRIMARY KEY (`session_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('87d60e2f7c6626ee229bd408ff233161', 'gAJ9cQFVCnRlc3Rjb29raWVVBndvcmtlZHECcy5hMTIzZWQwZDkyMjEyMmJjYzc0ZWQ2YTM3YTU4\nZWMxNg==\n', '2012-10-07 10:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `django_site`
--

CREATE TABLE IF NOT EXISTS `django_site` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `domain` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `django_site`
--

INSERT INTO `django_site` (`id`, `domain`, `name`) VALUES
(1, 'example.com', 'example.com');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_categories`
--

CREATE TABLE IF NOT EXISTS `tcc_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `name` varchar(300) NOT NULL,
  `code` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_categories_2ae7390` (`department_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tcc_categories`
--

INSERT INTO `tcc_categories` (`id`, `department_id`, `name`, `code`) VALUES
(1, 2, 'Geo-Technical Engg. ', 'T1'),
(2, 2, 'Structural Engg.', 'T2'),
(3, 2, 'Highway Engg.', 'T3'),
(4, 2, 'Material Testing', 'T4'),
(5, 2, 'Survey', 'T5'),
(6, 2, 'Environmental Engg.', 'T6'),
(7, 5, 'Engineering Design  & CAD', 'F1'),
(8, 5, 'Manufacturing & Industrial Engineering', 'F2'),
(9, 5, 'Thermal Engineering', 'F3');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_certification`
--

CREATE TABLE IF NOT EXISTS `tcc_certification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organisation_id` int(11) NOT NULL,
  `status` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_certification_28b1ef86` (`organisation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tcc_certification`
--

INSERT INTO `tcc_certification` (`id`, `organisation_id`, `status`) VALUES
(1, 1, 'An Institute Offering Accredited Courses and supported under the FIST and TEQIP scheme of GOI'),
(2, 1, 'Accredited By National Board of Accreditation (NBA), AICTE, New Delhi]'),
(3, 1, 'ISO 9001-2000 Certified');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_consultancy`
--

CREATE TABLE IF NOT EXISTS `tcc_consultancy` (
  `name` char(100) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `department_id` (`department`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tcc_consultancy`
--

INSERT INTO `tcc_consultancy` (`name`, `department`, `id`) VALUES
('Financial Management', 11, 1),
('Marketing Management', 11, 2),
('Human Resource Management', 11, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tcc_courses`
--

CREATE TABLE IF NOT EXISTS `tcc_courses` (
  `id` int(11) NOT NULL,
  `name` char(100) DEFAULT NULL,
  `pg_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pg_id` (`pg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tcc_courses`
--

INSERT INTO `tcc_courses` (`id`, `name`, `pg_id`) VALUES
(1, 'Structural Engineering (Full Time)', 1),
(2, 'Geotechnical Engineering (Full Time & Part Time)', 1),
(3, 'Environment Engineering (Full Time)', 1),
(4, 'Production Engineering (Full Time & Part Time)', 2),
(5, 'Industrial Engineering (Full Time & Part Time)', 2),
(6, 'Power Engineering (Full Time)', 3),
(7, 'Electrical Engineering (Part Time)', 3),
(8, 'Computer Science & Engg. (Full time & Part Time)', 4),
(9, 'Electronics Engineering (Full time & Part Time)', 5),
(10, 'VLSI Design (Full time & Part Time)', 5),
(11, 'Two Years (Full Time) Master Degree', 6),
(12, 'Two Years (Full Time) Master Degree', 7);

-- --------------------------------------------------------

--
-- Table structure for table `tcc_departments`
--

CREATE TABLE IF NOT EXISTS `tcc_departments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `organisation_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `dean` varchar(50) NOT NULL,
  `faxno` varchar(50) NOT NULL,
  `email_1` varchar(75) NOT NULL,
  `email_2` varchar(75) NOT NULL,
  `url` varchar(50) NOT NULL,
  `about` longtext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_departments_28b1ef86` (`organisation_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tcc_departments`
--

INSERT INTO `tcc_departments` (`id`, `organisation_id`, `name`, `address`, `phone`, `dean`, `faxno`, `email_1`, `email_2`, `url`, `about`) VALUES
(1, 1, 'Testing & Consultancy Cell', 'Gill Road, Ludhiana-141006, India', '', 'Dr. Hardeep SIngh Rai', '0161-2491193', 'deanconsultancy@gndec.ac.in', 'tcc@gndec.ac.in', 'http://gndec.ac.in/tcc/', 'Testing & Consultancy Cell was established in the year 1979 with a basic aim to provide quality service for technical problems at reasonable and affordable rates as a service to society in general and Engineering fraternity in particular. Ours is a pioneer institute providing Consultancy Services in the States of Punjab, Haryana, Himachal, J&K and Rajasthan. Various Major Clients of the Consultancy Cell are as under: \r\n1. Larson & Tubro \r\n2. Multi National Companies like AFCON & PAULINGS,\r\n3. Power Grid Corporation of India \r\n4. National Thermal Power Corporation \r\n5. National Building Construction Co. \r\n6. Northern Railway, Govt. of India \r\n7. Municipal Corporations of Punjab & Chandigarh \r\n8. Military Engineering Services \r\n9. Punjab State Electricity Board \r\n10. Punjab Mandi Board \r\n11. Punjab Police Housing Corporation \r\n12. Punjab Health System Corporation \r\n13. Punjab State PWD (B & R, Public Health and Irrigation) \r\n14. Punjab Water Supply & Sewerage Board \r\n15. Punjab State Education Board, Mohali \r\n16. Hindustan Petroleum Corporation Limited \r\n17. National Fertilizers Ltd. \r\n18. PUNSUP \r\n19. Postal & Telecom Department, Govt. of India  \r\n20. Sonalica Tractors & Cars Ltd, (Punjab & H.P) \r\n21. Big Industrial Houses like Hero Cycles, Oswal Woollen Mills, OCM Woollen Mills, Vardhman Knitting Yarn Mills etc. \r\n22. BBMP, Charkhi Dadri (Haryana) \r\n23. INDIAN Depot Oil AIR FORCE Halwara State\r\n24. I.O. Limited Jalandhar'),
(2, 1, 'Civil Engineering ', '', '', '', '', '', '', '', ''),
(3, 1, 'Electrical Engineering', '', '', '', '', '', '', '', ''),
(4, 1, 'Electronics Engineering', '', '', '', '', '', '', '', ''),
(5, 1, 'Mechanical Engineering & Production Technology', '', '', '', '', '', '', '', ''),
(7, 1, 'Computer Science Engineering & Information Technol', '', '', '', '', '', '', '', ''),
(9, 1, 'Applied Sciences', '', '', '', '', '', '', '', ''),
(10, 1, 'Central Workshop', '', '', '', '', '', '', '', ''),
(11, 1, 'MBA', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_facilities`
--

CREATE TABLE IF NOT EXISTS `tcc_facilities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `code` varchar(300) NOT NULL,
  `name` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_facilities_2ae7390` (`department_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=53 ;

--
-- Dumping data for table `tcc_facilities`
--

INSERT INTO `tcc_facilities` (`id`, `department_id`, `code`, `name`) VALUES
(1, 3, '', 'Design, Development and testing facilities for power electronics gadgets like Inverters, Choppers etc.'),
(2, 3, '', 'Testing & verification of rating for electric motors upto 100 H.P.'),
(3, 3, '', 'esting of Insulators for impulse and power frequency, dry and wet, Flashover and Breakdown voltage.'),
(4, 3, '', 'Testing of Transformer oil at power frequency.'),
(5, 3, '', 'Testing and Calibration of various electrical measuring  instruments.'),
(6, 3, '', 'Detection & Localization of Underground Cable faults.'),
(7, 3, '', 'Determination of Earth Resistivity & Earth Resistance.'),
(8, 3, '', ' Electrical Energy Auditing of Industrial & Commercial Houses. '),
(9, 3, '', 'Design of Modern Lighting System for industrial & commercial houses. '),
(10, 3, '', 'Design and implementation of digital controllers for  process industry.'),
(11, 3, '', 'Installation & layout Design for subslations upto 66 K.V.'),
(12, 4, '', 'Projects based on installation, interfacing, programming and testing on Micro controllers, Microprocessors, and PLCs. '),
(13, 4, '', 'Industrial Electronics Based Application and trouble shooting '),
(14, 4, '', 'Fuzzy Logic Based control systems '),
(15, 4, '', 'PCB Design and Development. '),
(16, 4, '', 'Projects on Antenna (Simulation & Design) '),
(17, 5, 'F1', 'Design verification/validation of stuctural design of Multiaxle trailers, cranes and other mechanical components. '),
(18, 5, 'F1', 'Product conceptualization & 3-D Modeling of Industrial components, computer aided drawing generation through reverse Engineering. '),
(19, 5, 'F1', 'Design of press tools, moulds and dies for casting & plastic injection dies. '),
(20, 5, 'F1', 'Design of Mechanisms. '),
(21, 5, 'F1', 'Design & Testing of Hoists, Lifts, Lifting mechanisms & safely provision etc. '),
(22, 5, 'F1', 'Pressure Gauge & Pipe Testing '),
(23, 5, 'F2', 'Optimisation of Industrial/Manufacturing processes. '),
(24, 5, 'F2', 'Operation Management (inventory Management & Control, Material Management & Line Balancing etc.) '),
(25, 5, 'F2', 'Supply Chain Management & Waste Minimisation'),
(26, 5, 'F2', 'Metallurgical & Micro structural analysis'),
(27, 5, 'F2', ' Capacity Utilization '),
(28, 5, 'F3', 'Refrigeration & Air Conditioning system design. '),
(29, 5, 'F3', 'Fuel Testing & Combustion characterstics of different fuels. '),
(30, 5, 'F3', 'Energy Management & Auditing. '),
(31, 5, 'F3', 'Performance Testing of Centrifugal Pumps, Submercible Pump. '),
(32, 5, 'F3', 'Engine performance testing. '),
(33, 5, 'F3', 'Thermal properties testing of different material. '),
(34, 7, '', 'Networking-installation and Maintenance'),
(35, 7, '', 'Hardware fault Diagnosis & Testing '),
(36, 7, '', 'Installation & Configuration of Servers '),
(37, 7, '', 'Desktop publishing (DTP) '),
(38, 7, '', 'Computerized layout plan '),
(39, 7, '', 'Software packages development for Automation'),
(40, 9, '', ' Chemical Analysis of Cement (Silica, Calcium oxide, Magnesium oxide, Iron oxide, Chromium oxide, Loss on ignition, Insoluble residue) '),
(41, 9, '', 'Cheimical Analysis of Cement Mortar (Ratio of cement and sand)'),
(42, 9, '', 'Chemical Analysis of Cement Concrete (Ratio of cement, sang, aggregate)'),
(43, 9, '', 'Test of Water (Chlorides, sulphates, pH value dissolved  solids, hardness, alkalinity) '),
(44, 9, '', 'Chemical Analysis of Soil/Sand (Chorides,  sulphates, Calcium carbonate) '),
(45, 9, '', 'Chemical Analysis of Coarse/Fine  Aggregates (Sodium and magnesium sulphate, clay lumps, fine material, deleterious materials) '),
(46, 9, '', 'Chemical Analysis of Boiler water '),
(47, 9, '', 'Flash Point of Fuels  '),
(48, 9, '', 'Penetration Number of Lubricant '),
(49, 10, '', 'Material handling'),
(50, 10, '', 'Machines Maintenance (Lathe & Milling)'),
(51, 10, '', 'Faults Finding in Electric Motors '),
(52, 10, '', 'Consultancy of Welding of Odd Job. ');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_gcourses`
--

CREATE TABLE IF NOT EXISTS `tcc_gcourses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tcc_gcourses`
--

INSERT INTO `tcc_gcourses` (`id`, `name`) VALUES
(1, 'Civil Engineering '),
(2, 'Mechanical Engineering'),
(3, 'Electrical Engineering'),
(4, 'Electronics & Communication Engineering'),
(5, 'Computer Science Engineering'),
(6, 'Information Technology'),
(7, 'Production Engineering');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_labs`
--

CREATE TABLE IF NOT EXISTS `tcc_labs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `lab` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_labs_2ae7390` (`department_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data for table `tcc_labs`
--

INSERT INTO `tcc_labs` (`id`, `department_id`, `lab`) VALUES
(1, 2, 'Geo-technical Lab'),
(2, 2, 'Transportation Engineering Lab'),
(3, 2, 'Material Testing Lab'),
(4, 2, 'Survey Lab'),
(5, 2, 'Environmental Lab'),
(6, 2, 'Engineering Design'),
(7, 2, 'Other Services'),
(8, 3, 'Electrical Machines '),
(9, 3, 'High Voltage'),
(10, 3, 'Power Electronics and Microprocessors '),
(11, 3, 'Electrical Measurement '),
(12, 3, 'PowerSystems and Control'),
(13, 3, 'Basic Electrical Engg.'),
(14, 3, 'Computer'),
(15, 3, 'Applied Electronics'),
(16, 4, 'Communication and T.V.'),
(17, 4, 'Micro-wave'),
(18, 4, 'Digital Electronics and Project'),
(19, 4, 'Electronics Design and Automation Lab'),
(20, 4, 'Microprocessor and Hardware'),
(21, 4, 'Fiber optics & Multimedia'),
(22, 5, 'Heat Engines & Thermal Sciences'),
(23, 5, 'Metrology & Mechanical Measurements'),
(24, 5, 'Heat Transfer '),
(25, 5, 'Hydraulic Machines'),
(26, 5, 'Machine Tools '),
(27, 5, 'Metal Forming '),
(28, 5, 'CAM and Automation '),
(29, 5, 'Dynamics of Machines '),
(30, 5, 'Metallurgy and Heat Treatment'),
(31, 5, 'Computer Aided Design (CAD)'),
(32, 7, 'Operating System Lab-I'),
(33, 7, 'Operating System Lab-II'),
(34, 7, 'Project lab-I'),
(35, 7, 'Project lab-II'),
(36, 7, 'Hardware - Lab'),
(37, 7, 'Software Lab-I'),
(38, 7, 'Software Lab-II'),
(39, 7, 'Web Development Lab'),
(40, 7, 'DBMS Lab'),
(41, 7, 'Computer Network Lab'),
(42, 7, 'Research Lab'),
(43, 9, 'Applied Chemistry Lab'),
(44, 10, 'Machine Shop'),
(45, 10, 'Fitting Shop'),
(46, 10, 'Electric Shop'),
(47, 10, 'Carpentry Shop'),
(48, 10, 'Foundry Shop'),
(49, 10, 'Blacksmithy Shop'),
(50, 10, 'Welding Shop'),
(51, 10, 'Sheet Metal and Plumbing Shop');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_organisation`
--

CREATE TABLE IF NOT EXISTS `tcc_organisation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(50) NOT NULL,
  `director` varchar(50) NOT NULL,
  `logo_upload` varchar(100) NOT NULL,
  `email_1` varchar(75) NOT NULL,
  `email_2` varchar(75) NOT NULL,
  `website` varchar(50) NOT NULL,
  `history` longtext NOT NULL,
  `prefix_table` char(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tcc_organisation`
--

INSERT INTO `tcc_organisation` (`id`, `name`, `address`, `phone`, `fax`, `director`, `logo_upload`, `email_1`, `email_2`, `website`, `history`, `prefix_table`, `title`) VALUES
(1, 'Guru Nanak Dev Engineering College', 'Gill Park, Ludhiana', '', '', '', '', '', '', 'http://gndec.ac.in', 'Guru Nanak Dev Engineering College was established by the Nankana Sahib Education Trust (NSET) Ludhiana. The Nankana Sahib Education was founded in memory of the most sacred temple of Sri Nankana Sahib, birth palace of Sri Gurur Nanak Dev Ji. Shiromani Gururdwara Parbandhak Committee, Amritsar, a premier organisation of Univarsal Brotherhood, was the main force behind the mission of "Removal of Economic Backwardness through Technology". With this mission, a Polytecnhic was started in 1953 and Guru Nanak Dev Engineering College was established in 1956. Nankana Sahib Education Trust resolved to uplift the vast weaker section of Indian polity comprising of Rural India by admitting 70$%$ students every year from rural areas. This commitment was made to nation on 8th April, 1956, the day foundation stone of the College building was laid by Dr. Rajendra Prasad Ji, the first president of India. Nearly 10,000 Graduate and 2000 Post-Graduate Engineers have passed out from this college during the last 49 years and are successfully employed in India and abroad. This college is now ISO 9001:2000 certified. Five branches of Engineering as listed below are Accredited by National Board of Accreditation, (NBA) AICTE, New Delhi. College is also supported under FIST and TEQIP scheme of Govt. of India and is a QIP centre of PhD research.\r\n  ', 'tcc_', 'Information Brochure');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_pgcourses`
--

CREATE TABLE IF NOT EXISTS `tcc_pgcourses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tcc_pgcourses`
--

INSERT INTO `tcc_pgcourses` (`id`, `name`) VALUES
(1, 'Civil Engineering Deptt.'),
(2, 'Mechanical Engineering Deptt.'),
(3, 'Electrical Engineering Deptt.'),
(4, 'Computer Science Engg.'),
(5, 'Electronics Engineering Deptt.'),
(6, 'MBA'),
(7, 'MCA');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_sub_tests`
--

CREATE TABLE IF NOT EXISTS `tcc_sub_tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_sub_tests_57721724` (`test_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tcc_sub_tests`
--

INSERT INTO `tcc_sub_tests` (`id`, `test_id`, `name`) VALUES
(1, 1, 'Plate Load Test'),
(2, 1, 'Standard Penetration'),
(3, 28, 'Ultra Sonic Technique'),
(4, 28, 'Rebound Hammer Technique');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_team`
--

CREATE TABLE IF NOT EXISTS `tcc_team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `code` varchar(300) NOT NULL,
  `name` varchar(300) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_team_2ae7390` (`department_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Dumping data for table `tcc_team`
--

INSERT INTO `tcc_team` (`id`, `department_id`, `code`, `name`) VALUES
(19, 2, 'T1', 'Dr. J.N.Jha, Ph.D. '),
(20, 2, 'T1', 'Er. Harjinder Singh, M.E. '),
(21, 2, 'T1', 'Er. Kulbir Singh Gill, M.E. '),
(22, 2, 'T1', 'Dr. B.S. Walia, Ph.D '),
(23, 2, 'T1', 'Er. Gurdeepak Singh, M.Tech. '),
(24, 2, 'T2', 'Dr. Hardeep Singh Rai, Ph.D.'),
(25, 2, 'T2', 'Dr. Harpal Singh, Ph.D.'),
(26, 2, 'T2', 'Dr. Harvinder Singh, Ph.D'),
(27, 2, 'T2', 'Er. Prashant Garg, M.E.'),
(28, 2, 'T3', 'Er. Kulbir Singh Gill, M.E.'),
(29, 2, 'T3', 'Er. Prashant Garg, M.E.'),
(30, 2, 'T4', 'Er. Kanwarjit Singh Bedi, M.Tech. '),
(31, 2, 'T4', 'Dr. Jagbir Singh, Ph.D '),
(32, 2, 'T5', 'Dr. B.S. Walia, M.E.'),
(33, 2, 'T5', 'Er. Kanwarjit Singh Bedi, M.Tech. '),
(34, 2, 'T6', 'Dr. R.P. Singh, Ph. D. '),
(35, 2, 'T6', 'Er. Puneetpal Singh Cheema, M.E.'),
(36, 3, '', 'Er. Jaswinder Singh, M.E.'),
(37, 3, '', 'Er. Khushdeep Singh, M.E.'),
(38, 3, '', 'Er. Rupinderjit Singh, B.E.'),
(39, 3, '', 'Er. Preetinder Singh, B.E. '),
(40, 3, '', 'Er. Kanwardeep Singh, M.Tech. '),
(41, 3, '', 'Er. Gagandeep Singh Sodhi, M.Tech.'),
(42, 3, '', 'Er. Navneet Singh Bhangoo, M.Tech.'),
(43, 4, '', 'Er. Nirmal Singh Grewal M.Tech.'),
(44, 4, '', 'Er. Ameeta Seehra, M.Tech.'),
(45, 4, '', 'Dr. S.S. Gill, Ph.D.'),
(46, 4, '', 'Er. Narwant Singh, M.Tech.'),
(47, 4, '', 'Er. B.S. Dhaliwal, M.Tech.'),
(48, 4, '', 'Dr. Munish Rattan, Ph.D. '),
(49, 4, '', 'Er. Baljeet Kaur '),
(50, 5, '', 'Dr. Sehijpal Singh, Ph.D .'),
(51, 5, '', 'Dr. Paramjit Singh, Ph.D.'),
(52, 5, '', 'Dr. Harwinder Singh, Ph.D.'),
(53, 5, '', 'Dr. Rupinder Singh, Ph.D.'),
(54, 5, '', 'Er. Jatinder Kapoor, M.Tech.'),
(55, 5, '', 'Er. Ravi-Inder Singh, M.Tech. '),
(56, 5, '', 'Er. Prem Singh, M.Tech. '),
(57, 5, '', 'Er. G.S. Brar, Ph.D.'),
(58, 7, '', 'Er. Akshay Girdhar, M.Tech. (IT)'),
(59, 7, '', 'Er. Amanpreet Singh Brar, M.Tech. (CSE)'),
(60, 7, '', 'Er. Parminder Singh, M.Tech. (CSE)'),
(61, 7, '', 'Er. Jasbir Singh Saini, M.Tech. (IT)'),
(62, 7, '', 'Er. Kulwinder Singh Mann, M.Tech. (IT)'),
(63, 7, '', 'Er. Manpreet Singh, M.Tech. (CSE)'),
(64, 7, '', 'Er. Kiran Jyoti, M.Tech. (CSE)'),
(65, 7, '', 'Er. Amandeep Kaur Sohal. M.Tech. (CSE)'),
(66, 7, '', 'Er. Raninder Kaur, MS (S/W Systems)'),
(67, 7, '', 'Er. Sumeet Kaur, M.Tech. (CSE)'),
(68, 7, '', 'Er. Amit Kamra, M.Tech. (IT)'),
(69, 7, '', 'Er. Vivek Thapar, M.Tech. (IT)'),
(70, 7, '', 'Er. Sukhjit Singh, M.Tech. (CSE)'),
(71, 7, '', 'Er. Pankaj Bhambri M.Tech. (CSE)'),
(72, 7, '', 'Er. Kamaljit Kaur Dhillon M.Tech. (CSE)'),
(73, 7, '', 'Parminder Kaur Wadhwa M.Tech (CSE)'),
(74, 9, '', 'Dr. R.P. Singh, Ph. D.'),
(75, 9, '', 'Er. Punit pal Singh Cheema, M.Tech'),
(76, 10, '', 'Er. Jasmaninder Singh Grewal M.E.'),
(77, 10, '', 'Er. Ranjit Singh'),
(78, 11, '', 'Dr. Sukhdev Singh, MBA, M.Com, DPMIR, Ph.d'),
(79, 11, '', 'Prof. Parampal Singh, M.Sc., MBA '),
(80, 11, '', 'Amanjot K. Gill, MCBA '),
(81, 11, '', 'Prof. H.S. Dhall');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_tests`
--

CREATE TABLE IF NOT EXISTS `tcc_tests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lab_id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_tests_4a1410c6` (`lab_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=54 ;

--
-- Dumping data for table `tcc_tests`
--

INSERT INTO `tcc_tests` (`id`, `lab_id`, `name`) VALUES
(1, 1, 'Bearing Capacity of Soil by '),
(2, 1, 'Pile Test'),
(3, 1, 'Chemical Analysis of Soil'),
(4, 1, 'Consolidation Test'),
(5, 1, 'Compaction Test '),
(6, 1, 'Field Density Test '),
(7, 1, 'Relative Density Test'),
(8, 1, 'Computerized Triaxil Shear Testing Machine'),
(9, 1, 'Rapid moisture meter'),
(10, 1, 'Permeability Test'),
(11, 1, 'Particle Size Analysis'),
(12, 1, 'Consistency Limits'),
(13, 1, 'Liquefaction analysis'),
(14, 1, 'Swell Test'),
(15, 2, 'CBR Test - Digital Equipment'),
(16, 2, 'Abrasion Value Test '),
(17, 2, 'Crushing Value Test '),
(18, 2, 'Impact Value Test'),
(19, 2, 'Softening Point Test of Bitumen '),
(20, 2, 'Shape Test '),
(21, 2, 'Ductility Test of Bitumen'),
(22, 2, 'Specifc Gravity Test '),
(23, 2, 'Penetration No. of Bitumen'),
(24, 2, 'Rougho Meter '),
(25, 2, 'Benkleman ''Beam Apparatus'),
(26, 2, 'Marshal stability Test'),
(27, 3, 'Testing of Materials like Cement, Steel, Sand, Aggregates, Concrete Cubes, Flooring Tiles, Pavers, Bricks, Tiles etc.'),
(28, 3, 'Checking Strength of Hardened Concrete by Non-Destructive Test like '),
(29, 3, 'Chemical Analysis of Cement & Concrete'),
(30, 3, 'Flexural Strength of Concrete Beams'),
(31, 3, 'Timber (Water Content & Flexural Strength)'),
(32, 4, 'Preparation of Contour Map with the use of Total Station'),
(33, 4, 'Marking of Alignment of Different Structures'),
(34, 4, 'Survey Plan & Leveling'),
(35, 4, 'Preparation of L Section & X-section'),
(36, 4, 'Preparation of Digital Maps'),
(37, 5, 'Analysis of Water Samples for Drinking, Construction & Boiler'),
(38, 5, 'Analysis of Waste Water'),
(39, 5, 'Treatability Studies for Industial Wastes'),
(40, 5, 'Design & Commissioning of Effluent Treatment Plants'),
(41, 5, 'Preparation of Project Fesibility Reports for ETPs '),
(42, 5, 'Design of Air Pollution Control Devices '),
(43, 5, 'Adequacy reports for Existing/Designed ETPs & APCDs '),
(44, 5, 'Environmental Auditing'),
(45, 5, 'Environmental Impact Assessment '),
(46, 6, 'Structural Design of Reinforced Concrete Structures Like Industrial Structure, Institutional Building, Other Buildings, Residential Building, OHSR & Treatment Plant '),
(47, 6, 'Structural Design of Steel Structures '),
(48, 6, 'Structure Design of Masonry Structures'),
(49, 6, 'Mix Design '),
(50, 6, 'Pavement Design '),
(51, 7, 'Estimation & Costing of Project '),
(52, 7, 'Supervision & Quality Control '),
(53, 7, 'Calibration of different Equipments');

-- --------------------------------------------------------

--
-- Table structure for table `tcc_training`
--

CREATE TABLE IF NOT EXISTS `tcc_training` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `department_id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tcc_training_2ae7390` (`department_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=26 ;

--
-- Dumping data for table `tcc_training`
--

INSERT INTO `tcc_training` (`id`, `department_id`, `name`) VALUES
(1, 4, 'VLSI Design '),
(2, 4, 'Programming and Hardware Implementation using VHDL '),
(3, 4, 'Electronic circuit design and analysis using ORCAD/PSPICE '),
(4, 4, 'Training module on Fiber optics '),
(5, 4, 'Training module on Digital Signal processing '),
(6, 4, 'Training module on Wireless communication systems'),
(7, 4, 'Training module on MAT LAB'),
(8, 5, 'Training Module on Product Design, 3D Modeling & CAD, Lean & Supply Chain Management, Six-Sigma, Thermal System design & optimisation,  Non-Traditional  Manufacturing, Maintenance & Reliability.'),
(9, 7, 'Training Module on Python/PHP'),
(10, 7, 'Training Module on Oracle/SQL '),
(11, 7, 'Training Module on Java '),
(12, 7, 'Training Module on C++, C '),
(13, 7, 'Training Module on Networking '),
(14, 7, 'Training Module on Hardware '),
(15, 10, 'Fault Finding and Repair of Domestic Appliances'),
(16, 10, 'Material Metrology and Engineering inspection '),
(17, 10, 'Carpenter '),
(18, 10, 'Pattern Making '),
(19, 10, 'Motor Winding'),
(20, 10, 'Welder '),
(21, 10, 'Machinist'),
(22, 10, 'Turner '),
(23, 10, 'Fitter'),
(24, 10, 'Moldel'),
(25, 10, 'Fabrication ');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `group_id_refs_id_3cea63fe` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `permission_id_refs_id_5886d21f` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_message`
--
ALTER TABLE `auth_message`
  ADD CONSTRAINT `user_id_refs_id_650f49a6` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `content_type_id_refs_id_728de91f` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `group_id_refs_id_f116770` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `user_id_refs_id_7ceef80f` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `permission_id_refs_id_67e79cb` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `user_id_refs_id_dfbab7d` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `tcc_categories`
--
ALTER TABLE `tcc_categories`
  ADD CONSTRAINT `department_id_refs_id_6d2eadf3` FOREIGN KEY (`department_id`) REFERENCES `tcc_departments` (`id`);

--
-- Constraints for table `tcc_certification`
--
ALTER TABLE `tcc_certification`
  ADD CONSTRAINT `organisation_id_refs_id_6f799ae2` FOREIGN KEY (`organisation_id`) REFERENCES `tcc_organisation` (`id`);

--
-- Constraints for table `tcc_consultancy`
--
ALTER TABLE `tcc_consultancy`
  ADD CONSTRAINT `tcc_consultancy_ibfk_1` FOREIGN KEY (`department`) REFERENCES `tcc_departments` (`id`);

--
-- Constraints for table `tcc_courses`
--
ALTER TABLE `tcc_courses`
  ADD CONSTRAINT `tcc_courses_ibfk_1` FOREIGN KEY (`pg_id`) REFERENCES `tcc_pgcourses` (`id`);

--
-- Constraints for table `tcc_departments`
--
ALTER TABLE `tcc_departments`
  ADD CONSTRAINT `organisation_id_refs_id_1d55bed5` FOREIGN KEY (`organisation_id`) REFERENCES `tcc_organisation` (`id`);

--
-- Constraints for table `tcc_facilities`
--
ALTER TABLE `tcc_facilities`
  ADD CONSTRAINT `department_id_refs_id_5d04f06c` FOREIGN KEY (`department_id`) REFERENCES `tcc_departments` (`id`);

--
-- Constraints for table `tcc_labs`
--
ALTER TABLE `tcc_labs`
  ADD CONSTRAINT `department_id_refs_id_9b5571d` FOREIGN KEY (`department_id`) REFERENCES `tcc_departments` (`id`);

--
-- Constraints for table `tcc_sub_tests`
--
ALTER TABLE `tcc_sub_tests`
  ADD CONSTRAINT `test_id_refs_id_316153ee` FOREIGN KEY (`test_id`) REFERENCES `tcc_tests` (`id`);

--
-- Constraints for table `tcc_team`
--
ALTER TABLE `tcc_team`
  ADD CONSTRAINT `department_id_refs_id_33edb5a2` FOREIGN KEY (`department_id`) REFERENCES `tcc_departments` (`id`);

--
-- Constraints for table `tcc_tests`
--
ALTER TABLE `tcc_tests`
  ADD CONSTRAINT `lab_id_refs_id_1a79b82f` FOREIGN KEY (`lab_id`) REFERENCES `tcc_labs` (`id`);

--
-- Constraints for table `tcc_training`
--
ALTER TABLE `tcc_training`
  ADD CONSTRAINT `department_id_refs_id_4c0f8285` FOREIGN KEY (`department_id`) REFERENCES `tcc_departments` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

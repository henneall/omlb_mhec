-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2021 at 02:33 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_omlb`
--

-- --------------------------------------------------------

--
-- Table structure for table `attachment_logs`
--

CREATE TABLE IF NOT EXISTS `attachment_logs` (
`attach_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `attach_name` varchar(255) DEFAULT NULL,
  `attach_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
`department_id` int(11) NOT NULL,
  `department_name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`) VALUES
(1, 'O&M'),
(2, 'Maintenance'),
(3, 'Operations'),
(4, 'Trading'),
(5, 'Electrical/EIC'),
(6, 'Fuel Management'),
(7, 'Site Admin'),
(8, 'Warehouse'),
(9, 'PROGEN'),
(10, 'Asset Management');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
`employee_id` int(11) NOT NULL,
  `access` int(11) NOT NULL DEFAULT '0',
  `department_id` int(11) NOT NULL DEFAULT '0',
  `employee_name` varchar(255) DEFAULT NULL,
  `position` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`employee_id`, `access`, `department_id`, `employee_name`, `position`) VALUES
(1, 1, 3, 'Moncada, April Kaye ', '-'),
(2, 1, 3, 'Pangan, Alver ', '-'),
(3, 1, 3, 'Corteza, Jubert ', '-'),
(4, 1, 3, 'Olaguer, Raian Olaguer', '-');

-- --------------------------------------------------------

--
-- Table structure for table `employee_schedule`
--

CREATE TABLE IF NOT EXISTS `employee_schedule` (
`es_id` int(11) NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `shift_id` int(11) NOT NULL DEFAULT '0',
  `date_from` varchar(20) DEFAULT NULL,
  `date_to` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `log_head`
--

CREATE TABLE IF NOT EXISTS `log_head` (
`log_id` int(11) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `main_system` int(11) NOT NULL,
  `sub_system` int(11) NOT NULL,
  `date_performed` varchar(100) NOT NULL,
  `time_performed` varchar(100) DEFAULT NULL,
  `notes` text,
  `performed_by` text,
  `logged_by` int(11) DEFAULT NULL,
  `logged_date` varchar(255) DEFAULT NULL,
  `due_date` varchar(100) DEFAULT NULL,
  `date_finish` varchar(100) DEFAULT NULL,
  `finished_by` int(11) NOT NULL DEFAULT '0',
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `main_system`
--

CREATE TABLE IF NOT EXISTS `main_system` (
`main_id` int(11) NOT NULL,
  `system_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_system`
--

INSERT INTO `main_system` (`main_id`, `system_name`) VALUES
(1, 'Main Engine'),
(2, 'Electric Generator'),
(3, 'Instrumentation and Control'),
(4, 'Grid Connection'),
(5, 'Ancillary and Auxiliary '),
(6, 'Fuel Management'),
(7, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `shift`
--

CREATE TABLE IF NOT EXISTS `shift` (
`shift_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL DEFAULT '0',
  `shift_name` varchar(100) NOT NULL,
  `shift_time` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shift`
--

INSERT INTO `shift` (`shift_id`, `department_id`, `shift_name`, `shift_time`) VALUES
(1, 3, 'Shift 1', '0700H - 1500H'),
(2, 3, 'Shift 2', '1500H - 2300H'),
(3, 3, 'Shift 3', '2300H - 0700H'),
(4, 3, 'Shift 4', '0800H - 1700H'),
(5, 3, 'Shift 5', '0700H - 1900H'),
(6, 3, 'Shift 6', '1900H - 0700H'),
(7, 2, 'Shift 1', '0700H - 1600H'),
(8, 2, 'Shift 2', '1400H - 2300H'),
(9, 2, 'Shift 3', '2200H - 0700H'),
(10, 2, 'Shift 4', '0800H - 1700H'),
(11, 2, 'Shift 5', '0700H - 1900H'),
(12, 2, 'Shift 6', '1900H - 0700H'),
(13, 5, 'Shift 1', '0700H - 1600H'),
(14, 5, 'Shift 2', '1400H - 2300H'),
(15, 5, 'Shift 3', '2200H - 0700H'),
(16, 5, 'Shift 4', '0800H - 1700H'),
(17, 5, 'Shift 5', '0700H - 1900H'),
(18, 5, 'Shift 6', '1900H - 0700H'),
(19, 7, 'Shift 1', '0700H - 1600H'),
(20, 7, 'Shift 2', '1400H - 2300H'),
(21, 7, 'Shift 3', '2200H - 0700H'),
(22, 7, 'Shift 4', '0800H - 1700H'),
(23, 7, 'Shift 5', '0700H - 1900H'),
(24, 7, 'Shift 6', '1900H - 0700H');

-- --------------------------------------------------------

--
-- Table structure for table `sub_system`
--

CREATE TABLE IF NOT EXISTS `sub_system` (
`sub_id` int(11) NOT NULL,
  `main_id` int(11) NOT NULL,
  `subsys_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=68 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sub_system`
--

INSERT INTO `sub_system` (`sub_id`, `main_id`, `subsys_name`) VALUES
(1, 1, 'Engine Frame'),
(2, 1, 'Crankshaft'),
(3, 1, 'Counter Weight'),
(5, 1, 'MB Shell'),
(6, 1, 'Connecting Rod'),
(7, 1, 'Crank Pin Bearing Shell'),
(8, 1, 'Piston Assembly'),
(9, 1, 'Cylinder Head'),
(10, 1, 'Exhaust Manifold'),
(11, 1, 'Intake Manifold'),
(12, 1, 'Turbo Charger'),
(13, 1, 'Inter Cooler'),
(14, 1, 'UG-40 Governor'),
(15, 1, 'Governor Linkage & Lever'),
(16, 1, 'Fuel  Injection System'),
(17, 1, 'Camshaft Assembly'),
(18, 1, 'Inlet & Exhaust System'),
(19, 2, 'Stator'),
(20, 2, 'Rotor'),
(21, 2, 'Exciter'),
(22, 2, 'Rectifier'),
(23, 2, 'Inboard Bearing'),
(24, 2, 'Outboard Bearing'),
(25, 2, 'NGR'),
(26, 2, 'Grounding'),
(27, 3, 'Engine Controls (Engine)'),
(28, 3, 'Engine Controls (Ctrl Room)'),
(29, 3, 'Metering'),
(30, 3, 'Scada'),
(31, 3, 'Switchgear'),
(32, 4, 'Substation'),
(33, 4, 'Communication'),
(34, 5, 'Cooling System'),
(35, 5, 'Lube oil System'),
(36, 5, 'Fuel System'),
(37, 5, 'Starting & Control Air System'),
(38, 5, 'Super Charge System'),
(39, 5, 'Sludge System'),
(40, 5, 'Purification System'),
(41, 5, 'Heating System'),
(42, 5, 'Filtration System'),
(43, 5, 'Water Supply System'),
(44, 5, 'Intake System'),
(45, 5, 'Exhaust System'),
(46, 5, 'Steam System'),
(47, 5, 'Drainage System'),
(48, 6, 'Tank Farm'),
(49, 7, 'Forklift'),
(50, 7, 'Boom Truck'),
(51, 7, 'Crosswind'),
(52, 7, 'Fire Pump'),
(53, 7, 'Auxiliary Genset'),
(54, 7, 'Laboratory'),
(55, 7, 'Warehouse'),
(56, 7, 'Spare Parts Yard'),
(57, 7, 'Scrap Yards'),
(58, 7, 'Waste Management Disposal Yard'),
(59, 7, 'Guard House'),
(60, 7, 'Safety'),
(61, 7, 'Health'),
(62, 7, 'Environment'),
(63, 7, 'Others'),
(64, 3, 'Protection System'),
(65, 3, 'MCC'),
(66, 3, 'MV Transformer'),
(67, 7, 'Lighting System / Convenience Outlet');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_attachment_logs`
--

CREATE TABLE IF NOT EXISTS `tmp_attachment_logs` (
`attach_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `attach_name` varchar(255) DEFAULT NULL,
  `attach_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tmp_log_head`
--

CREATE TABLE IF NOT EXISTS `tmp_log_head` (
`log_id` int(11) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `main_system` int(11) NOT NULL,
  `sub_system` int(11) NOT NULL,
  `date_performed` varchar(100) DEFAULT NULL,
  `time_performed` varchar(100) DEFAULT NULL,
  `notes` text NOT NULL,
  `performed_by` text NOT NULL,
  `logged_by` int(11) DEFAULT NULL,
  `logged_date` varchar(255) DEFAULT NULL,
  `due_date` varchar(100) DEFAULT NULL,
  `date_finish` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unit`
--

CREATE TABLE IF NOT EXISTS `unit` (
`unit_id` int(11) NOT NULL,
  `unit_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit`
--

INSERT INTO `unit` (`unit_id`, `unit_name`) VALUES
(1, 'DG1'),
(2, 'DG2'),
(3, 'DG3'),
(4, 'DG4'),
(5, 'DG5'),
(6, 'GEN PLANT');

-- --------------------------------------------------------

--
-- Table structure for table `unit_rel`
--

CREATE TABLE IF NOT EXISTS `unit_rel` (
`unitrel_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `main_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `unit_rel`
--

INSERT INTO `unit_rel` (`unitrel_id`, `unit_id`, `main_id`) VALUES
(1, 1, 1),
(6, 1, 2),
(11, 1, 3),
(17, 1, 4),
(23, 1, 5),
(29, 1, 6),
(36, 1, 7),
(2, 2, 1),
(7, 2, 2),
(12, 2, 3),
(18, 2, 4),
(24, 2, 5),
(30, 2, 6),
(37, 2, 7),
(3, 3, 1),
(8, 3, 2),
(13, 3, 3),
(19, 3, 4),
(25, 3, 5),
(31, 3, 6),
(38, 3, 7),
(4, 4, 1),
(9, 4, 2),
(14, 4, 3),
(20, 4, 4),
(26, 4, 5),
(32, 4, 6),
(39, 4, 7),
(5, 5, 1),
(10, 5, 2),
(15, 5, 3),
(21, 5, 4),
(27, 5, 5),
(33, 5, 6),
(40, 5, 7),
(16, 6, 3),
(22, 6, 4),
(28, 6, 5),
(34, 6, 6),
(35, 6, 7);

-- --------------------------------------------------------

--
-- Table structure for table `update_attachment`
--

CREATE TABLE IF NOT EXISTS `update_attachment` (
`upattach_id` int(11) NOT NULL,
  `update_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `attach_name` varchar(100) DEFAULT NULL,
  `attach_file` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `update_logs`
--

CREATE TABLE IF NOT EXISTS `update_logs` (
`update_id` int(11) NOT NULL,
  `log_id` int(11) NOT NULL,
  `date_performed` varchar(255) DEFAULT NULL,
  `time_performed` varchar(255) DEFAULT NULL,
  `notes` text,
  `performed_by` text NOT NULL,
  `logged_date` varchar(255) DEFAULT NULL,
  `logged_by` int(11) NOT NULL,
  `date_finish` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`user_id` int(11) NOT NULL,
  `usertype_id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `fullname` varchar(150) DEFAULT NULL,
  `employee_id` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `usertype_id`, `username`, `password`, `fullname`, `employee_id`) VALUES
(1, 1, 'admin', 'admin', 'Admin', 0),
(32, 2, 'april', 'april', 'Moncada, April Kaye ', 1),
(33, 2, '', '', 'Moncada, April Kaye ', 1),
(34, 2, '', '', 'Moncada, April Kaye ', 1),
(35, 2, 'alver', 'alver', 'Pangan, Alver ', 2),
(36, 2, 'jubert', 'jubert', 'Corteza, Jubert ', 3),
(37, 2, 'raian', 'raian', 'Olaguer, Raian Olaguer', 4);

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE IF NOT EXISTS `usertype` (
`usertype_id` int(11) NOT NULL,
  `usertype_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usertype`
--

INSERT INTO `usertype` (`usertype_id`, `usertype_name`) VALUES
(1, 'admin'),
(2, 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attachment_logs`
--
ALTER TABLE `attachment_logs`
 ADD PRIMARY KEY (`attach_id`), ADD KEY `log_id` (`log_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
 ADD PRIMARY KEY (`employee_id`), ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `employee_schedule`
--
ALTER TABLE `employee_schedule`
 ADD PRIMARY KEY (`es_id`);

--
-- Indexes for table `log_head`
--
ALTER TABLE `log_head`
 ADD PRIMARY KEY (`log_id`), ADD KEY `date_performed` (`date_performed`,`main_system`,`sub_system`,`unit`);

--
-- Indexes for table `main_system`
--
ALTER TABLE `main_system`
 ADD PRIMARY KEY (`main_id`);

--
-- Indexes for table `shift`
--
ALTER TABLE `shift`
 ADD PRIMARY KEY (`shift_id`), ADD KEY `department_id` (`department_id`);

--
-- Indexes for table `sub_system`
--
ALTER TABLE `sub_system`
 ADD PRIMARY KEY (`sub_id`), ADD KEY `main_id` (`main_id`);

--
-- Indexes for table `tmp_attachment_logs`
--
ALTER TABLE `tmp_attachment_logs`
 ADD PRIMARY KEY (`attach_id`), ADD KEY `log_id` (`log_id`);

--
-- Indexes for table `tmp_log_head`
--
ALTER TABLE `tmp_log_head`
 ADD PRIMARY KEY (`log_id`);

--
-- Indexes for table `unit`
--
ALTER TABLE `unit`
 ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `unit_rel`
--
ALTER TABLE `unit_rel`
 ADD PRIMARY KEY (`unitrel_id`), ADD KEY `unit_id` (`unit_id`,`main_id`);

--
-- Indexes for table `update_attachment`
--
ALTER TABLE `update_attachment`
 ADD PRIMARY KEY (`upattach_id`), ADD KEY `update_id` (`update_id`,`log_id`);

--
-- Indexes for table `update_logs`
--
ALTER TABLE `update_logs`
 ADD PRIMARY KEY (`update_id`), ADD KEY `log_id` (`log_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `usertype`
--
ALTER TABLE `usertype`
 ADD PRIMARY KEY (`usertype_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attachment_logs`
--
ALTER TABLE `attachment_logs`
MODIFY `attach_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `employee_schedule`
--
ALTER TABLE `employee_schedule`
MODIFY `es_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `log_head`
--
ALTER TABLE `log_head`
MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `main_system`
--
ALTER TABLE `main_system`
MODIFY `main_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `shift`
--
ALTER TABLE `shift`
MODIFY `shift_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `sub_system`
--
ALTER TABLE `sub_system`
MODIFY `sub_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `tmp_attachment_logs`
--
ALTER TABLE `tmp_attachment_logs`
MODIFY `attach_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tmp_log_head`
--
ALTER TABLE `tmp_log_head`
MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `unit`
--
ALTER TABLE `unit`
MODIFY `unit_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `unit_rel`
--
ALTER TABLE `unit_rel`
MODIFY `unitrel_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `update_attachment`
--
ALTER TABLE `update_attachment`
MODIFY `upattach_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `update_logs`
--
ALTER TABLE `update_logs`
MODIFY `update_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `usertype`
--
ALTER TABLE `usertype`
MODIFY `usertype_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

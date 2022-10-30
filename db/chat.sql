-- phpMyAdmin SQL Dump
-- version 4.4.15.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2022 at 02:22 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent_status`
--

CREATE TABLE IF NOT EXISTS `agent_status` (
  `id` int(20) NOT NULL,
  `date` datetime NOT NULL,
  `agent_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `agent_name` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `last_status_change` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agent_status`
--

INSERT INTO `agent_status` (`id`, `date`, `agent_id`, `agent_name`, `status`, `last_status_change`) VALUES
(55, '2022-10-30 13:31:57', 'Enayet', '', '1', '2022-10-30 13:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `chat_customer`
--

CREATE TABLE IF NOT EXISTS `chat_customer` (
  `id` int(20) NOT NULL,
  `date` datetime NOT NULL,
  `chat_id` varchar(50) NOT NULL,
  `user` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat_customer`
--

INSERT INTO `chat_customer` (`id`, `date`, `chat_id`, `user`, `status`, `message`) VALUES
(128, '2022-10-30 13:43:25', '12', 'System', '', '<span class="left-info">User <b class="user-name-left">Md Sakil Mahmud </b> has left the chat session.</span><br>'),
(126, '2022-10-30 13:35:59', '12', 'Md Sakil Mahmud', '', 'Hi'),
(127, '2022-10-30 13:43:16', '12', 'System', '', '<span class="left-info">Agent <b class="user-name-left">Enayet </b> has end the chat session.</span><br>'),
(125, '2022-10-30 13:34:34', '11', 'System', '', '<span class="left-info">Agent <b class="user-name-left">Enayet </b> has end the chat session.</span><br>'),
(124, '2022-10-30 13:34:20', '11', 'Enayet', '', 'Hi'),
(122, '2022-10-30 13:32:42', '11', 'Enayet', '', 'How can i help you'),
(123, '2022-10-30 13:33:24', '11', 'System', '', '<span class="left-info">User <b class="user-name-left">Dipak Roy </b> has left the chat session.</span><br>'),
(119, '2022-10-30 13:28:48', '11', 'Dipak Roy', '', 'Hi'),
(120, '2022-10-30 13:31:06', '11', 'Dipak Roy', '', 'Hello'),
(121, '2022-10-30 13:32:35', '11', 'Enayet', '', 'Hi');

-- --------------------------------------------------------

--
-- Table structure for table `chat_customer_history`
--

CREATE TABLE IF NOT EXISTS `chat_customer_history` (
  `id` int(20) NOT NULL,
  `date` datetime NOT NULL,
  `chat_id` varchar(50) NOT NULL,
  `user` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chat_customer_notification`
--

CREATE TABLE IF NOT EXISTS `chat_customer_notification` (
  `id` int(20) NOT NULL,
  `date` datetime NOT NULL,
  `chat_id` varchar(50) NOT NULL,
  `user` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `chat_id`
--

CREATE TABLE IF NOT EXISTS `chat_id` (
  `id` int(20) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `cust_phone` varchar(200) NOT NULL,
  `cust_email` varchar(200) NOT NULL,
  `agent_name` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(200) NOT NULL,
  `agent_close` varchar(20) NOT NULL DEFAULT 'NO'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat_id`
--

INSERT INTO `chat_id` (`id`, `customer_id`, `cust_phone`, `cust_email`, `agent_name`, `date`, `status`, `agent_close`) VALUES
(1, 'Dipak Roy', '01740979517', 'dipak.cse.diu@gmail.com', 'testec', '2022-09-07 13:43:43', 'CLOSE', 'YES'),
(2, 'Mehadi', '01645467222', 'mehedi@ihelpbd.com', 'testec', '2022-09-07 15:44:21', 'CLOSE', 'YES'),
(3, 'Dipak Roy', '01740979517', 'dipak.cse.diu@gmail.com', 'ec01', '2022-09-08 17:02:04', 'CLOSE', 'YES'),
(5, 'Tasnif Khan', '01622832013', 'tasnif@ihelpbd.com', 'ec03', '2022-09-10 17:45:01', 'CLOSE', 'YES'),
(4, 'Hasib', '01735573303', 'sobujhasib@gmail.com', 'ec01', '2022-09-08 17:06:59', 'CLOSE', 'YES'),
(6, 'Tasnif Khan', '01748388153', 'tasnif@ihelpbd.com', 'ec03', '2022-09-10 17:59:11', 'CLOSE', 'YES'),
(7, 'Tasnif Khan', '01748388153', 'tasnif@ihelpbd.com', 'test', '2022-09-10 18:02:11', 'CLOSE', 'YES'),
(8, 'Dip', '01622832013', 'tasnif@ihelpbd.com', 'test', '2022-09-10 18:05:11', 'CLOSE', 'YES'),
(9, 'Dipak Roy', '01740979517', 'dipak.cse.diu@gmail.com', 'testec', '2022-10-01 19:04:16', 'CLOSE', 'YES'),
(10, 'Amir', '01645467222', 'mehedi@ihelpbd.com', 'testec', '2022-10-03 20:23:57', 'CLOSE', 'YES'),
(11, 'Dipak Roy', '01740979517', 'dipak.cse.diu@gmail.com', 'Enayet', '2022-10-30 13:28:44', 'CLOSE', 'YES'),
(12, 'Md Sakil Mahmud', '01645467222', 'sakil@ihelpbd.com', 'Enayet', '2022-10-30 13:35:12', 'CLOSE', 'YES');

-- --------------------------------------------------------

--
-- Table structure for table `chat_id_history`
--

CREATE TABLE IF NOT EXISTS `chat_id_history` (
  `id` int(20) NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `agent_name` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(200) NOT NULL,
  `agent_close` varchar(20) NOT NULL DEFAULT 'NO'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE IF NOT EXISTS `customer_info` (
  `id` int(20) NOT NULL,
  `cust_id` varchar(50) NOT NULL,
  `cust_password` varchar(200) NOT NULL,
  `cust_name` varchar(200) NOT NULL,
  `cust_phone` varchar(200) NOT NULL,
  `cust_email` varchar(200) NOT NULL,
  `create_date` datetime NOT NULL,
  `status` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `internal_conversation`
--

CREATE TABLE IF NOT EXISTS `internal_conversation` (
  `id` int(20) NOT NULL,
  `send_by` varchar(50) NOT NULL,
  `received_by` varchar(50) NOT NULL,
  `coversation_sms` text NOT NULL,
  `status` int(10) NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `internal_conversation`
--

INSERT INTO `internal_conversation` (`id`, `send_by`, `received_by`, `coversation_sms`, `status`, `create_time`) VALUES
(1, 'testec', 'ec01', 'Hi', 0, '2022-09-13 17:49:25'),
(2, 'testec', 'ec01', 'Hello', 0, '2022-09-13 17:52:36'),
(3, 'ec01', 'testec', 'Hello', 0, '2022-09-13 17:53:12'),
(4, 'testec', 'ec01', 'Ok', 0, '2022-09-13 18:53:28'),
(5, 'testec', 'ec01', 'Now ok?', 0, '2022-09-13 18:56:32'),
(6, 'testec', 'ec01', 'ok', 0, '2022-09-13 19:10:15'),
(7, 'ec01', 'testec', 'ok', 0, '2022-09-13 19:10:28'),
(8, 'ec01', 'testec', 'ok', 0, '2022-09-13 19:10:36'),
(9, 'ec01', 'testec', 'ok', 0, '2022-09-13 19:15:53'),
(10, 'ec01', 'testec', 'Hello', 0, '2022-09-14 17:00:38'),
(11, 'testec', 'ec01', 'ok', 0, '2022-09-14 17:19:52'),
(12, 'testec', 'ec01', 'Hi', 0, '2022-09-14 17:21:50'),
(13, 'ec01', 'testec', 'hello', 0, '2022-09-14 17:21:55'),
(14, 'testec', 'ec01', 'How are you', 0, '2022-09-14 17:22:02'),
(15, 'ec01', 'testec', 'fine', 0, '2022-09-14 17:22:14'),
(16, 'testec', 'ec01', 'SMS here ', 0, '2022-09-14 17:23:00'),
(17, 'testec', 'ec01', 'demo', 0, '2022-09-14 17:23:02'),
(18, 'testec', 'ec01', 'everything', 0, '2022-09-14 17:23:06'),
(19, 'testec', 'ec01', 'you can', 0, '2022-09-14 17:23:13'),
(20, 'ec01', 'testec', 'tour a jabooooooooooo', 0, '2022-09-14 17:23:38'),
(21, 'ec01', 'testec', 'yahooo', 0, '2022-09-14 17:23:40'),
(22, 'testec', 'ec01', 'Na na', 0, '2022-09-14 17:23:47'),
(23, 'testec', 'ec01', 'Tour cancel', 0, '2022-09-14 17:23:55'),
(24, 'testec', 'ec01', 'hobe na', 0, '2022-09-14 17:23:58'),
(25, 'ec01', 'testec', 'sylhet giya dip k panite chubabo', 0, '2022-09-14 17:24:12'),
(26, 'testec', 'ec01', 'Hoy', 0, '2022-09-14 17:24:22'),
(27, 'testec', 'ec01', 'Khaler panite', 0, '2022-09-14 17:24:36'),
(28, 'ec01', 'testec', 'koi koi jabo amra', 0, '2022-09-14 17:24:39'),
(29, 'ec01', 'testec', 'hoo :D', 0, '2022-09-14 17:24:46'),
(30, 'testec', 'ec01', 'Jaflong jaim', 0, '2022-09-14 17:25:30'),
(31, 'testec', 'ec01', 'Imoji not allowed now', 0, '2022-09-14 17:26:00'),
(32, 'testec', 'ec01', 'Very soon this function will be added.', 0, '2022-09-14 17:26:18'),
(33, 'testec', 'ec01', 'Ok all done', 0, '2022-09-14 19:53:57'),
(34, 'password', 'green', 'hi', 0, '2022-09-17 15:36:23'),
(35, 'testec', 'ec01', 'gghghghg', 0, '2022-09-17 19:53:44'),
(36, 'ec01', 'testec', 'hi kok', 0, '2022-09-17 19:54:36'),
(37, 'ec01', 'testec', 'ok', 0, '2022-09-26 18:20:50'),
(38, 'ec01', 'testec', 'Got it?', 0, '2022-09-26 18:54:13'),
(39, 'ec01', 'testec', 'No ok?', 0, '2022-09-26 18:56:51'),
(40, 'ec01', 'testec', 'Ok o kkjkkjhnmcnv,m', 0, '2022-09-26 18:59:59'),
(41, 'ec01', 'testec', 'my be ok', 0, '2022-09-26 19:03:34'),
(42, 'testec', 'ec01', 'Hi', 0, '2022-09-26 19:26:39'),
(43, 'ec01', 'testec', 'Yes', 0, '2022-09-26 19:26:50'),
(44, 'ec01', 'testec', 'what r u doing', 0, '2022-09-26 19:27:12'),
(45, 'testec', 'ec01', 'Nothing', 0, '2022-09-27 16:30:10'),
(46, 'ec01', 'testec', 'ok', 0, '2022-09-27 16:30:50'),
(47, 'ec01', 'testec', 'Ok ok', 0, '2022-09-27 16:44:27'),
(48, 'ec01', 'testec', 'okokoko', 0, '2022-09-27 16:45:15'),
(49, 'testec', 'ec01', '', 0, '2022-09-27 16:47:04'),
(50, 'testec', 'ec01', 'hlw test msg', 0, '2022-09-27 16:47:20'),
(51, 'ec01', 'testec', 'Hallo', 0, '2022-09-27 17:02:33'),
(52, 'ec01', 'testec', 'Hi', 0, '2022-09-27 17:03:20'),
(53, 'testec', 'ec01', 'Hi', 0, '2022-09-27 17:05:00'),
(54, 'ec01', 'testec', 'hi', 0, '2022-09-27 17:05:31'),
(55, 'testec', 'ec01', 'jfhgkjhkfjg', 0, '2022-10-02 16:37:25'),
(56, 'ec01', 'ec02', 'hi', 0, '2022-10-03 11:52:34'),
(57, 'ec01', 'testec', 'abcd', 0, '2022-10-03 20:35:50'),
(58, 'testec', 'ec01', 'ok', 0, '2022-10-03 20:41:19'),
(59, 'ec01', 'testec', 'Done', 0, '2022-10-03 20:41:37'),
(60, 'ec01', 'test', 'hi', 0, '2022-10-06 12:44:23'),
(61, 'ec01', 'test', 'how are you today?', 0, '2022-10-06 12:44:27'),
(62, 'Enayet', 'Farjana', 'Hi', 0, '2022-10-26 19:36:53'),
(63, 'Farjana', 'Enayet', 'hello', 0, '2022-10-26 19:37:10'),
(64, 'Farjana', 'Enayet', 'how are you?', 0, '2022-10-26 19:37:18'),
(65, 'Enayet', 'Farjana', 'F9', 0, '2022-10-26 19:37:31'),
(66, 'Enayet', 'Farjana', 'ok', 0, '2022-10-26 19:38:51'),
(67, 'Enayet', 'Farjana', 'okokokok', 0, '2022-10-26 19:40:09'),
(68, 'Farjana', 'Enayet', 'hello today', 0, '2022-10-27 15:50:30'),
(69, 'Farjana', 'Enayet', 'hi', 0, '2022-10-29 16:04:48'),
(70, 'Farjana', 'Enayet', 'hello', 0, '2022-10-29 19:03:40'),
(71, 'Farjana', 'Enayet', 'hi, im farzana', 0, '2022-10-29 19:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `internal_conversation_notification`
--

CREATE TABLE IF NOT EXISTS `internal_conversation_notification` (
  `id` int(20) NOT NULL,
  `send_by` varchar(50) NOT NULL,
  `received_by` varchar(50) NOT NULL,
  `coversation_sms` text NOT NULL,
  `status` int(10) NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `internal_conversation_notification`
--

INSERT INTO `internal_conversation_notification` (`id`, `send_by`, `received_by`, `coversation_sms`, `status`, `create_time`) VALUES
(52, 'ec01', 'test', 'how are you today?', 0, '2022-10-06 12:44:27'),
(25, 'password', 'green', 'hi', 0, '2022-09-17 15:36:23'),
(47, 'ec01', 'ec02', 'hi', 0, '2022-10-03 11:52:34'),
(51, 'ec01', 'test', 'hi', 0, '2022-10-06 12:44:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agent_status`
--
ALTER TABLE `agent_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_customer`
--
ALTER TABLE `chat_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_customer_history`
--
ALTER TABLE `chat_customer_history`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `chat_customer_notification`
--
ALTER TABLE `chat_customer_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_id`
--
ALTER TABLE `chat_id`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_id_history`
--
ALTER TABLE `chat_id_history`
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `customer_info`
--
ALTER TABLE `customer_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internal_conversation`
--
ALTER TABLE `internal_conversation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `internal_conversation_notification`
--
ALTER TABLE `internal_conversation_notification`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent_status`
--
ALTER TABLE `agent_status`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `chat_customer`
--
ALTER TABLE `chat_customer`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=129;
--
-- AUTO_INCREMENT for table `chat_customer_notification`
--
ALTER TABLE `chat_customer_notification`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `chat_id`
--
ALTER TABLE `chat_id`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `internal_conversation`
--
ALTER TABLE `internal_conversation`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `internal_conversation_notification`
--
ALTER TABLE `internal_conversation_notification`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=63;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

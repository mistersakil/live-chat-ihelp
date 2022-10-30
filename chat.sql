-- phpMyAdmin SQL Dump
-- version 4.4.15.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 06, 2022 at 12:59 PM
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
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chat_customer`
--

INSERT INTO `chat_customer` (`id`, `date`, `chat_id`, `user`, `status`, `message`) VALUES
(1, '2022-09-07 13:43:51', '1', 'Dipak Roy', '', 'Hallo'),
(2, '2022-09-07 13:44:51', '1', 'testec', '', 'How can i help you'),
(3, '2022-09-07 13:45:06', '1', 'Dipak Roy', '', 'Test'),
(4, '2022-09-07 13:45:13', '1', 'System', '', '<span class="left-info">User <b class="user-name-left">Dipak Roy </b> has left the chat session.</span><br>'),
(5, '2022-09-07 13:45:18', '1', 'System', '', '<span class="left-info">Agent <b class="user-name-left">testec </b> has end the chat session.</span><br>'),
(6, '2022-09-07 15:44:26', '2', 'Mehadi', '', 'Hi'),
(7, '2022-09-07 15:44:41', '2', 'Mehadi', '', 'This is a testing message'),
(8, '2022-09-07 15:45:32', '2', 'testec', '', 'jhghjgjhg'),
(9, '2022-09-07 15:45:40', '2', 'testec', '', 'ok'),
(10, '2022-09-07 15:45:45', '2', 'testec', '', 'thanks'),
(11, '2022-09-07 15:46:09', '2', 'System', '', '<span class="left-info">User <b class="user-name-left">Mehadi </b> has left the chat session.</span><br>'),
(12, '2022-09-07 15:46:19', '2', 'System', '', '<span class="left-info">Agent <b class="user-name-left">testec </b> has end the chat session.</span><br>'),
(13, '2022-09-08 17:00:08', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(14, '2022-09-08 17:00:17', '', '', '', 'hlw'),
(15, '2022-09-08 17:00:20', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(16, '2022-09-08 17:00:23', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(17, '2022-09-08 17:00:27', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(18, '2022-09-08 17:00:32', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(19, '2022-09-08 17:00:34', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(20, '2022-09-08 17:02:08', '3', 'Dipak Roy', '', 'Hallo'),
(21, '2022-09-08 17:05:23', '3', 'ec01', '', 'hi'),
(22, '2022-09-08 17:05:48', 'undefined', 'System', '', '<span class="left-info">Agent <b class="user-name-left">undefined </b> has end the chat session.</span><br>'),
(23, '2022-09-08 17:08:31', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(24, '2022-09-08 17:08:33', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(25, '2022-09-08 17:09:03', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(26, '2022-09-08 17:09:05', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(27, '2022-09-08 17:09:08', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(28, '2022-09-08 17:09:14', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(29, '2022-09-08 17:10:40', '4', 'ec01', '', 'hlw'),
(30, '2022-09-08 17:10:47', '4', 'Hasib', '', 'ki koro vai'),
(31, '2022-09-08 17:10:57', '4', 'ec01', '', 'kisu na kaj kori '),
(32, '2022-09-08 17:11:01', '4', 'Hasib', '', 'oh'),
(33, '2022-09-08 17:11:23', '4', 'System', '', '<span class="left-info">Agent <b class="user-name-left">ec01 </b> has end the chat session.</span><br>'),
(34, '2022-09-08 17:22:23', '3', 'System', '', '<span class="left-info">User <b class="user-name-left">Dipak Roy </b> has left the chat session.</span><br>'),
(35, '2022-09-10 17:45:06', '5', 'Tasnif Khan', '', 'Hello Bhai'),
(36, '2022-09-10 17:54:18', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(37, '2022-09-10 17:54:22', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(38, '2022-09-10 17:54:35', '5', 'System', '', '<span class="left-info">User <b class="user-name-left">Tasnif Khan </b> has left the chat session.</span><br>'),
(39, '2022-09-10 17:54:39', '', 'System', '', '<span class="left-info">User <b class="user-name-left">Tasnif Khan </b> has left the chat session.</span><br>'),
(40, '2022-09-10 17:54:49', '', 'System', '', '<span class="left-info">User <b class="user-name-left">Tasnif Khan </b> has left the chat session.</span><br>'),
(41, '2022-09-10 17:54:58', '', 'System', '', '<span class="left-info">User <b class="user-name-left">Tasnif Khan </b> has left the chat session.</span><br>'),
(42, '2022-09-10 17:55:24', '', 'System', '', '<span class="left-info">User <b class="user-name-left">Tasnif Khan </b> has left the chat session.</span><br>'),
(43, '2022-09-10 17:55:28', '', 'System', '', '<span class="left-info">User <b class="user-name-left">Tasnif Khan </b> has left the chat session.</span><br>'),
(44, '2022-09-10 17:55:31', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(45, '2022-09-10 17:56:36', '', 'System', '', '<span class="left-info">User <b class="user-name-left">Tasnif Khan </b> has left the chat session.</span><br>'),
(46, '2022-09-10 17:58:03', '5', 'System', '', '<span class="left-info">Agent <b class="user-name-left">ec03 </b> has end the chat session.</span><br>'),
(47, '2022-09-10 17:58:28', '', 'System', '', '<span class="left-info">User <b class="user-name-left">Tasnif Khan </b> has left the chat session.</span><br>'),
(48, '2022-09-10 17:59:20', '6', 'Tasnif Khan', '', 'Hello Bhai'),
(49, '2022-09-10 18:00:24', '6', 'ec03', '', 'hi'),
(50, '2022-09-10 18:00:35', '6', 'Tasnif Khan', '', 'ki obostha?'),
(51, '2022-09-10 18:00:42', '6', 'ec03', '', 'valo'),
(52, '2022-09-10 18:00:54', '6', 'Tasnif Khan', '', 'vat khaisen?'),
(53, '2022-09-10 18:01:07', '6', 'ec03', '', 'Nah'),
(54, '2022-09-10 18:01:15', '6', 'ec03', '', 'Ajke amar mon valo nai'),
(55, '2022-09-10 18:01:24', '6', 'Tasnif Khan', '', 'cholen niche jai'),
(56, '2022-09-10 18:01:28', '6', 'Tasnif Khan', '', 'mon valo kore asi'),
(57, '2022-09-10 18:01:33', '6', 'ec03', '', 'ok'),
(58, '2022-09-10 18:01:36', '6', 'Tasnif Khan', '', 'jingalala'),
(59, '2022-09-10 18:01:44', '6', 'System', '', '<span class="left-info">User <b class="user-name-left">Tasnif Khan </b> has left the chat session.</span><br>'),
(60, '2022-09-10 18:01:55', '6', 'System', '', '<span class="left-info">Agent <b class="user-name-left">ec03 </b> has end the chat session.</span><br>'),
(61, '2022-09-10 18:02:14', '7', 'Tasnif Khan', '', 'Hello Bhai'),
(62, '2022-09-10 18:02:48', '7', 'test', '', 'hii'),
(63, '2022-09-10 18:02:57', '7', 'Tasnif Khan', '', 'bye'),
(64, '2022-09-10 18:03:04', '7', 'Tasnif Khan', '', 'tor sathe kotha nai'),
(65, '2022-09-10 18:03:08', '7', 'Tasnif Khan', '', 'tui valana'),
(66, '2022-09-10 18:03:09', '7', 'test', '', 'mair kha'),
(67, '2022-09-10 18:03:11', '7', 'Tasnif Khan', '', 'muri kha'),
(68, '2022-09-10 18:03:19', '7', 'test', '', 'khobish'),
(69, '2022-09-10 18:03:22', '7', 'Tasnif Khan', '', 'bomb kha'),
(70, '2022-09-10 18:03:29', '7', 'test', '', 'gu kha'),
(71, '2022-09-10 18:03:31', '7', 'Tasnif Khan', '', 'gulli'),
(72, '2022-09-10 18:03:33', '7', 'Tasnif Khan', '', 'tui kha'),
(73, '2022-09-10 18:03:38', '7', 'Tasnif Khan', '', 'mu*'),
(74, '2022-09-10 18:03:41', '7', 'test', '', 'tui khaaa'),
(75, '2022-09-10 18:04:02', '7', 'Tasnif Khan', '', 'lal suta kha'),
(76, '2022-09-10 18:04:02', '7', 'test', '', 'goru leda kha'),
(77, '2022-09-10 18:04:12', '7', 'Tasnif Khan', '', 'krimi kha'),
(78, '2022-09-10 18:04:17', '7', 'Tasnif Khan', '', 'fita'),
(79, '2022-09-10 18:04:19', '7', 'Tasnif Khan', '', 'lal boro ta'),
(80, '2022-09-10 18:04:22', '7', 'test', '', 'fita krimi kha'),
(81, '2022-09-10 18:04:43', '7', 'test', '', 'sagoler krimi kha'),
(82, '2022-09-10 18:05:15', '8', 'Dip', '', 'Hello Bhai'),
(83, '2022-09-10 18:05:41', '8', 'test', '', 'hiii'),
(84, '2022-09-10 18:06:02', '7', 'System', '', '<span class="left-info">User <b class="user-name-left">Tasnif Khan </b> has left the chat session.</span><br>'),
(85, '2022-09-10 18:06:13', '8', 'System', '', '<span class="left-info">Agent <b class="user-name-left">test </b> has end the chat session.</span><br>'),
(86, '2022-09-10 18:06:19', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(87, '2022-09-10 18:06:32', '7', 'System', '', '<span class="left-info">Agent <b class="user-name-left">test </b> has end the chat session.</span><br>'),
(88, '2022-09-11 15:32:53', '5', 'System', '', '<span class="left-info">Agent <b class="user-name-left">Man </b> has end the chat session.</span><br>'),
(89, '2022-09-11 15:55:54', '5', 'System', '', '<span class="left-info">Agent <b class="user-name-left">Man </b> has end the chat session.</span><br>'),
(90, '2022-09-11 15:55:56', '5', 'System', '', '<span class="left-info">Agent <b class="user-name-left">Man </b> has end the chat session.</span><br>'),
(91, '2022-09-11 15:55:58', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(92, '2022-09-11 15:56:01', '5', 'System', '', '<span class="left-info">Agent <b class="user-name-left">Man </b> has end the chat session.</span><br>'),
(93, '2022-09-11 15:56:04', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(94, '2022-09-11 15:57:08', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(95, '2022-09-11 15:57:11', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(96, '2022-09-11 15:57:14', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(97, '2022-09-11 15:57:18', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(98, '2022-09-11 15:57:19', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(99, '2022-09-11 15:57:21', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(100, '2022-09-11 15:57:31', '5', 'System', '', '<span class="left-info">Agent <b class="user-name-left">Man </b> has end the chat session.</span><br>'),
(101, '2022-09-11 15:57:34', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(102, '2022-09-11 15:57:37', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(103, '2022-09-11 15:57:41', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(104, '2022-09-11 16:03:58', '5', 'System', '', '<span class="left-info">Agent <b class="user-name-left">Man </b> has end the chat session.</span><br>'),
(105, '2022-09-11 16:25:28', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(106, '2022-09-11 16:25:39', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(107, '2022-10-03 17:37:11', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(108, '2022-10-03 17:37:26', '', 'System', '', '<span class="left-info">Agent <b class="user-name-left"> </b> has end the chat session.</span><br>'),
(109, '2022-10-03 17:41:55', '9', 'System', '', '<span class="left-info">Agent <b class="user-name-left">testec </b> has end the chat session.</span><br>'),
(110, '2022-10-03 20:24:03', '10', 'Amir', '', 'Hallo'),
(111, '2022-10-03 20:24:57', '10', 'testec', '', 'hi'),
(112, '2022-10-03 20:32:28', '10', 'System', '', '<span class="left-info">User <b class="user-name-left">Amir </b> has left the chat session.</span><br>'),
(113, '2022-10-03 20:32:31', '', 'System', '', '<span class="left-info">User <b class="user-name-left">Amir </b> has left the chat session.</span><br>'),
(114, '2022-10-03 20:32:33', '', 'System', '', '<span class="left-info">User <b class="user-name-left">Amir </b> has left the chat session.</span><br>'),
(115, '2022-10-03 20:32:35', '', 'System', '', '<span class="left-info">User <b class="user-name-left">Amir </b> has left the chat session.</span><br>'),
(116, '2022-10-03 20:32:39', '', 'System', '', '<span class="left-info">User <b class="user-name-left">Amir </b> has left the chat session.</span><br>'),
(117, '2022-10-03 20:34:08', '', 'System', '', '<span class="left-info">User <b class="user-name-left">Amir </b> has left the chat session.</span><br>'),
(118, '2022-10-03 20:34:14', '10', 'System', '', '<span class="left-info">Agent <b class="user-name-left">testec </b> has end the chat session.</span><br>');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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
(10, 'Amir', '01645467222', 'mehedi@ihelpbd.com', 'testec', '2022-10-03 20:23:57', 'CLOSE', 'YES');

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
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

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
(61, 'ec01', 'test', 'how are you today?', 0, '2022-10-06 12:44:27');

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
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;

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
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=54;
--
-- AUTO_INCREMENT for table `chat_customer`
--
ALTER TABLE `chat_customer`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=119;
--
-- AUTO_INCREMENT for table `chat_customer_notification`
--
ALTER TABLE `chat_customer_notification`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `chat_id`
--
ALTER TABLE `chat_id`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `internal_conversation`
--
ALTER TABLE `internal_conversation`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `internal_conversation_notification`
--
ALTER TABLE `internal_conversation_notification`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

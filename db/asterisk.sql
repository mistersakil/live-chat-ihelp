-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 30, 2022 at 02:08 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `asterisk`
--

-- --------------------------------------------------------

--
-- Table structure for table `agent_status`
--

CREATE TABLE `agent_status` (
  `id` int NOT NULL,
  `date` datetime NOT NULL,
  `agent_id` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `agent_name` varchar(200) NOT NULL,
  `status` varchar(50) NOT NULL,
  `last_status_change` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `agent_status`
--

INSERT INTO `agent_status` (`id`, `date`, `agent_id`, `agent_name`, `status`, `last_status_change`) VALUES
(55, '2022-10-30 13:31:57', 'Enayet', '', '1', '2022-10-30 13:38:10');

-- --------------------------------------------------------

--
-- Table structure for table `chat_customer`
--

CREATE TABLE `chat_customer` (
  `id` int NOT NULL,
  `date` datetime NOT NULL,
  `chat_id` varchar(50) NOT NULL,
  `user` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `chat_customer`
--

INSERT INTO `chat_customer` (`id`, `date`, `chat_id`, `user`, `status`, `message`) VALUES
(128, '2022-10-30 13:43:25', '12', 'System', '', '<span class=\"left-info\">User <b class=\"user-name-left\">Md Sakil Mahmud </b> has left the chat session.</span><br>'),
(126, '2022-10-30 13:35:59', '12', 'Md Sakil Mahmud', '', 'Hi'),
(127, '2022-10-30 13:43:16', '12', 'System', '', '<span class=\"left-info\">Agent <b class=\"user-name-left\">Enayet </b> has end the chat session.</span><br>'),
(125, '2022-10-30 13:34:34', '11', 'System', '', '<span class=\"left-info\">Agent <b class=\"user-name-left\">Enayet </b> has end the chat session.</span><br>'),
(124, '2022-10-30 13:34:20', '11', 'Enayet', '', 'Hi'),
(122, '2022-10-30 13:32:42', '11', 'Enayet', '', 'How can i help you'),
(123, '2022-10-30 13:33:24', '11', 'System', '', '<span class=\"left-info\">User <b class=\"user-name-left\">Dipak Roy </b> has left the chat session.</span><br>'),
(119, '2022-10-30 13:28:48', '11', 'Dipak Roy', '', 'Hi'),
(120, '2022-10-30 13:31:06', '11', 'Dipak Roy', '', 'Hello'),
(121, '2022-10-30 13:32:35', '11', 'Enayet', '', 'Hi');

-- --------------------------------------------------------

--
-- Table structure for table `chat_customer_history`
--

CREATE TABLE `chat_customer_history` (
  `id` int NOT NULL,
  `date` datetime NOT NULL,
  `chat_id` varchar(50) NOT NULL,
  `user` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `chat_customer_notification`
--

CREATE TABLE `chat_customer_notification` (
  `id` int NOT NULL,
  `date` datetime NOT NULL,
  `chat_id` varchar(50) NOT NULL,
  `user` varchar(200) NOT NULL,
  `status` varchar(20) NOT NULL,
  `message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `chat_id`
--

CREATE TABLE `chat_id` (
  `id` int NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `cust_phone` varchar(200) NOT NULL,
  `cust_email` varchar(200) NOT NULL,
  `agent_name` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(200) NOT NULL,
  `agent_close` varchar(20) NOT NULL DEFAULT 'NO'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

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

CREATE TABLE `chat_id_history` (
  `id` int NOT NULL,
  `customer_id` varchar(200) NOT NULL,
  `agent_name` varchar(200) NOT NULL,
  `date` datetime NOT NULL,
  `status` varchar(200) NOT NULL,
  `agent_close` varchar(20) NOT NULL DEFAULT 'NO'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `customer_info`
--

CREATE TABLE `customer_info` (
  `id` int NOT NULL,
  `cust_id` varchar(50) NOT NULL,
  `cust_password` varchar(200) NOT NULL,
  `cust_name` varchar(200) NOT NULL,
  `cust_phone` varchar(200) NOT NULL,
  `cust_email` varchar(200) NOT NULL,
  `create_date` datetime NOT NULL,
  `status` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `internal_conversation`
--

CREATE TABLE `internal_conversation` (
  `id` int NOT NULL,
  `send_by` varchar(50) NOT NULL,
  `received_by` varchar(50) NOT NULL,
  `coversation_sms` text NOT NULL,
  `status` int NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

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
(71, 'Farjana', 'Enayet', 'hi, im farzana', 0, '2022-10-29 19:05:08'),
(72, 'Enayet', 'Farjana', 'qqqqw', 0, '2022-10-30 13:32:16'),
(73, 'Enayet', 'Farjana', 'qwqwqwq', 0, '2022-10-30 13:32:24'),
(74, 'Enayet', 'Farjana', '122121', 0, '2022-10-30 13:32:39'),
(75, 'Farjana', 'Enayet', '2222', 0, '2022-10-30 13:33:07'),
(76, 'Enayet', 'Farjana', '3333', 0, '2022-10-30 13:33:19'),
(77, 'Farjana', 'Enayet', '44444', 0, '2022-10-30 13:33:31'),
(78, 'Enayet', 'Farjana', '5555', 0, '2022-10-30 13:34:25'),
(79, 'Farjana', 'Enayet', '6666', 0, '2022-10-30 13:34:42'),
(80, 'Enayet', 'Farjana', '7777', 0, '2022-10-30 13:34:48'),
(81, 'Farjana', 'Enayet', '8888', 0, '2022-10-30 13:34:52'),
(82, 'Enayet', 'Farjana', '9999', 0, '2022-10-30 13:34:56'),
(83, 'Enayet', 'Farjana', '1010', 0, '2022-10-30 13:51:19'),
(84, 'Farjana', 'Enayet', 'hello enayet', 0, '2022-10-30 13:51:47'),
(85, 'Enayet', 'Farjana', 'how are you?', 0, '2022-10-30 13:51:53'),
(86, 'Farjana', 'Enayet', 'im good', 0, '2022-10-30 13:52:29'),
(87, 'Enayet', 'Farjana', 'whats wrong', 0, '2022-10-30 13:52:36'),
(88, 'Farjana', 'Enayet', 'nothing wrong', 0, '2022-10-30 13:52:43'),
(89, 'Enayet', 'Farjana', 'wow, thatas great', 0, '2022-10-30 13:52:49'),
(90, 'Farjana', 'Enayet', 'tahnk you so much', 0, '2022-10-30 13:52:54'),
(91, 'Enayet', 'Farjana', 'you are most welcome', 0, '2022-10-30 13:53:00'),
(92, 'Farjana', 'Enayet', 'same to you', 0, '2022-10-30 13:53:06');

-- --------------------------------------------------------

--
-- Table structure for table `internal_conversation_notification`
--

CREATE TABLE `internal_conversation_notification` (
  `id` int NOT NULL,
  `send_by` varchar(50) NOT NULL,
  `received_by` varchar(50) NOT NULL,
  `coversation_sms` text NOT NULL,
  `status` int NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `internal_conversation_notification`
--

INSERT INTO `internal_conversation_notification` (`id`, `send_by`, `received_by`, `coversation_sms`, `status`, `create_time`) VALUES
(52, 'ec01', 'test', 'how are you today?', 0, '2022-10-06 12:44:27'),
(25, 'password', 'green', 'hi', 0, '2022-09-17 15:36:23'),
(47, 'ec01', 'ec02', 'hi', 0, '2022-10-03 11:52:34'),
(51, 'ec01', 'test', 'hi', 0, '2022-10-06 12:44:23');

-- --------------------------------------------------------

--
-- Table structure for table `vicidial_live_agents`
--

CREATE TABLE `vicidial_live_agents` (
  `live_agent_id` int UNSIGNED NOT NULL,
  `user` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `server_ip` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `conf_exten` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `extension` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `status` enum('READY','QUEUE','INCALL','PAUSED','CLOSER','MQUEUE') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'PAUSED',
  `lead_id` int UNSIGNED NOT NULL,
  `campaign_id` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `uniqueid` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `callerid` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `channel` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `random_id` int UNSIGNED DEFAULT NULL,
  `last_call_time` datetime DEFAULT NULL,
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_call_finish` datetime DEFAULT NULL,
  `closer_campaigns` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `call_server_ip` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_level` tinyint UNSIGNED DEFAULT '0',
  `comments` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `campaign_weight` tinyint(1) DEFAULT '0',
  `calls_today` smallint UNSIGNED DEFAULT '0',
  `external_hangup` varchar(1) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `external_status` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `external_pause` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `external_dial` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `external_ingroups` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `external_blended` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `external_igb_set_user` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `external_update_fields` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `external_update_fields_data` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `external_timer_action` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `external_timer_action_message` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `external_timer_action_seconds` mediumint DEFAULT '-1',
  `agent_log_id` int UNSIGNED DEFAULT '0',
  `last_state_change` datetime DEFAULT NULL,
  `agent_territories` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `outbound_autodial` enum('Y','N') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  `manager_ingroup_set` enum('Y','N','SET') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  `ra_user` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `ra_extension` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `external_dtmf` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `external_transferconf` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `external_park` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `external_timer_action_destination` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `on_hook_agent` enum('Y','N') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  `on_hook_ring_time` smallint DEFAULT '15',
  `ring_callerid` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `last_inbound_call_time` datetime DEFAULT NULL,
  `last_inbound_call_finish` datetime DEFAULT NULL,
  `campaign_grade` tinyint UNSIGNED DEFAULT '1',
  `external_recording` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `external_pause_code` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `pause_code` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `preview_lead_id` int UNSIGNED DEFAULT '0',
  `external_lead_id` int UNSIGNED DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `vicidial_live_agents`
--

INSERT INTO `vicidial_live_agents` (`live_agent_id`, `user`, `server_ip`, `conf_exten`, `extension`, `status`, `lead_id`, `campaign_id`, `uniqueid`, `callerid`, `channel`, `random_id`, `last_call_time`, `last_update_time`, `last_call_finish`, `closer_campaigns`, `call_server_ip`, `user_level`, `comments`, `campaign_weight`, `calls_today`, `external_hangup`, `external_status`, `external_pause`, `external_dial`, `external_ingroups`, `external_blended`, `external_igb_set_user`, `external_update_fields`, `external_update_fields_data`, `external_timer_action`, `external_timer_action_message`, `external_timer_action_seconds`, `agent_log_id`, `last_state_change`, `agent_territories`, `outbound_autodial`, `manager_ingroup_set`, `ra_user`, `ra_extension`, `external_dtmf`, `external_transferconf`, `external_park`, `external_timer_action_destination`, `on_hook_agent`, `on_hook_ring_time`, `ring_callerid`, `last_inbound_call_time`, `last_inbound_call_finish`, `campaign_grade`, `external_recording`, `external_pause_code`, `pause_code`, `preview_lead_id`, `external_lead_id`) VALUES
(11335, '54550', '192.168.1.1', '8300', 'R/54550', 'READY', 0, 'BROADCAS', '', '', '', 16803278, '2022-10-30 01:02:02', '2022-10-30 10:42:45', '2022-10-30 01:02:02', ' AGENTDIRECT -', NULL, 4, 'REMOTE', 0, 0, '', '', '', '', NULL, '0', '', '0', '', '', '', -1, 0, '2022-10-30 01:02:02', NULL, 'Y', 'N', '54545', '', '', '', '', '', 'N', 15, '', '2022-10-30 01:02:02', '2022-10-30 01:02:02', 1, '', '', '', 0, 0),
(11334, '54549', '192.168.1.1', '8300', 'R/54549', 'READY', 0, 'BROADCAS', '', '', '', 17125781, '2022-10-30 01:02:02', '2022-10-30 10:42:45', '2022-10-30 01:02:02', ' AGENTDIRECT -', NULL, 4, 'REMOTE', 0, 0, '', '', '', '', NULL, '0', '', '0', '', '', '', -1, 0, '2022-10-30 01:02:02', NULL, 'Y', 'N', '54545', '', '', '', '', '', 'N', 15, '', '2022-10-30 01:02:02', '2022-10-30 01:02:02', 1, '', '', '', 0, 0),
(11333, '54548', '192.168.1.1', '8300', 'R/54548', 'READY', 0, 'BROADCAS', '', '', '', 18088141, '2022-10-30 01:02:02', '2022-10-30 10:42:45', '2022-10-30 01:02:02', ' AGENTDIRECT -', NULL, 4, 'REMOTE', 0, 0, '', '', '', '', NULL, '0', '', '0', '', '', '', -1, 0, '2022-10-30 01:02:02', NULL, 'Y', 'N', '54545', '', '', '', '', '', 'N', 15, '', '2022-10-30 01:02:02', '2022-10-30 01:02:02', 1, '', '', '', 0, 0),
(11332, '54547', '192.168.1.1', '8300', 'R/54547', 'READY', 0, 'BROADCAS', '', '', '', 18310723, '2022-10-30 01:02:02', '2022-10-30 10:42:45', '2022-10-30 01:02:02', ' AGENTDIRECT -', NULL, 4, 'REMOTE', 0, 0, '', '', '', '', NULL, '0', '', '0', '', '', '', -1, 0, '2022-10-30 01:02:02', NULL, 'Y', 'N', '54545', '', '', '', '', '', 'N', 15, '', '2022-10-30 01:02:02', '2022-10-30 01:02:02', 1, '', '', '', 0, 0),
(11331, '54546', '192.168.1.1', '8300', 'R/54546', 'READY', 0, 'BROADCAS', '', '', '', 11233842, '2022-10-30 01:02:02', '2022-10-30 10:42:45', '2022-10-30 01:02:02', ' AGENTDIRECT -', NULL, 4, 'REMOTE', 0, 0, '', '', '', '', NULL, '0', '', '0', '', '', '', -1, 0, '2022-10-30 01:02:02', NULL, 'Y', 'N', '54545', '', '', '', '', '', 'N', 15, '', '2022-10-30 01:02:02', '2022-10-30 01:02:02', 1, '', '', '', 0, 0),
(11330, '54545', '192.168.1.1', '8300', 'R/54545', 'READY', 0, 'BROADCAS', '', '', '', 12128109, '2022-10-30 01:02:02', '2022-10-30 10:42:45', '2022-10-30 01:02:02', ' AGENTDIRECT -', NULL, 4, 'REMOTE', 0, 0, '', '', '', '', NULL, '0', '', '0', '', '', '', -1, 0, '2022-10-30 01:02:02', NULL, 'Y', 'N', '54545', '', '', '', '', '', 'N', 15, '', '2022-10-30 01:02:02', '2022-10-30 01:02:02', 1, '', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `vicidial_users`
--

CREATE TABLE `vicidial_users` (
  `user_id` int UNSIGNED NOT NULL,
  `user` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `pass` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `full_name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `user_level` tinyint UNSIGNED DEFAULT '1',
  `user_group` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone_login` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `phone_pass` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `delete_users` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `delete_user_groups` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `delete_lists` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `delete_campaigns` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `delete_ingroups` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `delete_remote_agents` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `load_leads` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `campaign_detail` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `ast_admin_access` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `ast_delete_phones` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `delete_scripts` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_leads` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `hotkeys_active` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `change_agent_campaign` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `agent_choose_ingroups` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '1',
  `closer_campaigns` text CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci,
  `scheduled_callbacks` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '1',
  `agentonly_callbacks` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `agentcall_manual` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `vicidial_recording` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '1',
  `vicidial_transfers` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '1',
  `delete_filters` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `alter_agent_interface_options` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `closer_default_blended` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `delete_call_times` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_call_times` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_users` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_campaigns` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_lists` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_scripts` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_filters` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_ingroups` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_usergroups` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_remoteagents` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_servers` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `view_reports` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `vicidial_recording_override` enum('DISABLED','NEVER','ONDEMAND','ALLCALLS','ALLFORCE') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'DISABLED',
  `alter_custdata_override` enum('NOT_ACTIVE','ALLOW_ALTER') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NOT_ACTIVE',
  `qc_enabled` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `qc_user_level` int DEFAULT '1',
  `qc_pass` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `qc_finish` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `qc_commit` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `add_timeclock_log` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_timeclock_log` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `delete_timeclock_log` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `alter_custphone_override` enum('NOT_ACTIVE','ALLOW_ALTER') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NOT_ACTIVE',
  `vdc_agent_api_access` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_inbound_dids` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `delete_inbound_dids` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `active` enum('Y','N') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'Y',
  `alert_enabled` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `download_lists` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `agent_shift_enforcement_override` enum('DISABLED','OFF','START','ALL') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'DISABLED',
  `manager_shift_enforcement_override` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `shift_override_flag` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `export_reports` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `delete_from_dnc` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `user_code` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `territory` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `allow_alerts` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `agent_choose_territories` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '1',
  `custom_one` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `custom_two` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `custom_three` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `custom_four` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `custom_five` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `voicemail_id` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `agent_call_log_view_override` enum('DISABLED','Y','N') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'DISABLED',
  `callcard_admin` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `agent_choose_blended` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '1',
  `realtime_block_user_info` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `custom_fields_modify` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `force_change_password` enum('Y','N') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'N',
  `agent_lead_search_override` enum('NOT_ACTIVE','ENABLED','LIVE_CALL_INBOUND','LIVE_CALL_INBOUND_AND_MANUAL','DISABLED') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NOT_ACTIVE',
  `modify_shifts` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_phones` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_carriers` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_labels` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_statuses` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_voicemail` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_audiostore` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_moh` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_tts` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `preset_contact_search` enum('NOT_ACTIVE','ENABLED','DISABLED') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NOT_ACTIVE',
  `modify_contacts` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_same_user_level` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '1',
  `admin_hide_lead_data` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `admin_hide_phone_data` enum('0','1','2_DIGITS','3_DIGITS','4_DIGITS') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `agentcall_email` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_email_accounts` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `failed_login_count` tinyint UNSIGNED DEFAULT '0',
  `last_login_date` datetime DEFAULT '2001-01-01 00:00:01',
  `last_ip` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `pass_hash` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `alter_admin_interface_options` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '1',
  `max_inbound_calls` smallint UNSIGNED DEFAULT '0',
  `modify_custom_dialplans` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `wrapup_seconds_override` smallint DEFAULT '-1',
  `modify_languages` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `selected_language` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'default English',
  `user_choose_language` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `ignore_group_on_search` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `api_list_restrict` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `api_allowed_functions` varchar(1000) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT ' ALL_FUNCTIONS ',
  `lead_filter_id` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT 'NONE',
  `admin_cf_show_hidden` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `agentcall_chat` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `user_hide_realtime` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `access_recordings` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_colors` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `user_nickname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '',
  `user_new_lead_limit` smallint DEFAULT '-1',
  `api_only_user` enum('0','1') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_auto_reports` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `modify_ip_lists` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `ignore_ip_list` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0',
  `ready_max_logout` mediumint DEFAULT '-1',
  `export_gdpr_leads` enum('0','1','2') CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `vicidial_users`
--

INSERT INTO `vicidial_users` (`user_id`, `user`, `pass`, `full_name`, `user_level`, `user_group`, `phone_login`, `phone_pass`, `delete_users`, `delete_user_groups`, `delete_lists`, `delete_campaigns`, `delete_ingroups`, `delete_remote_agents`, `load_leads`, `campaign_detail`, `ast_admin_access`, `ast_delete_phones`, `delete_scripts`, `modify_leads`, `hotkeys_active`, `change_agent_campaign`, `agent_choose_ingroups`, `closer_campaigns`, `scheduled_callbacks`, `agentonly_callbacks`, `agentcall_manual`, `vicidial_recording`, `vicidial_transfers`, `delete_filters`, `alter_agent_interface_options`, `closer_default_blended`, `delete_call_times`, `modify_call_times`, `modify_users`, `modify_campaigns`, `modify_lists`, `modify_scripts`, `modify_filters`, `modify_ingroups`, `modify_usergroups`, `modify_remoteagents`, `modify_servers`, `view_reports`, `vicidial_recording_override`, `alter_custdata_override`, `qc_enabled`, `qc_user_level`, `qc_pass`, `qc_finish`, `qc_commit`, `add_timeclock_log`, `modify_timeclock_log`, `delete_timeclock_log`, `alter_custphone_override`, `vdc_agent_api_access`, `modify_inbound_dids`, `delete_inbound_dids`, `active`, `alert_enabled`, `download_lists`, `agent_shift_enforcement_override`, `manager_shift_enforcement_override`, `shift_override_flag`, `export_reports`, `delete_from_dnc`, `email`, `user_code`, `territory`, `allow_alerts`, `agent_choose_territories`, `custom_one`, `custom_two`, `custom_three`, `custom_four`, `custom_five`, `voicemail_id`, `agent_call_log_view_override`, `callcard_admin`, `agent_choose_blended`, `realtime_block_user_info`, `custom_fields_modify`, `force_change_password`, `agent_lead_search_override`, `modify_shifts`, `modify_phones`, `modify_carriers`, `modify_labels`, `modify_statuses`, `modify_voicemail`, `modify_audiostore`, `modify_moh`, `modify_tts`, `preset_contact_search`, `modify_contacts`, `modify_same_user_level`, `admin_hide_lead_data`, `admin_hide_phone_data`, `agentcall_email`, `modify_email_accounts`, `failed_login_count`, `last_login_date`, `last_ip`, `pass_hash`, `alter_admin_interface_options`, `max_inbound_calls`, `modify_custom_dialplans`, `wrapup_seconds_override`, `modify_languages`, `selected_language`, `user_choose_language`, `ignore_group_on_search`, `api_list_restrict`, `api_allowed_functions`, `lead_filter_id`, `admin_cf_show_hidden`, `agentcall_chat`, `user_hide_realtime`, `access_recordings`, `modify_colors`, `user_nickname`, `user_new_lead_limit`, `api_only_user`, `modify_auto_reports`, `modify_ip_lists`, `ignore_ip_list`, `ready_max_logout`, `export_gdpr_leads`) VALUES
(3, 'VDCL', 'donotedit', 'Inbound No Agent', 1, 'ADMIN', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL, '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'N', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2001-01-01 00:00:01', '', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(2, 'VDAD', 'donotedit', 'Outbound Auto Dial', 1, 'ADMIN', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL, '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'N', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2001-01-01 00:00:01', '', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(1, '6666', '1234', 'Admin', 9, 'ADMIN', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '-', '1', '0', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '1', '0', 'N', 'NOT_ACTIVE', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '1', 0, '2022-10-29 17:15:09', '163.47.144.209', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(4, 'admin', 'admin', 'admin', 9, 'ADMIN', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '', '1', '0', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '0', '0', 'N', 'NOT_ACTIVE', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '0', 1, '2022-10-06 17:48:41', '188.161.203.138', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(5, 'agent001', '1234', 'Agent001', 1, 'Agent', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '-', '0', '0', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', 'nawsheen138@gmail.com', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '0', 0, '2022-07-16 16:13:10', '116.193.217.3', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(7, '04297', 'kiron123', '04297', 4, 'Agent', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '-', '1', '0', '1', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '0', '0', 'N', 'NOT_ACTIVE', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '0', 0, '2022-04-07 20:01:50', '116.193.217.3', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(116, 'Alam', '786007', 'Muhammad Jane Alam', 9, 'ADMIN', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', ' -', '1', '0', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '1', '0', 'N', 'NOT_ACTIVE', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '0', 0, '2019-03-13 21:28:26', '172.28.59.34', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(117, 'Anamika', '07dipannita', 'Anamika Das', 1, 'Agent', '', '', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '1', '0', 'N', 'NOT_ACTIVE', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', '0', '0', '0', 0, '2019-03-19 09:57:15', '172.28.59.26', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(118, 'ARMAN', 'Rman4you', 'Md. Arman Hossain Bhuiyan', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-18 14:35:17', '172.28.59.16', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(120, 'Barkat', 'ullah1683', 'Mohammad Barkat Ullah', 8, 'ADMIN', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '0', '1', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '1', '1', '0', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '0', '0', 'N', 'NOT_ACTIVE', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '0', 0, '2019-03-11 15:42:47', '172.28.59.12', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(125, 'Enayet', '1234', 'Md. Enayet Ullah', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-18 15:02:30', '172.28.59.12', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(126, 'Fahad', 'fahad1234', 'Abdullah Al Fahad', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL, '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2001-01-01 00:00:01', '', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(128, 'Farjana', '1234', 'Farjana Akther', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL, '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2001-01-01 00:00:01', '', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(129, 'Fazlul', '1234', 'Munshi Md. Fazlul Alam', 8, 'ADMIN', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '', '1', '0', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '0', '0', 'N', 'NOT_ACTIVE', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '0', 0, '2001-01-01 00:00:01', '', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(130, 'Ferdous', 'kanon16', 'Md. Ferdous Hasan', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL, '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2001-01-01 00:00:01', '', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(131, 'Hanif', 'Hanif5060', 'Md.Hanif Hossain', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-18 15:00:28', '172.28.59.17', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(132, 'Iffat', '1236', 'Iffat Jahan', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-19 09:58:25', '172.28.59.23', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(133, 'Ismat', '01710', 'Ismat Ara', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-19 10:56:57', '172.28.59.28', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(134, 'Kaium', '1234', 'Md. Johirul Kaium', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-19 06:59:52', '172.28.59.12', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(135, 'lutful', '3105', 'Mohammad Lutful Habib', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-14 10:18:19', '172.28.59.21', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(136, 'Maria', '1234', 'Maria Amjad', 1, 'Agent', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', ' General_info -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2020-10-27 10:36:39', '192.168.137.1', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(137, 'Marina', 'safwan159', 'Marina Alam', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-19 12:02:21', '172.28.59.17', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(139, 'Michael', '1234', 'Michael Ian Bride', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-18 15:06:32', '172.28.59.16', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(140, 'Minhazur', 'Joy99857816', 'Md. Minhazur Rahman Khan', 8, 'ADMIN', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '0', '0', 'N', 'NOT_ACTIVE', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '0', 0, '2019-03-15 09:52:25', '172.28.59.33', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(141, 'Nahid', 'nahid02', 'Shekh Nahid Uz Zaman', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' AGENTDIRECT Complain General_info Other Product -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-04-27 13:51:35', '192.168.137.242', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(142, 'Nandinee', 'Nandinee4675', 'Nandinee Das', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL, '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2001-01-01 00:00:01', '', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(143, 'Naushaba', 'zxc1234', 'Fahmida Naushaba', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-19 10:01:34', '172.28.59.11', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(146, 'Pavel', '9122918', 'Towhid Mahmood Pavel', 8, 'ADMIN', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '', '1', '0', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '0', '0', 'N', 'NOT_ACTIVE', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '0', 0, '2001-01-01 00:00:01', '', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(147, 'Poulomi', '1234', 'Poulomi Biswas', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-19 06:59:57', '172.28.59.27', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(150, 'Rony', 'Tito1234', 'Md. Shahriar Rony', 8, 'ADMIN', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '0', '0', 'N', 'NOT_ACTIVE', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '0', 0, '2019-03-17 20:27:03', '172.28.59.33', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(151, 'Rowshon', '1234', 'Rokshana Binte Rowshon', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-11 09:00:18', '172.28.59.17', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(152, 'Rubel', '1234', 'Rubel Mahmud', 9, 'ADMIN', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', ' AGENTDIRECT Complain General_info Other Product -', '1', '0', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '0', '0', 'N', 'NOT_ACTIVE', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '0', 0, '2019-04-27 11:57:26', '192.168.137.237', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(153, 'Rumi', 'amarammu29', 'Rumana Sabur Rumi', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL, '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2001-01-01 00:00:01', '', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(154, 'Salahuddin', '1234', 'Salah Uddin Munshi', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL, '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2001-01-01 00:00:01', '', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(155, 'Sampad', '1234', 'Sampad Roy', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-19 01:02:08', '172.28.59.15', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(156, 'Shahan', 'munim', 'Md. Abdul Munim Shahan', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-19 01:02:10', '172.28.59.12', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(157, 'shahin', '1234', 'Md. Shahinur Rahman', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-13 15:00:21', '172.28.59.10', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(158, 'Shahinur', 'Shahinur', 'Shahinur Akter', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-19 08:56:21', '172.28.59.25', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(159, 'shaif', 'P241888', 'Md. Shaif Ullah', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-17 01:02:12', '172.28.59.12', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(161, 'Shariful', '1234', 'Md. Shariful Islam', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-18 01:02:11', '172.28.59.15', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(164, 'Zabin', 'Taza2017', 'Zabin Rahman Tazin', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-18 17:23:42', '172.28.59.26', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(165, 'Habib', 'rOnn133la', 'Habib', 8, 'ADMIN', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '', '1', '0', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '1', '0', 'N', 'NOT_ACTIVE', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '0', 0, '2019-02-27 11:40:22', '172.28.59.21', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(166, 'mariaamjad', '4140', 'maria amjad', 8, 'ADMIN', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '1', '0', 'N', 'NOT_ACTIVE', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '0', 0, '2019-03-13 14:20:39', '172.28.59.20', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(167, 'asadul', '1234', 'ASADUL ISLAM', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-01-21 14:27:43', '172.28.59.14', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(168, 'jahidul', '1234', 'MUHAMMAD JAHIDUL ISLAM', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '-', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-19 01:02:25', '172.28.59.14', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(169, 'shabnam', '1234', 'TURHAN SHABNAM HIYAM', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '-', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-01-19 11:02:48', '172.28.59.13', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(178, 'rubina', '1234', 'RUBINA PERVIN', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-13 11:08:53', '172.28.59.13', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(171, 'sajib', '1234', 'SAJIB AHMED', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '-', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2021-05-22 15:15:27', '116.193.217.3', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(176, 'ziaul', '1234', 'ZIAUL HAQUE', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '-', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-19 07:43:34', '172.28.59.14', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(173, 'mosharof', '1234', 'MD. MOSHAROF HOSSAIN', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '-', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-17 01:06:57', '172.28.59.14', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(174, 'tanzimul', '1234', 'MD. TANZIMUL ISLAM', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' allinall TPIN -', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2019-03-18 15:22:46', '172.28.59.14', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(177, 'zinia', '1234', 'Shamima Yasmin Zinia', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '-', '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2021-05-22 12:42:35', '116.193.217.3', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(179, '04211', '04211', 'INBOUND', 4, 'Agent', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', ' AGENTDIRECT -', '1', '0', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '0', '0', 'N', 'NOT_ACTIVE', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '0', 0, '2001-01-01 00:00:01', '', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(181, '01726252527', '01726252527', '01726252527', 4, 'Agent', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', ' AGENTDIRECT -', '1', '0', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '0', '0', 'N', 'NOT_ACTIVE', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '0', 0, '2001-01-01 00:00:01', '', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(185, 'green', '1234', 'Green', 1, 'Agent', '1001', '1234', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' Bill Complain Complaint Customercare General_info Information Other Product Service test -', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '1', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', 'nawsheen138@gmail.com', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2022-10-29 17:32:30', '163.47.144.209', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(186, 'test', '1234', 'Test', 1, 'Agent', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', ' Bill Complain General_info Other Product test -', '1', '0', '1', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', 'mehedi@ihelpbd.com', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2022-10-27 18:42:53', '116.193.217.3', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(183, 'Raihan', '1234', 'Raihan', 1, 'Agent', NULL, NULL, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL, '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2001-01-01 00:00:01', '', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(184, '54545', '54545', '54545', 4, 'Agent', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', ' AGENTDIRECT AGENTDIRECT_CHAT Chatbangla Complain General_info Other Product -', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'ALLOW_ALTER', '0', 1, '0', '0', '0', '1', '1', '1', 'ALLOW_ALTER', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '0', '0', 'N', 'LIVE_CALL_INBOUND_AND_MANUAL', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '0', 0, '2022-04-09 03:36:24', '103.120.39.250', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(188, 'dipu', '1234', 'Dipak Roy', 1, 'Agent', '1100', '1234', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '-', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2022-04-18 16:17:26', '116.193.217.3', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0'),
(189, 'password', 'Area51bd', 'password', 9, 'ADMIN', '', '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '0', '1', '1', '', '1', '0', '0', '1', '1', '1', '1', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '1', 'Y', '0', '1', 'DISABLED', '1', '0', '1', '1', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '1', '1', '0', '0', 'N', 'NOT_ACTIVE', '1', '1', '1', '1', '1', '1', '1', '1', '1', 'NOT_ACTIVE', '1', '1', '0', '0', '0', '0', 0, '2022-10-29 17:35:45', '163.47.144.209', '', '1', 0, '1', -1, '0', 'default English', '0', '0', '1', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '1', '', -1, '0', '0', '0', '0', -1, '0'),
(190, '1010', '1010', '1010', 1, 'Agent', '1001', '1234', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '-', '1', '0', '1', '1', '1', '0', '0', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '1', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '', '', '', '', '', '', '', 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2022-04-09 03:47:58', '103.120.39.250', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0');
INSERT INTO `vicidial_users` (`user_id`, `user`, `pass`, `full_name`, `user_level`, `user_group`, `phone_login`, `phone_pass`, `delete_users`, `delete_user_groups`, `delete_lists`, `delete_campaigns`, `delete_ingroups`, `delete_remote_agents`, `load_leads`, `campaign_detail`, `ast_admin_access`, `ast_delete_phones`, `delete_scripts`, `modify_leads`, `hotkeys_active`, `change_agent_campaign`, `agent_choose_ingroups`, `closer_campaigns`, `scheduled_callbacks`, `agentonly_callbacks`, `agentcall_manual`, `vicidial_recording`, `vicidial_transfers`, `delete_filters`, `alter_agent_interface_options`, `closer_default_blended`, `delete_call_times`, `modify_call_times`, `modify_users`, `modify_campaigns`, `modify_lists`, `modify_scripts`, `modify_filters`, `modify_ingroups`, `modify_usergroups`, `modify_remoteagents`, `modify_servers`, `view_reports`, `vicidial_recording_override`, `alter_custdata_override`, `qc_enabled`, `qc_user_level`, `qc_pass`, `qc_finish`, `qc_commit`, `add_timeclock_log`, `modify_timeclock_log`, `delete_timeclock_log`, `alter_custphone_override`, `vdc_agent_api_access`, `modify_inbound_dids`, `delete_inbound_dids`, `active`, `alert_enabled`, `download_lists`, `agent_shift_enforcement_override`, `manager_shift_enforcement_override`, `shift_override_flag`, `export_reports`, `delete_from_dnc`, `email`, `user_code`, `territory`, `allow_alerts`, `agent_choose_territories`, `custom_one`, `custom_two`, `custom_three`, `custom_four`, `custom_five`, `voicemail_id`, `agent_call_log_view_override`, `callcard_admin`, `agent_choose_blended`, `realtime_block_user_info`, `custom_fields_modify`, `force_change_password`, `agent_lead_search_override`, `modify_shifts`, `modify_phones`, `modify_carriers`, `modify_labels`, `modify_statuses`, `modify_voicemail`, `modify_audiostore`, `modify_moh`, `modify_tts`, `preset_contact_search`, `modify_contacts`, `modify_same_user_level`, `admin_hide_lead_data`, `admin_hide_phone_data`, `agentcall_email`, `modify_email_accounts`, `failed_login_count`, `last_login_date`, `last_ip`, `pass_hash`, `alter_admin_interface_options`, `max_inbound_calls`, `modify_custom_dialplans`, `wrapup_seconds_override`, `modify_languages`, `selected_language`, `user_choose_language`, `ignore_group_on_search`, `api_list_restrict`, `api_allowed_functions`, `lead_filter_id`, `admin_cf_show_hidden`, `agentcall_chat`, `user_hide_realtime`, `access_recordings`, `modify_colors`, `user_nickname`, `user_new_lead_limit`, `api_only_user`, `modify_auto_reports`, `modify_ip_lists`, `ignore_ip_list`, `ready_max_logout`, `export_gdpr_leads`) VALUES
(191, 'agent01', '1234', 'agent01', 1, 'test', '', '', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', NULL, '1', '0', '0', '1', '1', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'DISABLED', 'NOT_ACTIVE', '0', 1, '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '0', '0', 'Y', '0', '0', 'DISABLED', '0', '0', '0', '0', '', '', '', '0', '1', '', '', '', '', '', NULL, 'DISABLED', '0', '1', '0', '0', 'N', 'NOT_ACTIVE', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'NOT_ACTIVE', '0', '1', '0', '0', '0', '0', 0, '2001-01-01 00:00:01', '', '', '1', 0, '0', -1, '0', 'default English', '0', '0', '0', ' ALL_FUNCTIONS ', 'NONE', '0', '0', '0', '0', '0', '', -1, '0', '0', '0', '0', -1, '0');

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
-- Indexes for table `vicidial_live_agents`
--
ALTER TABLE `vicidial_live_agents`
  ADD PRIMARY KEY (`live_agent_id`),
  ADD KEY `random_id` (`random_id`),
  ADD KEY `last_call_time` (`last_call_time`),
  ADD KEY `last_update_time` (`last_update_time`),
  ADD KEY `last_call_finish` (`last_call_finish`),
  ADD KEY `vlali` (`lead_id`),
  ADD KEY `vlaus` (`user`);

--
-- Indexes for table `vicidial_users`
--
ALTER TABLE `vicidial_users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user` (`user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agent_status`
--
ALTER TABLE `agent_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `chat_customer`
--
ALTER TABLE `chat_customer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `chat_customer_notification`
--
ALTER TABLE `chat_customer_notification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `chat_id`
--
ALTER TABLE `chat_id`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer_info`
--
ALTER TABLE `customer_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `internal_conversation`
--
ALTER TABLE `internal_conversation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `internal_conversation_notification`
--
ALTER TABLE `internal_conversation_notification`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;

--
-- AUTO_INCREMENT for table `vicidial_live_agents`
--
ALTER TABLE `vicidial_live_agents`
  MODIFY `live_agent_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11336;

--
-- AUTO_INCREMENT for table `vicidial_users`
--
ALTER TABLE `vicidial_users`
  MODIFY `user_id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

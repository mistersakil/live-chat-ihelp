-- phpMyAdmin SQL Dump
-- version 4.4.15.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 30, 2022 at 04:42 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.5.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `vicidial_live_agents`
--

CREATE TABLE IF NOT EXISTS `vicidial_live_agents` (
  `live_agent_id` int(9) unsigned NOT NULL,
  `user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `server_ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `conf_exten` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extension` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('READY','QUEUE','INCALL','PAUSED','CLOSER','MQUEUE') COLLATE utf8_unicode_ci DEFAULT 'PAUSED',
  `lead_id` int(9) unsigned NOT NULL,
  `campaign_id` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uniqueid` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `callerid` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `channel` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `random_id` int(8) unsigned DEFAULT NULL,
  `last_call_time` datetime DEFAULT NULL,
  `last_update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_call_finish` datetime DEFAULT NULL,
  `closer_campaigns` text COLLATE utf8_unicode_ci,
  `call_server_ip` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_level` tinyint(3) unsigned DEFAULT '0',
  `comments` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `campaign_weight` tinyint(1) DEFAULT '0',
  `calls_today` smallint(5) unsigned DEFAULT '0',
  `external_hangup` varchar(1) COLLATE utf8_unicode_ci DEFAULT '',
  `external_status` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `external_pause` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `external_dial` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `external_ingroups` text COLLATE utf8_unicode_ci,
  `external_blended` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '0',
  `external_igb_set_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `external_update_fields` enum('0','1') COLLATE utf8_unicode_ci DEFAULT '0',
  `external_update_fields_data` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `external_timer_action` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `external_timer_action_message` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `external_timer_action_seconds` mediumint(7) DEFAULT '-1',
  `agent_log_id` int(9) unsigned DEFAULT '0',
  `last_state_change` datetime DEFAULT NULL,
  `agent_territories` text COLLATE utf8_unicode_ci,
  `outbound_autodial` enum('Y','N') COLLATE utf8_unicode_ci DEFAULT 'N',
  `manager_ingroup_set` enum('Y','N','SET') COLLATE utf8_unicode_ci DEFAULT 'N',
  `ra_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `ra_extension` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `external_dtmf` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `external_transferconf` varchar(120) COLLATE utf8_unicode_ci DEFAULT '',
  `external_park` varchar(40) COLLATE utf8_unicode_ci DEFAULT '',
  `external_timer_action_destination` varchar(100) COLLATE utf8_unicode_ci DEFAULT '',
  `on_hook_agent` enum('Y','N') COLLATE utf8_unicode_ci DEFAULT 'N',
  `on_hook_ring_time` smallint(5) DEFAULT '15',
  `ring_callerid` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `last_inbound_call_time` datetime DEFAULT NULL,
  `last_inbound_call_finish` datetime DEFAULT NULL,
  `campaign_grade` tinyint(2) unsigned DEFAULT '1',
  `external_recording` varchar(20) COLLATE utf8_unicode_ci DEFAULT '',
  `external_pause_code` varchar(6) COLLATE utf8_unicode_ci DEFAULT '',
  `pause_code` varchar(6) COLLATE utf8_unicode_ci DEFAULT '',
  `preview_lead_id` int(9) unsigned DEFAULT '0',
  `external_lead_id` int(9) unsigned DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=11336 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vicidial_live_agents`
--
ALTER TABLE `vicidial_live_agents`
  MODIFY `live_agent_id` int(9) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11336;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

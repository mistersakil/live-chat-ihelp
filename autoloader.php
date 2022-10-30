<?php
// include('./libs/sqli-db.php');
require('./libs/database.php');
//$chat_id = $_SESSION['chat_id'];
//echo "Need Correction";

//$ssql = "DELETE FROM `agent_status` WHERE `agent_status`.`agent_id` NOT IN (SELECT `asterisk`.`vicidial_live_agents`.`user` FROM `asterisk`.`vicidial_live_agents` WHERE `asterisk`.`vicidial_live_agents`.`campaign_id` = 'EC')";

//$result2 = $conn->query( $ssql);

$sql2 = "SELECT * FROM `vicidial_live_agents` WHERE `vicidial_live_agents`.`user` NOT IN (SELECT `agent_status`.`agent_id` FROM `chat`.`agent_status`) AND `vicidial_live_agents`.`campaign_id` = 'EC'";
$result3 = $conn->query($sql2);
$now_time = date('Y-m-d H:i:s');
while ($data = ($result3->fetch_assoc())) {
	$now_id = $data['user'];
	//$ssql2 = "INSERT INTO `agent_status` ('',`date`,`agent_id`,`agent_name`,`status`,`last_status_change`) VALUES ('','$now_time','$now_id','','0','$now_time')";
	$ssql2 = "INSERT INTO `agent_status` VALUES ('','$now_time','$now_id','','0','$now_time')";
	$conn->query($ssql2);
}

$sql = "SELECT * FROM `agent_status` WHERE `status` = '1' ORDER BY `last_status_change` DESC";
$result = $conn->query($sql);
$row_count = ($result->num_rows);
if ($row_count > 0) {
	while ($row = ($result->fetch_assoc())) {
		$sql2 = "UPDATE `chat_id` SET `agent_name` = '" . $row['agent_id'] . "',`status` = 'Pending' WHERE `status` = 'NEW' LIMIT 1";
		$conn->query($sql2);
		echo ($conn->affected_rows) . " Row Updated";
	}
}
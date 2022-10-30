<?php
include('./libs/sqli-db.php');
//$chat_id = $_SESSION['chat_id'];
//echo "Need Correction";

//$ssql = "DELETE FROM `agent_status` WHERE `agent_status`.`agent_id` NOT IN (SELECT `asterisk`.`vicidial_live_agents`.`user` FROM `asterisk`.`vicidial_live_agents` WHERE `asterisk`.`vicidial_live_agents`.`campaign_id` = 'EC')";

//$result2 = mysqli_query($conn, $ssql);

$sql2 = "SELECT * FROM `asterisk`.`vicidial_live_agents` WHERE `asterisk`.`vicidial_live_agents`.`user` NOT IN (SELECT `agent_status`.`agent_id` FROM `chat`.`agent_status`) AND `asterisk`.`vicidial_live_agents`.`campaign_id` = 'EC'";
$result3 = mysqli_query($conn, $sql2);
$now_time = date('Y-m-d H:i:s');
while($data = mysqli_fetch_assoc($result3)){
	$now_id = $data['user'];
	//$ssql2 = "INSERT INTO `agent_status` ('',`date`,`agent_id`,`agent_name`,`status`,`last_status_change`) VALUES ('','$now_time','$now_id','','0','$now_time')";
	$ssql2 = "INSERT INTO `agent_status` VALUES ('','$now_time','$now_id','','0','$now_time')";
	mysqli_query($conn, $ssql2);
}

$sql = "SELECT * FROM `agent_status` WHERE `status` = '1' ORDER BY `last_status_change` DESC";
$result = mysqli_query($conn, $sql);
$row_count = mysqli_num_rows($result);
if($row_count>0){
	while($row = mysqli_fetch_assoc($result)){
		$sql2 = "UPDATE `chat_id` SET `agent_name` = '".$row['agent_id']."',`status` = 'Pending' WHERE `status` = 'NEW' LIMIT 1";
		mysqli_query($conn, $sql2);
		echo mysqli_affected_rows($conn)." Row Updated";
		
	}
}

?>

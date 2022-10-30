<?php
	include('./libs/sqli-db.php');
	$agent_name = $_POST['send_by'];
	$chat_id = $_POST['chat_id'];
	$sql = "UPDATE `chat_id` SET `status` = 'CLOSE', `agent_close` = 'YES' WHERE `id` = '".$chat_id."'";
	mysqli_query($conn, $sql);
	
	$close_sms = "<span class=\"left-info\">Agent <b class=\"user-name-left\">".$agent_name." </b> has end the chat session.</span><br>";
	//$close_sms = urlencode($close_sms);
	$now_time = date('Y-m-d H:i:s');
	$sql2 = "INSERT INTO `chat_customer` (`date`,`chat_id`,`user`,`message`) VALUES ('$now_time','$chat_id','System','$close_sms')";
	mysqli_query($conn, $sql2);
	echo "Success";
	
?>
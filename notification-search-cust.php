<?php
//echo "Test";

session_start();
if(isset($_SESSION['userLiveChat'])){
	include('./libs/chat-db.php');
	$send_by = $_POST['send_by'];
	$chat_id = $_POST['chat_id'];
	$now_time = date('Y-m-d H:i:s');
	$text_message = "";
	//Here send by is the receiver
	$sql = "SELECT * FROM `chat_customer_notification` WHERE `chat_id` = '".$chat_id."'";
	$qry = mysql_query($sql);
	while($row = mysql_fetch_assoc($qry)){		
		$text_message .= "<div class='msgln'>";					
		$text_message .= "<b class='user-name'>".$row['user']."</b>".$row['message']."<br>";
		$text_message .= "<span class='chat-time'>".$row['date']."</span>";
		$text_message .= "</div>";
		$sql3 = "DELETE FROM `chat_customer_notification` WHERE `id` = '".$row['id']."'";
		mysql_query($sql3);
	}
    echo $text_message;
}
?>
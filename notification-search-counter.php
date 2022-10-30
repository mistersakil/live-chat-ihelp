<?php
//echo "Test";

session_start();
if(isset($_SESSION['userLiveChat'])){
	include('./libs/chat-db.php');
	//Here send by is the receiver
	$sql = "SELECT * FROM `internal_conversation_notification` WHERE `received_by` = '".$_SESSION['userLiveChat']."'";
	$qry = mysql_query($sql);
	$text_message = '';
	while($row = mysql_fetch_assoc($qry)){		
		$text_message .= $row['send_by']."|";					
	}
	$text_message = substr($text_message,0,-1);
    echo $text_message;
}
?>
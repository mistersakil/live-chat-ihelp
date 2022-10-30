<?php
session_start();
if (isset($_SESSION['userLiveChat'])) {
	// include('./libs/chat-db.php');
	require('./libs/database.php');
	//Here send by is the receiver
	$sql = "SELECT * FROM `internal_conversation_notification` WHERE `received_by` = '" . $_SESSION['userLiveChat'] . "'";
	$qry = $conn->query($sql);
	$text_message = '';
	while ($row = ($qry->fetch_assoc())) {
		$text_message .= $row['send_by'] . "|";
	}
	$text_message = substr($text_message, 0, -1);
	echo $text_message;
}
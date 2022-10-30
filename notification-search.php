<?php
session_start();
if (isset($_SESSION['userLiveChat'])) {
	require('./libs/database.php');
	$send_by = $_POST['send_by'];
	$received_by = $_POST['received_by'];
	$now_time = date('Y-m-d H:i:s');
	$text_message = "";
	//Here send by is the receiver
	$sql = "SELECT * FROM `internal_conversation_notification` WHERE `send_by` = '" . $received_by . "' AND `received_by` = '" . $send_by . "'";
	$qry = $conn->query($sql);
	while ($row = ($qry->fetch_assoc())) {
		$text_message .= "<div class='msgln'>";
		$text_message .= "<b class='user-name'>" . $row['send_by'] . "</b>" . $row['coversation_sms'] . "<br>";
		$text_message .= "<span class='chat-time'>" . $row['create_time'] . "</span>";
		$text_message .= "</div>";
		$sql3 = "DELETE FROM `internal_conversation_notification` WHERE `id` = '" . $row['id'] . "'";
		$conn->query($sql3);
	}
	echo $text_message;
}
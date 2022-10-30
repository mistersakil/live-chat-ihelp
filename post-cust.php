<?
session_start();
if (isset($_SESSION['userLiveChat'])) {
	// include('./libs/chat-db.php');
	require('./libs/database.php');
	$text = $_POST['text'];
	$send_by = $_POST['send_by'];
	$chat_id = $_POST['chat_id'];
	$now_time = date('Y-m-d H:i:s');

	$sql = "INSERT INTO `chat_customer` (`date`,`chat_id`,`user`,`status`,`message`) VALUES ('$now_time','$chat_id','$send_by','','$text')";
	$conn->query($sql);
	//$sql2 = "INSERT INTO `internal_conversation_notification` (`date`,`chat_id`,`user`,`status`,`message`) VALUES ('$now_time','$chat_id','$send_by','','$text')";
	//$conn->query($sql2);
	$text_message = "<div class='msgln' style='text-align: right;'>";
	$text_message .=  $text . "&nbsp;&nbsp;&nbsp;&nbsp;<b class='user-name' style='background: green;'>" . $send_by . "</b><br>";
	$text_message .=  "<span class='chat-time'>" . $now_time . "</span>";
	$text_message .=  "</div>";
	echo $text_message;
}
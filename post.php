<?
session_start();
if(isset($_SESSION['userLiveChat'])){
	include('./libs/chat-db.php');
	$text = $_POST['text'];
	$send_by = $_POST['send_by'];
	$received_by = $_POST['received_by'];
	$now_time = date('Y-m-d H:i:s');

	$sql = "INSERT INTO `internal_conversation` (`send_by`,`received_by`,`coversation_sms`,`status`,`create_time`) VALUES ('$send_by','$received_by','$text','0','$now_time')";
	mysql_query($sql);
	$sql2 = "INSERT INTO `internal_conversation_notification` (`send_by`,`received_by`,`coversation_sms`,`status`,`create_time`) VALUES ('$send_by','$received_by','$text','0','$now_time')";
	mysql_query($sql2);
    $text_message = "<div class='msgln' style='text-align: right;'>";
	$text_message .=  $text."&nbsp;&nbsp;&nbsp;&nbsp;<b class='user-name' style='background: green;'>".$send_by."</b><br>";
	$text_message .=  "<span class='chat-time'>".$now_time."</span>";
	$text_message .=  "</div>";
    echo $text_message;
	
}
?>
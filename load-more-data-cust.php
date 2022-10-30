<?php
require('./libs/database.php');
$total_message = $_POST['total_message'];
$data_limit = 50;
if ($total_message < 0 && $total_message > -50) {
	$data_limit = 50 + $total_message;
	$total_message = 0;
} else if ($total_message <= -50) {
	$data_limit = 0;
	$total_message = 0;
}

$send_by = $_POST['send_by'];
$chat_id = $_POST['chat_id'];

$text_message = "";
$result_msglist = $conn->query("SELECT * FROM `chat_customer` WHERE chat_id = '" . $chat_id . "' LIMIT " . $total_message . ", " . $data_limit);
while ($row_msglist = ($result_msglist->fetch_assoc())) {
	if ($send_by == $row_msglist['user']) {
		$text_message .= "<div class='msgln' style='text-align: right;'>";
		$text_message .= $row_msglist['message'] . "&nbsp;&nbsp;&nbsp;&nbsp;<b class='user-name' style='background: green;'>" . $row_msglist['user'] . "</b><br>";
		$text_message .= "<span class='chat-time'>" . $row_msglist['date'] . "</span>";
		$text_message .= "</div>";
	} else {
		$text_message .= "<div class='msgln'>";
		$text_message .= "<b class='user-name'>" . $row_msglist['user'] . "</b>" . $row_msglist['message'] . "<br>";
		$text_message .= "<span class='chat-time'>" . $row_msglist['date'] . "</span>";
		$text_message .= "</div>";
	}
}

echo $text_message;
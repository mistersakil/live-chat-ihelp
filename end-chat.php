<?php
// include('./libs/sqli-db.php');
require('./libs/database.php');
$agent_name = $_POST['send_by'];
$chat_id = $_POST['chat_id'];
$sql = "UPDATE `chat_id` SET `status` = 'CLOSE', `agent_close` = 'YES' WHERE `id` = '" . $chat_id . "'";
$conn->query($sql);

$close_sms = "<span class=\"left-info\">Agent <b class=\"user-name-left\">" . $agent_name . " </b> has end the chat session.</span><br>";
//$close_sms = urlencode($close_sms);
$now_time = date('Y-m-d H:i:s');
$sql2 = "INSERT INTO `chat_customer` (`date`,`chat_id`,`user`,`message`) VALUES ('$now_time','$chat_id','System','$close_sms')";
$conn->query($sql2);
echo "Success";
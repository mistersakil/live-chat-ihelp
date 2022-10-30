<?php
session_start();
// include('./libs/sqli-db.php');
require('./libs/database.php');
if ($_SESSION['chat_id'] != '') {
	$chat_id = $_SESSION['chat_id'];
	$sql = "SELECT * FROM `chat_customer` WHERE `chat_id` = '" . $chat_id . "'";
	$result = $conn->query($sql);
	while ($row = ($result->fetch_assoc())) {
?>
<div class='msgln'>
    <span class='chat-time'><?php echo $row['date']; ?></span>
    <b class='user-name'><?php echo $row['user']; ?></b> <?php echo $row['message']; ?><br>
</div>
<?php
	}
} else if ($_SESSION['close_chat_id'] != '') {
	$chat_id = $_SESSION['close_chat_id'];
	$sql = "SELECT * FROM `chat_customer` WHERE `chat_id` = '" . $chat_id . "'";
	$result = $conn->query($sql);
	while ($row = ($result->fetch_assoc())) {
	?>
<div class='msgln'>
    <span class='chat-time'><?php echo $row['date']; ?></span>
    <b class='user-name'><?php echo $row['user']; ?></b> <?php echo $row['message']; ?><br>
</div>
<?php
	}
}
?>
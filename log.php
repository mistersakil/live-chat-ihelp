<?php
session_start();
include('./libs/sqli-db.php');
if($_SESSION['chat_id']!=''){
	$chat_id = $_SESSION['chat_id'];
	$sql = "SELECT * FROM `chat_customer` WHERE `chat_id` = '".$chat_id."'";
	$result = mysqli_query($conn, $sql);
	while($row = mysqli_fetch_assoc($result)){
	?>
		<div class='msgln'>
			<span class='chat-time'><?php echo $row['date']; ?></span>
			<b class='user-name'><?php echo $row['user']; ?></b> <?php echo $row['message']; ?><br>
		</div>
	<?php
	}
} else if ($_SESSION['close_chat_id']!=''){
	$chat_id = $_SESSION['close_chat_id'];
	$sql = "SELECT * FROM `chat_customer` WHERE `chat_id` = '".$chat_id."'";
	$result = mysqli_query($conn, $sql);
	while($row = mysqli_fetch_assoc($result)){
	?>
		<div class='msgln'>
			<span class='chat-time'><?php echo $row['date']; ?></span>
			<b class='user-name'><?php echo $row['user']; ?></b> <?php echo $row['message']; ?><br>
		</div>
	<?php
	}
}
?>

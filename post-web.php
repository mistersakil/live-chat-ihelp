<?
session_start();
if(isset($_SESSION['name'])){
	include('./libs/sqli-db.php');
	$text = $_POST['text'];
	$chat_id = $_POST['chat_id'];
	$user_fullname = $_POST['user_fullname'];
	$now_time = date('Y-m-d H:i:s');
	$check_sql = "SELECT * FROM `chat_id` WHERE `id` = '$chat_id' LIMIT 1";
	$check_result = mysqli_query($conn, $check_sql);
	$result = mysqli_fetch_assoc($check_result);
	if($result['status']!='CLOSE'){
		$sql = "INSERT INTO `chat_customer` (`date`,`chat_id`,`user`,`message`) VALUES ('$now_time','$chat_id','$user_fullname','$text')";
		mysqli_query($conn, $sql);
		
		$sql2 = "INSERT INTO `chat_customer_notification` (`date`,`chat_id`,`user`,`message`) VALUES ('$now_time','$chat_id','$user_fullname','$text')";
		mysqli_query($conn, $sql2);
	}
	
}
?>
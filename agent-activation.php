<?
require('./libs/database.php');

$user = $_POST['user'];
$action = $_POST['action'];
$now_time = date('Y-m-d H:i:s');
if ($action == 'user_status') {
	$sql = "SELECT * FROM `agent_status` WHERE `agent_id` = '$user'";
	$result = $conn->query($sql);
	$row_count = ($result->num_rows);
	if ($row_count > 0) {
		$row = ($result->fetch_assoc());
		$sql2 = "UPDATE `agent_status` SET `date` = '$now_time', `status` = '0', `last_status_change` = '$now_time' WHERE `agent_id` = '$user'";
		$conn->query($sql2);
		echo "Updated";
	} else {
		$sql2 = "INSERT INTO `agent_status` (`date`,`agent_id`,`status`,`last_status_change`) VALUES ('$now_time','$user','0','$now_time')";
		$conn->query($sql2);
		echo "Updated";
	}
} else if ($action == 'active_status') {
	$status = $_POST['status'];
	if ($status == 'YES') {
		$st_status = '1';
	} else if ($status == 'NO') {
		$st_status = '0';
	} else {
		$st_status = '0';
	}
	$ssql = "SELECT * FROM `agent_status` WHERE `agent_id` = '$user'";
	$qry = $conn->query($ssql);
	$row_count = ($qry->num_rows);
	if ($row_count > 0) {
		$sql = "UPDATE `agent_status` SET `status` = '$st_status', `last_status_change` = '$now_time' WHERE `agent_id` = '$user'";
		$conn->query($sql);
		echo "Updated " . $status;
	} else {
		$ssql2 = "INSERT INTO `agent_status` VALUES ('','$now_time','$user','','0','$now_time')";
		$conn->query($ssql2);
	}
} else if ($action == 'active_customer') {
	$sql = "SELECT * FROM `chat_id` WHERE `agent_name` = '$user' AND `agent_close` <> 'YES'";
	$result = $conn->query($sql);
	$my_output = '';
	while ($row = ($result->fetch_assoc())) {
		$my_output = $my_output . "<button type=\"button\" onClick=\"chatlistCustomerSet('" . $user . "','" . $row['id'] . "')\" class=\"btn btn-success btn-block\" style=\"background-color: #5cb85c;height: 35px; margin: 5px; border-radius: 10px;border: 2px solid #0066FF;\"> " . $row['customer_id'] . "</button>";
	}
	echo $my_output;
}
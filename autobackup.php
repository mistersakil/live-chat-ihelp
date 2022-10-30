<?php
include('./libs/sqli-db.php');
$now_time = date('Y-m-d H:i:s');
$time_st = date('Y-m-d H:i:s',strtotime('-3 hour'));
$date_st = date('Y-m-d H:i:s',strtotime('-1 day'));
echo "Now Time: ".$now_time."<br> Updating Before: ".$time_st."<br>Updating Before ID: ".$date_st."<br>";

$sql = "INSERT INTO `chat_customer_history` SELECT * FROM `chat_customer` WHERE `date` < '$time_st'";
$result = mysqli_query($conn, $sql);
echo mysqli_affected_rows($conn)." Chat Row Updated<br>";
$sql2 = "DELETE FROM `chat_customer` WHERE `date` < '$time_st'";
$result2 = mysqli_query($conn, $sql2);
echo mysqli_affected_rows($conn)." Chat Row Deleted<br>";

$sql3 = "INSERT INTO `chat_id_history` SELECT * FROM `chat_id` WHERE `date` < '$date_st'";
$result3 = mysqli_query($conn, $sql3);
echo mysqli_affected_rows($conn)." Chat ID Row Updated<br>";
$sql4 = "DELETE FROM `chat_id` WHERE `date` < '$date_st'";
$result4 = mysqli_query($conn, $sql4);
echo mysqli_affected_rows($conn)." Chat ID Row Deleted<br>";



?>

<?php
// include('./libs/sqli-db.php');
require('./libs/database.php');
$now_time = date('Y-m-d H:i:s');
$time_st = date('Y-m-d H:i:s', strtotime('-3 hour'));
$date_st = date('Y-m-d H:i:s', strtotime('-1 day'));
echo "Now Time: " . $now_time . "<br> Updating Before: " . $time_st . "<br>Updating Before ID: " . $date_st . "<br>";

$sql = "INSERT INTO `chat_customer_history` SELECT * FROM `chat_customer` WHERE `date` < '$time_st'";
$result = $conn->query($sql);
echo ($conn->affected_rows) . " Chat Row Updated<br>";
$sql2 = "DELETE FROM `chat_customer` WHERE `date` < '$time_st'";
$result2 = $conn->query($sql2);
echo ($conn->affected_rows) . " Chat Row Deleted<br>";

$sql3 = "INSERT INTO `chat_id_history` SELECT * FROM `chat_id` WHERE `date` < '$date_st'";
$result3 = $conn->query($sql3);
echo ($conn->affected_rows) . " Chat ID Row Updated<br>";
$sql4 = "DELETE FROM `chat_id` WHERE `date` < '$date_st'";
$result4 = $conn->query($sql4);
echo ($conn->affected_rows) . " Chat ID Row Deleted<br>";
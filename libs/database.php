<?php
$username = "root";
$password = "iHelpBD@2017";
$hostname = "localhost";
$con = mysql_connect($hostname, $username, $password)
    or die("Unable to connect to MySQL");
mysql_select_db("asterisk", $con);

if (!$con) {
    die('Could not connect to database! Server ip - ' . $hostname . ' <br/>');
}

//mysql_close($connect);
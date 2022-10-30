<?php

$host = 'localhost';
$user = 'root';
$pass = 'iHelpBD@2017';
$db = 'chat';


/*$mysqli = new mysqli($host,$user,$pass,$db);

// Check connection
if ($mysqli -> connect_errno) {
  echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
  exit();
}*/

// Create connection
$conn = mysqli_connect($host, $user, $pass, $db);

// Check connection
if (!$conn) {
  die("Connection failed: " . mysqli_connect_error());
}
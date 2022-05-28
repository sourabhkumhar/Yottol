<?php

$servername = 'remotemysql.com';
$username = '4lkcOMDRFj';
$password = 'PcLAMlQhz4';
$database = '4lkcOMDRFj';

$conn = mysqli_connect($servername, $username, $password, $database);

if(!$conn) {
    die('Connection Error: '.mysqli_connect_error());
}

?>
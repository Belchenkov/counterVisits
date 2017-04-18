<?php
// Config for connect database
$db_host = 'localhost';
$db_name = 'counterVisits';
$db_user = 'root';
$db_pass = '';

$db = mysqli_connect($db_host, $db_user, $db_pass, $db_name);

// Set Charset
mysqli_set_charset($db, 'utf8');

// Test Connection
if(mysqli_connect_errno()){
    echo 'DB Connection Error: '.mysqli_connect_error();
}

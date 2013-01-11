<?php
$database    = 'b';
$dbHost      = 'localhost';
$dbUser      = 'root';
$dbPass      = 'q';

$connection  = mysql_connect ($dbHost, $dbUser, $dbPass);
mysql_select_db ($database, $connection) or die                     
 ('Error connecting to mysql');

?>

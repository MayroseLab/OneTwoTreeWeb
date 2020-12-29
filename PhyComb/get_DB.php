<?php
//Step1
$phyComb_db->open ('/data/www/html/oneTwoTree/PhyComb/PhyComb.db');

$result = $phyComb_db->query('SELECT * FROM Traits');
var_dump($result->fetchArray());
 or die('Error connecting to MySQL server.');
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        echo "Row: " . $row"

?>

<html>
 <head>
 </head>
 <body>
 <h1>PHP connect to MySQL</h1>
</body>
</html>
<?php

$host = 'mysql';
$dbname = 'mdb';
$user = 'mdb';
$password = 'mdb';

try {
	  $db = new PDO("mysql:host=$host;dbname=$dbname", $user, $password);
	  $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
	  $db->exec("set names utf8");
}
catch(PDOException $e) {
      echo $e->getMessage();
}



try {
	$stmt = $db->query("SELECT * FROM persons LIMIT 20");
	while ($row = $stmt->fetch()) {
	    echo $row['id'].'. '.$row['title'].' - '.$row['description']."<br>";	    
	}
}
catch(PDOException $e) {
	echo 'No records';
}


?>

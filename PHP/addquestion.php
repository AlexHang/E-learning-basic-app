<?php

header('Access-Control-Allow-Origin: *');  
$servername = "localhost";
$username = "id1180072_admin";
$password = "admin";
$dbname = "id1180072_lessons";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
if($_POST["quiz"]==1){
    $sql = "INSERT INTO `Quiz1` (`Intrebare`, `raspuns1`, `raspuns2`, `raspuns3`, `corect`) VALUES ('".$_POST["Question"]."', '".$_POST["a1"]."', '".$_POST["a2"]."', '".$_POST["a3"]."', '".$_POST["corect"]."');
";
    }
if($_POST["quiz"]==2){
    $sql = "INSERT INTO `Quiz2` (`Intrebare`, `raspuns1`, `raspuns2`, `raspuns3`, `corect`) VALUES ('".$_POST["Question"]."', '".$_POST["a1"]."', '".$_POST["a2"]."', '".$_POST["a3"]."', '".$_POST["corect"]."');
";
    }
    
    
if ($conn->query($sql) === TRUE) {
    echo "New record created successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
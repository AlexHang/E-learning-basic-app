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
    $sql = 'SELECT * FROM `Users` WHERE `ID` = "'.$_GET["Username"].'"';
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
             if($row["Quiz1"]*1>=75)
                echo 'true';
                else echo 'false';
        }
    }
    else echo "undefined";

?>
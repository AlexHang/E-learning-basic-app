<?php
 header('Access-Control-Allow-Origin: *');  
header('Content-Type: application/json');

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

$sql = "SELECT * FROM `Quiz2` ORDER BY RAND() LIMIT 10";
$result = $conn->query($sql);
$response = [];
if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
      $response[] = $row;
    }
} else {
   
}

echo json_encode($response);
$conn->close();
?>
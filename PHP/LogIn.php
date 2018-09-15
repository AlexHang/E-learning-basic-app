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

if($_POST["Username"]=="admin" && $_POST["Password"]=="admin")
{
    echo "admin";
}
else {
    $sql = 'SELECT * FROM `Users` WHERE `UserName` = "'.$_POST["Username"].'" AND `Password` = "'.$_POST["Password"].'"';
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
        // output data of each row
        while($row = $result->fetch_assoc()) {
             echo $row["ID"];
        }
    }
    else echo "undefined";
}
?>
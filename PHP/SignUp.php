<?php
 header('Access-Control-Allow-Origin: *');  


$servername = "localhost";
$username = "id1180072_admin";
$password = "admin";
$dbname = "id1180072_lessons";



if($_POST["Username"]=="admin" && $_POST["Password"]=="admin")
{
    echo "error";
}
else {
       // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);
    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    } 
    
    $sql = "SELECT * FROM `Users` WHERE `UserName` = '".$_POST["Username"]."'";
    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
       echo 'error, username already taken';
    }
    
    else {
    
    $sql = "INSERT INTO `Users` (`UserName`, `Password`, `Quiz1`, `Quiz2`) VALUES ('".$_POST["Username"]."', '".$_POST["Password"]."', '0', '0');";
    //echo $sql;
        if ($conn->query($sql) === TRUE) {
            $last_id = $conn->insert_id;
            echo $last_id;
        } else {
            echo "error";
           
        }
    }
    $conn->close();
    
}
?>
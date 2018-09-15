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
    
    $sql = "SELECT * FROM `Users` WHERE `ID` = '".$_GET["Username"]."'";
    $result = $conn->query($sql);
    
    if ($result->num_rows > 0) {
       while($row = $result->fetch_assoc()) {
            $scor = $row["Quiz1"];
        }
    }
    if($scor < $_GET["rezultat"])
 {
    
    $sql = "UPDATE `Users` SET `Quiz1` = '".$_GET["rezultat"]."' WHERE `Users`.`ID` = ".$_GET["Username"];
    //echo $sql;
        if ($conn->query($sql) === TRUE) {
           echo "ok";
        } else {
            echo "error";
           
        }
    }
    $conn->close();
    

?>
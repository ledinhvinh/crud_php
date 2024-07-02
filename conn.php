<?php
   $servername = "localhost";
   $username = "root";
   $password = "";
   $databasename = "dcn_examphp";

   $conn = mysqli_connect($servername, $username, $password, $databasename);
   if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    exit();
  }
  
?>
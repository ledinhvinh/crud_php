<?php
include "conn.php";
if (isset($_GET['id'])) {
    $id = $_GET['id'];
    $sql = "DELETE FROM `products` WHERE product_id = $id";
    $result = mysqli_query($conn, $sql);
    if ($result) {
       header("location: index.php");
    }
}
?>
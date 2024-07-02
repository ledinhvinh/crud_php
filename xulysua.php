<?php
include "conn.php";
    if(isset($_POST['submit'])){
        $id = $_POST['id'];
        $name = $_POST['name'];
        $price = $_POST['price'];
        $quantity = $_POST['quantity'];
        $file = $_FILES['img'];
        $file_name = $file['name'];
        move_uploaded_file($file['tmp_name'],'uploads/'.$file_name);
        $text = $_POST['text'];
        $cateid = $_POST['cateid'];
        $sql = "UPDATE `products` SET `product_name`='$name',`price`='$price',`quantity`='$quantity',`images`='$file_name',`description`=' $text',`cate_id`='$cateid' WHERE `product_id`='$id'";
        $result = mysqli_query($conn, $sql);
         if ($result) {
            header("location: index.php");
         }
    }else{
        header("location: sua.php");
    }
        ?>
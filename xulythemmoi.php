<?php
include "conn.php";
    if(isset($_POST['submit'])){
        $name = $_POST['name'];
        $price = $_POST['price'];
        $quantity = $_POST['quantity'];
        $file = $_FILES['img'];
        $file_name = $file['name'];
        move_uploaded_file($file['tmp_name'],'uploads/'.$file_name);
        $text = $_POST['text'];
        $cateid = $_POST['cateid'];
        $sql1 = "INSERT INTO `products`(`product_id`, `product_name`, `price`, `quantity`, `images`, `description`, `cate_id`) 
        VALUES
         ('','$name','$price','$quantity','$file_name','$text','$cateid')";
         $result = mysqli_query($conn,$sql1);
         if ($result) {
            header("location: index.php");
         }
    }else{
        header("location: themmoi.php");
    }
        ?>
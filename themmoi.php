<?php
include "conn.php";
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
    <div class="container-fluid">
        <h3 class="mt-3 text-primary text-center">Thêm Mới</h3>
        <form action="xulythemmoi.php" method="post" enctype="multipart/form-data">
            <div class="mb-3">
                <label for="" class="form-label">Product_name: </label>
                <input type="text" class="form-control" name="name" required autofocus>
            </div>
            <div class="mb-3">
                <label for="" class="form-label">Price: </label>
                <input type="number" class="form-control" name="price" required>
            </div>
            <div class="mb-3">
                <label for="" class="form-label">Quantity: </label>
                <input type="number" class="form-control" name="quantity" required>
            </div>
            <div class="mb-3">
                <label for="" class="form-label">Image: </label>
                <input type="file" class="form-control" name="img">
            </div>
            <div class="mb-3">
                <label for="" class="form-label">Description: </label>
                <textarea class="form-control" rows="5" id="comment" name="text"></textarea>

            </div>
            <div class="mb-3">
                <label for="" class="form-label">Cate_id: </label>
                <select class="form-select" name="cateid" required>
                    <?php 
                    $sql = "SELECT * FROM categories";
                    $rs = mysqli_query($conn, $sql);
                    if(mysqli_num_rows($rs) > 0){
                        while($row = mysqli_fetch_array($rs)){
                        
                        
                    ?>
                    <option value="<?php echo $row['cate_id'];?>"><?php echo $row['cate_name'];?></option>
                    <?php 
                    }
                }
                    ?>
                </select>
            </div>
            <div class="mb-3">
                <input type="submit" class="btn-primary" name="submit">


            </div>


        </form>
        
    </div>
</body>

</html>
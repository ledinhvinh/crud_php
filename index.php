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
    <div class="contanier-fluid">
    <div class="row">
    <div class="col-xl-12 col-lg-12">
                                <div class="card shadow mb-4">
                                    <div class="card-header py-3">
                                        <h6 class="m-0 font-weight-bold text-primary">Bài Thi Môn PHP</h6>
                                    </div>
                                    <div class="card-body">
                                        <div class="form-row">

                                            <div class="col-md-3 mt-2">
                                                <br>
                                                <a href="themmoi.php" class="btn btn-primary">Thêm Mới</a>
                                            </div>
                                        </div>

                                        <div class="table-responsive">
                                            <table class="table table-bordered" width="100%" cellspacing="0" id="table">
                                                <thead>
                                                    <tr>
                                                        <th>ID</th>
                                                        <th>Tên Sản Phẩm</th>
                                                        <th>Giá</th>
                                                        <th>Số Lượng</th>
                                                        <th>Ảnh</th>
                                                        <th>Mô Tả</th>
                                                        <th>Thể Loại</th>
                                                        <th style="width: 200px; text-align: center;">Action</th>
                                                    </tr>
                                                </thead>
                                                <?php 
                                                $sql = "SELECT * FROM products INNER JOIN categories ON products.cate_id = categories.cate_id";
                                                $rs = mysqli_query($conn, $sql);
                                                if(mysqli_num_rows($rs) > 0){
                                                    
                                                    while($row = mysqli_fetch_array($rs)){

                                                   
                                                ?>
                                                        <tbody>
                                                            <tr>
                                                                <td><?php echo $row['product_id']; ?></td>
                                                                <td><?php echo $row['product_name']; ?></td>
                                                                <td>
                                                                    <?php echo $row['price']; ?>
                                                                </td>
                                                                <td><?php echo $row['quantity']; ?></td>
                                                                
                                                                <td><img alt="img_error" src="uploads/<?php echo $row['images']; ?>" style="max-width: 150px; max-height: 100px;"></td>
                                                                <td><?php echo $row['description']; ?></td>
                                                                <td><?php echo $row['cate_name']; ?></td>

                                                                <td>
                                                                    <a href="sua.php?id=<?php echo $row['product_id']; ?>"
                                                                        name="sualistsach" class="btn btn-secondary">Sửa</a>
                                                                    <a onclick="return confirm('Xác Nhận Xóa ?')"
                                                                        href="xoa.php?id=<?php echo $row['product_id']; ?>"
                                                                        class="btn btn-danger">Xóa</a>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                      <?php
                                                       }
                                                    }
                                                      ?>
                                           
                                            </table>
                                            
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
    </div>
    </div>
</body>
</html>
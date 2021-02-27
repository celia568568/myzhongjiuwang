<?php
    $username = $_POST['username'];
    $productId = $_POST['productId'];

    $con = mysqli_connect('localhost','root','123456','zjw');
    $sql = "DELETE FROM `cart` WHERE `username` = '$username' AND `productId` = '$productId' ";
    $res = mysqli_query($con,$sql);

    if(!$res){
        die('数据库连接失败'.mysqli_error($con));
    };

    print_r(json_encode(array('code'=>$res,'msg'=>'删除成功!'),JSON_UNESCAPED_UNICODE));

?>
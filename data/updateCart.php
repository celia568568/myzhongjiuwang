<?php
    $username = $_POST['username'];
    $productId = $_POST['productId'];
    $num = $_POST['num'];

    $con = mysqli_connect('localhost','root','123456','zjw');
    $sql = "UPDATE `cart` SET `num` = '$num' WHERE `username` = '$username' AND `productId` = '$productId' ";
    $res = mysqli_query($con,$sql);

    if(!$res){
        die('数据库连接失败'.mysqli_error($con));
    };
    
    print_r(json_encode(array('code'=>$res,'msg'=>'修改成功!'),JSON_UNESCAPED_UNICODE));
?>
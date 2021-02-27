<?php
    $username = $_POST['username'];
    $productId = $_POST['productId'];
    $num = $_POST['num'];

    $con = mysqli_connect('localhost','root','123456','zjw');
    $sql = "SELECT * FROM `cart` WHERE `username` = '$username' AND `productId` = '$productId' ";
    $res = mysqli_query($con,$sql);

    if(!$res){
        die('数据库连接失败'.mysqli_error($con));
    };
    $row = mysqli_fetch_assoc($res);
   
    if(!$row){
        //如果cart中没有该项商品记录，就添加
        $sqlAdd = "INSERT INTO `cart` values(null,'$username','$productId','$num') ";
        $resAdd = mysqli_query($con,$sqlAdd);

        if(!$resAdd){
            die('数据库连接失败'.mysqli_error($con));
        };
        print_r(json_encode(array('code'=>$resAdd,'msg'=>'数据添加成功'),JSON_UNESCAPED_UNICODE));
    };

    //如果已经有该项商品记录，就让num+$num;
    $num = $num + $row['num']*1;
    $sqlNum = "UPDATE `cart` SET `num` = '$num' WHERE `username` = '$username' AND `productId` = '$productId' ";
    $resNum = mysqli_query($con,$sqlNum);

    if(!$resNum){
        die('数据库连接失败'.mysqli_error($con));
    };
    print_r(json_encode(array('code'=>$resNum,'msg'=>'数据更新成功!'),JSON_UNESCAPED_UNICODE));
?>
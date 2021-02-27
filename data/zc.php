<?php
    $username = $_POST['username'];
    $tel = $_POST['tel'];
    $password = $_POST['password'];

    $con = mysqli_connect('localhost','root','123456','zjw');
    $sql = "SELECT * FROM `userlist` WHERE `username` = '$username' ";

    $res = mysqli_query($con,$sql);
    if(!$res){
        die('数据库连接失败'.mysqli_error($con));
    };

    $row = mysqli_fetch_assoc($res);
    if($row){
        print_r("用户名已被占用，请重新填写!");
    }else{
        $sqln = "INSERT INTO `userlist` VALUES (null,'$username','$tel','$password') ";
        $resn = mysqli_query($con,$sqln);
        print_r($resn);
    };

?>
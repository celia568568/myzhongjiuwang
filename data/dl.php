<?php
    $username = $_POST['username'];
    $password = $_POST['password'];

    $con = mysqli_connect('localhost','root','123456','zjw');
    $sql = "SELECT * FROM `userlist` WHERE `username` = '$username' AND `password` = '$password'";

    $res = mysqli_query($con,$sql);
    if(!$res){
        die('数据库连接失败'.mysqli_error($con));
    };

    $row = mysqli_fetch_assoc($res);
    if($row){     
        print_r(json_encode(array('code'=>1,'msg'=>'登录成功'),JSON_UNESCAPED_UNICODE));
    }else{
        print_r(json_encode(array('code'=>0,'msg'=>"用户名或密码输入不正确!"),JSON_UNESCAPED_UNICODE));
    };
?>
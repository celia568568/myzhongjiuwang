<?php
    $username = $_POST['username'];

    $con = mysqli_connect('localhost','root','123456','zjw');
    $sql = "SELECT * FROM `cart` WHERE `username` = '$username' ";
    $res = mysqli_query($con,$sql);

    if(!$res){
        die('数据库连接失败'.mysqli_error($con));
    };

    $rowCart = mysqli_fetch_assoc($res);

    if(!$rowCart){
        print_r(json_encode(array('code'=>'empty','msg'=>"购物车是空的，快去选购商品吧!"),JSON_UNESCAPED_UNICODE));
    }else{
        $arrCart = array();
        while($rowCart){
        array_push($arrCart,$rowCart);
        $rowCart = mysqli_fetch_assoc($res);
        };    

        // print_r(json_encode($arrCart,JSON_UNESCAPED_UNICODE));

        //根据cart中的productId去zjwitems中查找对应的商品数据返回给前端
        $sqlItem = "SELECT * FROM `zjwitems` WHERE `productId` IN (SELECT `productId` FROM `cart` WHERE `username` = '$username') ";
        $resItem = mysqli_query($con,$sqlItem);
        // print_r(json_encode($resItem,JSON_UNESCAPED_UNICODE));
        
        if(!$resItem){
            die('数据库连接失败'.mysqli_error($con));
        };
        $arrItem = array();
        $rowItem = mysqli_fetch_assoc($resItem);
        while($rowItem){
            array_push($arrItem,$rowItem);
            $rowItem = mysqli_fetch_assoc($resItem);
        };
        // print_r(json_encode($arrItem,JSON_UNESCAPED_UNICODE));

        for($i = 0; $i < count($arrCart); $i++){
            for($k = 0; $k < count($arrItem); $k++){
                if($arrCart[$i]['productId'] == $arrItem[$k]['productId']){
                    $arrItem[$k]['num'] = $arrCart[$i]['num'];
                };
            };
        };
        print_r(json_encode($arrItem,JSON_UNESCAPED_UNICODE));
    };

?>
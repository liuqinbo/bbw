<?php
$DB=mysqli_connect("127.0.0.1","root","","bbw");
mysqli_query($DB,"set names 'utf8'");
mysqli_query($DB,"set character set 'utf8'");

$type= $_REQUEST["type"];
$id=$_REQUEST["id"]*1;
$num2=$_REQUEST["num"]*1;
 if($type=='set'){
     $content_shopping="SELECT * FROM `shopping` WHERE `id`= $id ";
     $data_shopping=mysqli_query($DB,$content_shopping);
     $row = mysqli_num_rows($data_shopping)*1;
     if($row==0){ //数据库里还没有数据，写入数据
        $content_home="SELECT * FROM `home` WHERE `id`= $id";  //用id在home(首页)表里拿到相对应的数据，然后写入到shopping(购物车表)
        $result_home=mysqli_query($DB,$content_home);
        $data_home=mysqli_fetch_all($result_home, MYSQLI_ASSOC);    //   拿到对应的对象，下面是数据的写入
        $id=$data_home[0]['id'];  
        $content= $data_home[0]["content"];
        $price= $data_home[0]["price1"];
        $src= $data_home[0]["src"];      
        $data_shopping="INSERT INTO `bbw`.`shopping` (`src` , `content` , `price` , `num` , `subtotal` , `id` )
            VALUES ('$src', ' $content', '$price', '1', '$price', '$id')";
        mysqli_query($DB, $data_shopping);
         
     }elseif($row==1){  //数据库已有了，更新数据
        $data_shopping = mysqli_fetch_all($data_shopping, MYSQLI_ASSOC);  //拿到对应的数据，下面是更新
        $num = $data_shopping[0]["num"] + 1;
        $subtotal = $data_shopping[0]["price"] * $num;
        $updateSql = "UPDATE `bbw`.`shopping` SET `num` ='$num',`subtotal`='$subtotal' WHERE id= '$id' ";
        mysqli_query($DB, $updateSql);
     }
    //  $totalCount = "SELECT * FROM  shopping"; 
    //  $result = mysqli_query($DB, $totalCount);
    //  $row = mysqli_num_rows($result);
    //  echo '{"totalRow":'.$row.'}';  //算出数据的总行数
}
else if($type=="get"){
    $get_content="SELECT * FROM shopping";
    $get_result=mysqli_query($DB,$get_content);
    echo json_encode(mysqli_fetch_all($get_result, MYSQLI_ASSOC), true);
}
else if($type=="del"){
    $del_content="DELETE FROM `bbw`.`shopping` WHERE `id`= $id";
    $del_result=mysqli_query($DB,$del_content);
}
else if($type=="change"){
    $content_shopping="SELECT * FROM `shopping` WHERE `id`= $id";  
    $result_shopping=mysqli_query($DB,$content_shopping);
    $data_shopping=mysqli_fetch_all($result_shopping, MYSQLI_ASSOC); 
    $num = $num2*1;
    $subtotal= $data_shopping[0]["price"]*$num;
    $updateSql = "UPDATE `bbw`.`shopping` SET `num` ='$num',`subtotal`='$subtotal' WHERE id= '$id' ";
    mysqli_query($DB, $updateSql);
}

?>
<?php

header("Content-Type: text/html;charset=utf-8");  //设置文本为utf-8格式
$DB=mysqli_connect("127.0.0.1","root","","bbw");
mysqli_query($DB,"set names 'utf8'");//设置时文字标准化
$phone=$_REQUEST["phone"];
$pwd=$_REQUEST["password"];
if($_REQUEST["type"]=="reg"){
    $content="INSERT INTO `bbw`.`iar` (`phone` ,`password`)VALUES ('$phone', '$pwd')";
    $res=mysqli_query($DB,$content);
    echo $res;
    return;
}else if($_REQUEST["type"]=="sing"){
    $content="SELECT * FROM `iar` WHERE `phone` LIKE '$phone'";
     $res1=mysqli_query($DB,$content);
    echo json_encode(mysqli_fetch_all($res1, MYSQLI_ASSOC), true);
    return;
}
?>
<?php
$DB=mysqli_connect("127.0.0.1","root","","bbw");
mysqli_query($DB,"set character set 'utf8'");//读库文字标准化



if($_REQUEST["type"]=="A"){

    $content="SELECT *FROM `home`WHERE `sort` LIKE 'list'";
    $result = mysqli_query($DB,$content);
    echo json_encode(mysqli_fetch_all($result, MYSQLI_ASSOC), true);

}else if($_REQUEST["type"]=="B"){

    $content="SELECT *FROM `home`WHERE `sort` LIKE 'small_list'";
    $result = mysqli_query($DB,$content);
    echo json_encode(mysqli_fetch_all($result, MYSQLI_ASSOC), true);
    
}else if($_REQUEST["type"]=="C"){
    $count =$_REQUEST["index"]*30;
    $content="SELECT *FROM `home`WHERE `sort` LIKE 'left-content' LIMIT $count, 30";
    $result = mysqli_query($DB,$content);
    echo json_encode(mysqli_fetch_all($result, MYSQLI_ASSOC), true);

}else if($_REQUEST["type"]=="D"){
    $content="SELECT *FROM `home`WHERE `sort` LIKE 'right-content1' ";
    $result = mysqli_query($DB,$content);
    echo json_encode(mysqli_fetch_all($result, MYSQLI_ASSOC), true);
}

?>

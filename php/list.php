<?php
$DB=mysqli_connect("127.0.0.1","root","","bbw");
mysqli_query($DB,"set character set 'utf8'");//读库文字标准化
$type=$_REQUEST["type"];  //类型
 $content=$_REQUEST["con"];//传来的内容
$index=$_REQUEST["index"]; //传来的index，按照这个来拿数据，从第几个开始。
$index=$index*20;
if($type=="A"){
    $content="SELECT *FROM `list`WHERE `type` LIKE '$content' limit $index,20";  //拿到当前的类型的20个数据
    $result = mysqli_query($DB,$content);   //执行代码
    echo json_encode(mysqli_fetch_all($result, MYSQLI_ASSOC), true);    //   转换为json对象返回
}
else if($type=="B"){
    $content="SELECT count(TYPE) as count FROM `list`WHERE `type` LIKE '$content'"; //判断有多少个这个类型的数据
    $result = mysqli_query($DB,$content);
    echo json_encode(mysqli_fetch_all($result, MYSQLI_ASSOC), true);
}
else if($type=="DESC"){
    $content="SELECT * FROM `list` WHERE `type` LIKE '$content' ORDER BY `price1` DESC limit $index,20";   //按照价格降序排列
    $result = mysqli_query($DB,$content);
    echo json_encode(mysqli_fetch_all($result, MYSQLI_ASSOC), true);
}
else if($type="ASC"){
    $content="SELECT * FROM `list` WHERE `type` LIKE '$content' ORDER BY `price1` ASC limit $index,20"; //按照价格升序排列
    $result = mysqli_query($DB,$content);
    echo json_encode(mysqli_fetch_all($result, MYSQLI_ASSOC), true);
}

?>
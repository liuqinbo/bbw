<?php
$DB=mysqli_connect("127.0.0.1","root","","bbw");
mysqli_query($DB,"set character set 'utf8'");//读库
$content="SELECT *FROM `home`WHERE `sort` LIKE 'list'";
$result = mysqli_query($DB,$content);
echo json_encode(mysqli_fetch_all($result, MYSQLI_ASSOC), true);




// if($_REQUEST["type"]=="A"){
//     echo 'liuqinbo';
// }else if($_REQUEST["type"]=="B"){

// }else if($_REQUEST["type"]=="C"){

// }else if($_REQUEST["type"]=="D"){

// }

?>

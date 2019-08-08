<?php


//  $data=file_get_contents("../json/list.json");
//  $data=json_decode($data,true);
//  $data=file_get_contents("../json/list.json");
//  $data=json_decode($data,true);
//  $left=$data["left-content"];
//  $right=$data["right-content"];
//  $small_list=$data["small-list"];
//  $list=$data["list"];


//  $(".lazy").map((index,ele)=>{console.log(ele.src)})
//  $(".title").map((index,ele)=>{console.log(ele.innerHTML)})
//  $(".price-num").map((index,ele)=>{console.log(ele.innerHTML)})
//  $(".old-price").map((index,ele)=>{console.log(ele.innerHTML)})
//  $(".discount-box").map((index,ele)=>{console.log(ele.innerHTML)})
//  $(".lazy").map((index,ele)=>{
//      return {"src":$(".lazy")[index].src,
//      "content":$(".title")[index].innerHTML,
//      "price1":$(".price-num")[index].innerHTML,
//      "price2":$(".old-price")[index].innerHTML,
//      "discount":$(".discount-box")[index].innerHTML},
//  })

//  for($i=0;$i<count($data);$i++){  
//     $src=$data[$i]["src"];
//     $content=$data[$i]["content"];
//     $price1=$data[$i]["price1"];
//     $price2=$data[$i]["price2"];
//     $discount=$data[$i]["discount"];
//     $DB=mysqli_connect("127.0.0.1","root","","bbw");
//     $into="INSERT INTO `bbw`.`list` ( `type` , `src` ,`price1` ,`price2` ,`discount` ,`content`)
//     VALUES ( '母婴','$src', '$price1', '$price2', '$discount', '$content')";
//     mysqli_query($DB,"set names 'utf8'"); //设置文字编码，解决乱码问题
//     mysqli_query($DB,$into);
//  }



//  for($i=0;$i<count($left);$i++){  left-content;
//     $src=$left[$i]["src"];
//     $content=$left[$i]["content"];
//     $price1=$left[$i]["price1"];
//     $price2=$left[$i]["price2"];
//     $discount=$left[$i]["discount"];
//     $DB=mysqli_connect("127.0.0.1","root","","bbw");
//     $into="INSERT INTO `bbw`.`home` (`src`, `content`, `price1`, `price2`, `discount`, `sort`,`type`);
//     VALUES (' $src', ' $content', ' $price1', ' $price2', ' $discount', 'left-content', '')";
//     mysqli_query($DB,"set names 'utf8'"); //设置文字编码，解决乱码问题
//     mysqli_query($DB,$into);
//  }

// for($i=0;$i<count($right);$i++){//right-content
//     $src=$right[$i]["src"];
//     $content=$right[$i]["content"];
//     $price1=$right[$i]["price1"];
//     $price2=$right[$i]["price2"];
//     $type1=$right[$i]["type"];
//     $DB=mysqli_connect("127.0.0.1","root","","bbw");
//     $into="INSERT INTO `bbw`.`home` (`src`, `content`, `price1`, `price2`, `discount`, `sort`,`type`)
//     VALUES (' $src', ' $content', ' $price1', ' $price2', '', 'right-content', '$type')";
//     mysqli_query($DB,"set names 'utf8'"); //设置文字编码，解决乱码问题
//     mysqli_query($DB,$into);
// }

// for($i=0;$i<count( $small_list);$i++){//small-list
//     $src= $small_list[$i]["src"];
//     $content= $small_list[$i]["content"];
//     $price1= $small_list[$i]["price1"];
//     $DB=mysqli_connect("127.0.0.1","root","","bbw");
//     $into="INSERT INTO `bbw`.`home` (`src`, `content`, `price1`, `price2`, `discount`, `sort`,`type`)
//     VALUES ('$src', ' $content', '$price1', ' ', '', 'small_list', '')";
//     mysqli_query($DB,"set names 'utf8'"); //设置文字编码，解决乱码问题
//     mysqli_query($DB,$into);
// }

// for($i=0;$i<count( $list);$i++){//list-content
//     $src= $list[$i]["src"];
//     $content= $list[$i]["content"];
//     $type=$list[$i]["type"];
//     $DB=mysqli_connect("127.0.0.1","root","","bbw");
//     $into="INSERT INTO `bbw`.`home` (`src`, `content`, `price1`, `price2`, `discount`, `sort`,`type`)
//     VALUES ('$src', '$content', '', '', '', 'list', '$type')";
// mysqli_query($DB,"set names 'utf8'"); //设置文字编码，解决乱码问题 $DB为数据库赋给的值
// mysqli_query($DB,"set character set 'utf8'");//读库文字编码，解决乱码问题

//     mysqli_query($DB,$into);
// }

?>
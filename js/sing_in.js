
function sing_in(str, str1) {

    reg = /^1[3-9][0-9]{9}$/;
    reg1 = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$/;
    if (!reg.test(str)) {
        alert("账号输入错误");
        return;
    }
    if (!reg1.test(str1)) {
        alert("密码输入错误");
        return;
    }
    if ($(".checkbox")[0].checked) {  //自动登录
        obj.setcookies("username", str, 7);
        obj.setcookies("password", str1, 7);
    }
    str = md5(str).substring(2, 20); //加密处理,账号
    str1 = md5(str1).substring(4, 22); //密码
    $.ajax({
        type: "post",
        url: "../php/iar.php",
        data: {
            "phone": `${str}`,
            "password": `${str1}`,
            "type": "sing"
        },
        dataType: "json",
        success: function (response) {
            if ((response == "") || response[0].phone != str) {
                obj.clearcookies();
                alert("登录失败,账号输入错误");
                return;
            }
            if (response[0].password != str1) {
                obj.clearcookies();
                alert("密码输入错误");
                return;
            }
            alert("登录成功");
            window.location.href = "../html/index.html";
        },
        error: (data) => {
            alert(`${data.status} ${data.statusText} `)
            console.log(data)
        }

    });
}
let use = obj.getcookies("username");
let pass = obj.getcookies("password");
if (use && pass) {
    sing_in(use, pass);
}
$(".button2").click(() => {
    let str = $("input").eq(0).val();  //账号
    let str1 = $("input").eq(1).val(); //密码
    sing_in(str, str1);
})

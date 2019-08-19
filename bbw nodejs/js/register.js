$(function () {
    $(".button2").click(() => {
        let str = $("input").eq(0).val();
        let str1 = $("input").eq(1).val();
        let str2 = $("input").eq(2).val();
        reg = /^1[3-9][0-9]{9}$/;
        reg2 = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{6,16}$/;
        if (!reg.test(str)) {
            alert("手机格式错误");
            return;
        }
        if (!reg2.test(str2)) {
            alert("密码格式错误");
            return;
        }
        str = md5(str).substring(2, 20); //加密处理,账号
        str2 = md5(str2).substring(4, 22); //密码

        $.ajax({
            type: "post",
            url: "/iar",
            data: {
                "phone": `${str}`,
                "password": `${str2}`,
                "type": "reg"
            },
            // dataType: "dataType",
            success: function (response) {
                if (!response) {
                    alert("注册失败，手机号已注册");
                    return;
                }
                alert("注册成功")
            },
            error: (data) => {
                alert(`${data.status} ${data.statusText} `)
                console.log(data)
            }

        });
    })
    $("#change").click(() => {
        if ($("#pwd")[0].type == "password") {
            $("#pwd")[0].type = "text";
        } else if ($("#pwd")[0].type == "text") {
            $("#pwd")[0].type = "password";
        }
    })
})
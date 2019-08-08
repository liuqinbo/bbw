class head_footer {
    constructor() {
        this.list();
        this.scroll_top();
        this.sing_in();
        this.jump_listpage();
    }

    list() {
        let res = this.ajax("A");  //网络请求
        let count = 0;
        let count1 = 0;
        let timer = setInterval(() => {
            if (res.responseJSON) {
                clearInterval(timer);
                function list(type) {
                    let e1 = res.responseJSON.map((ele, index) => {
                        if (ele.type == type) {
                            var html = `<li>
                        <img src="${ele.src}" alt="">
                        <p>${ele.content}</p>
                  </li>`

                        } return html;
                    }).join("");
                    let ll = $(`<li></li>`).html(`${type}<ul class="hidden" style="top:${2000 * count1}px" >${e1}</ul >`) //设置top值不让其影响鼠标事件
                    $("#search-ul").append(ll);
                    count1++;
                }
                list("热销分类");
                list("儿童服饰");
                list("婴儿装");
                $("#search-ul>li").eq(0).addClass("active").children("ul").addClass("show");  //设置第一个ul为默认显选中
                $("#search-ul>li").map((index, ele) => {    //进入的情况
                    $("#search-ul>li").eq(index).mouseover(function () {
                        $("#search-ul>li").eq(index).addClass("active").siblings().removeClass("active").children("ul").addClass("show").siblings().removeClass("show");
                        $("#search-ul>li").eq(index).children("ul").css("top", "0");
                    });
                    $("#search-ul>li").eq(index).mouseout(function () { //出去的情况
                        $("#search-ul>li").eq(index).children("ul").css("top", "2000px");
                        $("#search-ul>li").eq(0).addClass("active").siblings().removeClass("active");
                        $("#search-ul>li").eq(0).children("ul").css("top", "0");

                    });
                })
            } else if (count == 50) {
                clearInterval(timer);
            }
            count++;
        }, 200)  //异步请求，拿到数据,兼容网络不好的情况
    }
    ajax(i, i1) {
        return $.ajax({
            type: "post",
            url: "../php/index.php",
            data: { "type": i, "index": i1 },
            dataType: "json",
            success: (data) => {
                console.log(data)
            },
            error: (data) => {
                alert(`${data.status} ${data.statusText} `)
            }
        })

    }
    scroll_top() {
        $("#scorll-top").click(() => {
            document.documentElement.scrollTop = 0;
            window.pageYOffset = 0;
            document.body.scrollTop = 0;
        });
    }
    sing_in() {
        let name = obj.getcookies("username");
        if (name) {
            $("#sing_in").html(`用户${name}`).parent().append($(`<a id="sing_out" style="margin:0 5px;float:left"></a>`).html("退出登录"));
            $("#sing_out").click(() => {
                obj.clearcookies();
                $("#sing_out").remove();
                $("#sing_in").html(`登录`);
                $("#sing_in").click(() => {
                    window.location.href = "../html/sing_in.html";
                })
            })
        } else {
            $("#sing_in").html(`登录`);
            $("#sing_in").click(() => {
                window.location.href = "../html/sing_in.html";
            })
        }

    }
    jump_listpage() {
        let arr = ["童装", "母婴", "居家", "美食", "女装",
            "鞋包", "美妆", "奶粉", "纸尿裤", "精彩预告"];
        let res = arr.map((ele, index) => {
            return `<a  class="${index == 9 ? 'special-a' : ''}">${ele}</a>`;
        }).join("")
        $(".sub-nav").html(res);

    }
}
let hf = new head_footer();
$(".sub-nav").on("click", "a", (e) => {
    window.location.href = "../html/list.html";
    ajax1(e.target.text);
})
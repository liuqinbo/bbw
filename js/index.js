$("document").ready(() => {
    class Home {
        constructor() {
            this.i1 = 0;
            this.data = 0;
            this.init();
        }
        init() {
            this.list();
            this.small_list();
            this.left_content();
            this.right_content();
            this.scroll_top();
            this.sing_in();
            this.jump_detail();
            this.jump_listpage();
            this.add_database();

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
                        let ll = $(`<li></li>`).html(`${type}<ul class="hidden" style="top:${1000 * count1}px" >${e1}</ul >`) //设置top值不让其影响鼠标事件
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
                            $("#search-ul>li").eq(index).children("ul").css("top", "1000px");
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
        small_list() {
            let res = this.ajax("B");  //网络请求
            let count = 0;
            let timer = setInterval(() => {
                if (res.responseJSON) {
                    clearInterval(timer);
                    let e1 = res.responseJSON.map((ele, index) => {
                        return `<li style="border-bottom:1px solid #e6e6e6;border-right: 1px solid #e6e6e6 ">
                        <a href="">
                            <img src="${ele.src}">
                                <p class="p1">￥${ele.price1}</p>
                                <p>${ele.content}</p>
                        </a>
                    </li>`
                    }).join("");
                    $("#small_list").html(e1);
                } else if (count == 50) {
                    clearInterval(timer);
                }
                count++;
            }, 200)
        }
        left_content() {
            let res = this.ajax("C", `${this.i1}`);  //网络请求
            this.i1++;
            let count = 0;
            let timer = setInterval(() => {
                if (res.responseJSON) {
                    clearInterval(timer);
                    let e1 = res.responseJSON.map((ele, index) => {
                        return ` <a class="test1" id="${this.data++}" ${(index + 2) % 3 == 0 ? 'style="margin:0 21px "' : ''}>
                                    <img src="${ele.src}" alt="">
                                    <p class="p1">${ele.content}</p>
                                    <p class="p2">
                                        <span class="span1">￥${ele.price1}</span>
                                        <del>${ele.price2}</del>
                                        <span class="span2">${ele.discount}</span>
                                    </p>
                                </a>`
                    }).join("");
                    if (res.responseJSON) {
                        let a = $("<div></div>").html(e1)
                        $("#left-content").append(a);
                    }

                } else if (count == 50) {
                    clearInterval(timer);
                }
                count++;
            }, 200)
            $("#more").click(() => {
                this.left_content();
            })
        }

        right_content() {
            let res = this.ajax("D");  //网络请求
            let count = 0;
            let arr = ["童装", "童鞋", "玩具", "用品"];
            let timer = setInterval(() => {
                if (res.responseJSON) {
                    clearInterval(timer);
                    let e2 = arr.map((ele, index) => {
                        return `<a href="" class="${index == 0 ? "active" : ""}">${ele}</a>`
                    }).join("");
                    e2 = `<div style="font-size: 0">${e2}</div>`
                    let e3 = arr.map((ele, index) => {
                        let e1 = res.responseJSON.map((ele1, index) => {
                            if (ele1.type == ele) {
                                return `<li class="clearfix">
                                        <img src="${ele1.src}">
                                        <p>${ele1.content}</p>
                                        <span>￥${ele1.price1}</span>
                                        <del>${ele1.price2}</del>
                                    </li>`
                            }
                        }).join("")
                        return `<ul class=${index == 0 ? 'show' : ""}>${e1}</ul>`;
                    }).join("");

                    $("#right-content").html(e2 + e3);
                    $("#right-content>div>a").map((index, ele) => {
                        $(ele).mouseenter(() => {
                            $(ele).addClass("active").siblings().removeClass("active");
                            $("#right-content>ul").eq(index).addClass("show").siblings().removeClass("show");
                        });
                    })





                } else if (count == 50) {
                    clearInterval(timer);
                }
                count++;
            }, 200)
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

        jump_detail() {
            $("#left-content,#right-content").click(() => {
                if (!$("#sing_out")[0]) {
                    window.location.href = "../html/sing_in.html";
                    return;
                }

            })
        }
        jump_listpage() {
            let arr = ["童装", "母婴", "居家", "美食", "女装",
                "鞋包", "美妆", "奶粉", "纸尿裤", "精彩预告"];
            let res = arr.map((ele, index) => {
                return `<a  class="${index == 9 ? 'special-a' : ''}">${ele}</a>`;
            }).join("")
            $(".sub-nav").html(res);
            $(".sub-nav").on("click", "a", (e) => {
                window.location.href = `../html/list.html#${e.target.text}`;
            })
        }
        add_database() {
            setTimeout(() => {
                let id;
                $(".test1").map((index, ele) => {
                    $(ele).click(() => {
                        id = $(ele).attr("id");
                        console.log(id);
                        $.ajax({
                            type: "post",
                            url: "../php/database.php",
                            data: { type: 'set', id: id },
                            dataType: 'json',
                            success: function (response) {
                                console.log(response["totalRow"]);
                            },
                            error: function (data) {
                                console.log(data)
                            }
                        });
                    })

                })
            }, 2000)

        }
    }

    let home = new Home();
})




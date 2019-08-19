$(document).ready(() => {
    class LIST {
        constructor() {
            this.init();
            this.i1 = 0;

        }
        //初始化
        init() {
            this.listpage();
            this.scroll_top();
            this.sing_in();
            this.list();
            this.changtype();
            this.rank();

        };
        //登录的用户名
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
        //从首页过来直接渲染
        listpage() {
            let arr = ["童装", "母婴", "居家", "美食", "女装",
                "鞋包", "美妆", "奶粉", "纸尿裤", "精彩预告"];
            let res = arr.map((ele, index) => {
                return `<a href="#${ele}"  class="${index == 9 ? 'special-a' : ''}">${ele}</a>`;
            }).join("")
            $(".sub-nav").html(res);  //从首页跳过来时自动的渲染
            let type = window.location.href;  //拿到url
            type = decodeURI(type.split("#")[1]);//拿到查询字符串
            console.log(type);
            $("#list-type").text(type);//设置分类浏览的类型
            this.ajax1('A', type, 0);
            this.ajax2('B', type);
            this.type1 = 'A';   //选择什么方式取数据
            this.prec_next();  //换页
        }
        //渲染list
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
        //切换type
        changtype() {

            $(".sub-nav").on("click", "a", (e) => {
                $("#list-type").text(e.target.text);//设置分类浏览的类型
                this.ajax1('A', e.target.text, 0);
                this.ajax2('B', e.target.text);
                this.i1 = 0;
                $("#NORMAl").addClass("active").siblings().removeClass("active")

            })


        }
        //按价格排序
        rank() {
            $("#NORMAl").click(() => {
                this.i1 = 0;
                let type = window.location.href;  //拿到url
                type = decodeURI(type.split("#")[1]);//拿到查询字符串
                $("#NORMAl").addClass("active").siblings().removeClass("active")
                this.ajax1('A', type, 0);
                this.ajax2('B', type);
                this.type1 = 'A';
            })
            $("#H_L").click(() => {
                this.i1 = 0;
                let type = window.location.href;  //拿到url
                type = decodeURI(type.split("#")[1]);//拿到查询字符串
                $("#H_L").addClass("active").siblings().removeClass("active")
                this.ajax1('DESC', type, 0);
                this.ajax2('B', type);
                this.type1 = 'DESC';

            })
            $("#L_H").click(() => {
                this.i1 = 0;
                let type = window.location.href;  //拿到url
                type = decodeURI(type.split("#")[1]);//拿到查询字符串
                $("#L_H").addClass("active").siblings().removeClass("active")
                this.ajax1('ASC', type, 0);
                this.ajax2('B', type);
                this.type1 = 'ASC';   //设置拿到数据的方式

            })
        }
        //点击换页，
        prec_next() {

            $("#prec").click(() => {
                if (this.i1 > 0) {
                    let type = window.location.href;  //拿到url
                    type = decodeURI(type.split("#")[1]);//拿到查询字符串
                    this.i1 = this.i1 - 1;
                    this.ajax1(this.type1, type, this.i1);

                }
            });
            $("#next").click(() => {
                let timer = setInterval(() => {
                    if (self.aj2) {
                        clearInterval(timer);
                        if ((self.aj2 - 1) > this.i1) {
                            let type = window.location.href;  //拿到url
                            type = decodeURI(type.split("#")[1]);//拿到查询字符串
                            this.i1 = this.i1 + 1;
                            this.ajax1(this.type1, type, this.i1);

                        }
                    }
                }, 100)

            });

            //点击加一与点击减一
        }
        //点击滚动条置顶
        scroll_top() {
            $("#scorll-top").click(() => {
                document.documentElement.scrollTop = 0;
                window.pageYOffset = 0;
                document.body.scrollTop = 0;
            });
        }
        //list的ajax
        ajax(i, i1) {
            return $.ajax({
                // type: "post",
                // url: "../php/index.php",
                // data: { "type": i, "index": i1 },
                type: 'get',
                url: `/home?type=${i}&index=${i1}`,
                dataType: "json",
                success: (data) => {
                    console.log(data)
                },
                error: (data) => {
                    alert(`${data.status} ${data.statusText} `)
                }
            })

        }
        //列表页的具体数据渲染
        ajax1(i, content, i1) {
            $.ajax({
                // type: "post",
                // url: "../php/list.php",
                // data: { type: i, con: content, index: i1 },
                type: "get",
                url: `/List?type=${i}&con=${content}&index=${i1}`,
                dataType: "json",
                success: function (response) {
                    let res = response.map((ele, index) => {
                        return `<a ${(index + 1) % 4 == 0 ? "style='margin:0'" : ''} >
                        <img src="${ele.src}" alt="">
                        <p class="p1">${ele.content}</p>
                        <p class="p2">
                            <span class="span1">￥${ele.price1}</span>
                            <del>${ele.price2}</del>
                            <span class="span2">${ele.discount}</span>
                        </p>
                    </a>`
                    }).join("");
                    $("#list-content").html(res);
                    this.response = response;
                    console.log(response, '--ajax1');
                },
                error: function (data) {
                    console.log(data);
                    alert(`${data.status} ${data.statusText} `)
                }
            });
        }
        //判断当前的type共多少条数据，用来换行用
        ajax2(i, content) {
            self = this;
            $.ajax({
                // type: "post",
                // url: "../php/list.php",
                // data: { type: i, con: content, index: "" },
                type: "get",
                url: `/List?type=${i}&con=${content}&index=''`,
                dataType: "json",
                success: function (response) {
                    console.log(response, response[0].count * 1, '--ajax2');
                    self.aj2 = response[0].count * 1;
                    self.aj2 = Math.ceil(self.aj2 / 20);

                },
                error: function (data) {
                    console.log(data);
                    console.log(data.status, data.statusText);
                }
            });



        }

    }
    new LIST();
})
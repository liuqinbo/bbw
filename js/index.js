class Home {
    constructor() {
        this.ele();
    }
    init(fn) {

    }
    ele() {
        let res = this.ajax("A");
        let count = 0;
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
                    let ll = $(`<li></li>`).html(`${type}<ul class="hidden">${e1}</ul >`)
                    $("#search-ul").append(ll);
                }
                list("热销分类");
                list("儿童服饰");
                list("婴儿装");
                $("#search-ul>li").eq(0).addClass("active").children("ul").css("display", "block");


            } else if (count == 15) {
                clearInterval(timer);
            }
        }, 200)
    }
    ajax(i) {
        return $.ajax({
            type: "post",
            url: "../php/index.php",
            data: { "type": i },
            dataType: "json",
            success: (data) => {
                console.log(data)
            },
            error: (data) => {
                alert(`${data.status} ${data.statusText}`)
            }
        })

    }

}

let home = new Home();



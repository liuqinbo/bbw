class shopping {
    constructor() {
        let aj = this.ajax();
    }
    init() {
        this.sel_all();
        this.sel_checkbox();
        this.sum();
        this.change_num();
        this.del();

    }
    //改变
    change_num() {
        self = this;
        $(".num").map((index, ele) => {
            $(".add").eq(index).click(() => {
                if (ele.value * 1 > 0) {
                    ele.value = ele.value * 1 + 1;
                    let change_id = $(ele).parentsUntil("table").eq(1).children("td").eq(5).children(".btn2").attr('id'); //获取到id
                    self.ajax1("change", change_id, ele.value);//传入数据库
                    $(".subtotal").eq(index).html(ele.value * ($(".price").eq(index).html() * 1));
                    this.sum();
                }

            })
            $(".cut").eq(index).click(() => {
                if (ele.value * 1 > 1) {
                    ele.value = ele.value * 1 - 1;
                    let change_id = $(ele).parentsUntil("table").eq(1).children("td").eq(5).children(".btn2").attr('id'); //获取到id
                    self.ajax1("change", change_id, ele.value);//传入数据库
                    $(".subtotal").eq(index).html(ele.value * ($(".price").eq(index).html() * 1));
                    this.sum();
                }
            })
        })
        $(".num").on("change", function (e) {
            let num = e.target.value * 1;
            let change_id = $(e.target).parentsUntil("table").eq(1).children("td").eq(5).children(".btn2").attr('id'); //获取到id
            self.ajax1("change", change_id, num);  //传入数据库 ，参数一位类型二位id，三为件数
            if (num < 1 || num > 999) { return }
            let sum1 = $(e.target).parentsUntil("table").children(".price").html() * num
            $(e.target).parentsUntil("table").children(".subtotal").html(sum1);
            // let change_id = $(e.target).parentsUntil(".tr").children(".btn2").attr("id");
            self.sum();


        })

    }
    //删除
    del() {
        $(".tr").on("click", ".btn2", (e) => {
            $(e.target).parentsUntil("table").remove();
            let del_id = e.target.id;
            this.ajax1("del", del_id);
            let i = 0; //处理最后的一个商品删除后，还要总价的问题
            $(".tr").map((index) => { i++ })
            if (i == 0) { return $(".sp2").html(`总价：`) }
            this.sum();
        })
    }
    //切换单个选中/不选中
    sel_checkbox() {
        $("#table").on('click', '.checkbox', () => {
            $(".checkbox").map((index, ele) => {
                if (!$(ele).is(':checked')) {
                    $(".sp2").html(`总价:`);
                    return;
                }
            })
            this.sum();
        })
    }
    //全部选中/不选中
    sel_all() {
        self = this;
        $('.all').on("click", function () {
            if ($(this).is(':checked')) {
                $('.checkbox').each(function () {
                    $(this).prop("checked", true);
                    self.sum();

                });
            } else {
                $('.checkbox').each(function () {
                    $(this).prop("checked", false);
                    $(".sp2").html(`总价：`); //处理最后的一个商品删除后，还要总价的问题
                });
            }

        })
    }
    //总价
    sum() {
        this.res = 0;
        $(".checkbox").map((index, ele) => {
            if ($(ele).is(':checked')) {
                this.res += 1 * $(".subtotal")[index].innerHTML;
                $(".sp2").html(`总价：${this.res}`);
            }
        })

    }
    ajax() {
        self = this;
        $.ajax({
            type: "post",
            url: "../php/database.php",
            data: { type: 'get', id: '', num: '' },
            dataType: "json",
            success: function (response) {
                console.log(response);
                let get_data = response.map((ele, index) => {
                    return `<tr class="tr">
                        <td style="width:60px">
                            <input type="checkbox" checked class="checkbox">
                        </td>
                        <td>
                            <img src="${ele.src}">
                            <span class="span1">${ele.content}<span>
                        </td>
                        <td class="price"> ${ele.price} </td>
                        <td>
                            <button class="cut">-</button>
                            <input type="text" class="num" value="${ele.num}">
                            <button class="add">+</button>
                        </td>
                        <td class="subtotal">${ele.subtotal} </td>
                        <td>
                            <button class="btn2" id="${ele.id}">删除</button>
                        </td>
                    </tr>`
                }).join("");
                $("#table").html(get_data);
                self.init();
            },
            error: function (data) {
                console.log(data.status, data.statusText);
            }
        });
    }
    ajax1(text, id, num) {
        $.ajax({
            type: "post",
            url: "../php/database.php",
            data: { 'type': text, 'id': id, 'num': num },
            // dataType: "dataType",
            success: function (response) {
                console.log(response);
            },
            error: function (data) {
                console.log(data);
            }
        });
    }

}
new shopping;
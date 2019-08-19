const express = require('express');
const shopping_router = express.Router();
const mysql = require('./con_db');

//增
shopping_router.post('/', async (req, res) => {
    let { id } = req.body;
    try {
        let result = await mysql(`SELECT * FROM bbw.shopping WHERE id=${id}`);
        if (result.length == 0) {
            let result1 = await mysql(`SELECT * FROM home WHERE id= ${id}`);
            let content = result1[0]["content"];
            let price = result1[0]["price1"];
            let src = result1[0]["src"];
            mysql(`INSERT INTO bbw.shopping (src , content , price , num, subtotal , id )
        VALUES('${src}', ' ${content}', '${price}', '${1}', '${price}', '${id}')`);
            return;
        }
        let num = result[0].num * 1 + 1;
        let subtotal = num * result[0].price;
        mysql(`UPDATE bbw.shopping SET num =${num},subtotal=${subtotal} WHERE id= ${id}`);
    } catch (err) {
        res.send(err);
    }
})


//删
shopping_router.delete('/', async (req, res) => {
    let { id } = req.query;
    try {
        let result = await mysql(`DELETE FROM bbw.shopping WHERE id= ${id}`);
        // res.send(result);
        res.send({ type: 'success' });
    } catch (err) {
        res.send(err);
    }
});
//改
shopping_router.patch('/', async (req, res) => {
    let { id, num } = req.query;
    try {
        let result = await mysql(`SELECT * FROM bbw.shopping WHERE id=${id}`);
        let subtotal = num * result[0].price;
        mysql(`UPDATE bbw.shopping SET num =${num},subtotal=${subtotal} WHERE id= ${id}`);
        // res.send({ type: 'success', 'num': num, 'subtotal': subtotal });
        res.send({ type: 'success' });
    } catch (err) {
        res.send(err);
    }
})

//渲染购物车页面,查
shopping_router.get('/', async (req, res) => {
    try {
        let result = await mysql(`SELECT * FROM shopping`);
        res.send(result);
    } catch (err) {
        res.send(err);
    }
})

module.exports = shopping_router;
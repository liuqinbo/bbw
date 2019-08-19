const express = require('express');
const iar_router = express.Router();
const mysql = require('./con_db');

iar_router.get('/', async (req, res) => {  //登录
    let { phone } = req.query;
    let result = await mysql(`SELECT * FROM iar WHERE phone LIKE '${phone}'`);
    res.send(result);

})
iar_router.post('/', async (req, res) => {  // 注册
    let { phone, password } = req.body;
    try {
        let result = await mysql(`INSERT INTO bbw.iar (phone ,password)VALUES ('${phone}', '${password}')`);
        res.send(result);
    } catch (err) {
        res.send(undefined)
    }
})

module.exports = iar_router;
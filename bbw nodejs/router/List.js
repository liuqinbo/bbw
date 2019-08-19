const express = require('express');
const list_router = express.Router();
const mysql = require('./con_db');

list_router.get('/', async (req, res) => {
    let { type } = req.query;

    if (type == "A") {

        let { index, con } = req.query;
        index = index * 20;
        let result = await mysql(`SELECT *FROM list WHERE type LIKE '${con}' limit ${index},20`);
        res.send(result);


    }
    else if (type == "B") {

        let { con } = req.query;
        let result = await mysql(`SELECT count(TYPE) as count FROM list WHERE type  LIKE '${con}'`);
        res.send(result);

    }
    else if (type == "DESC") {

        let { index, con } = req.query;
        index = index * 20;
        let result = await mysql(`SELECT * FROM list WHERE type LIKE '${con}' ORDER BY price1 DESC limit ${index},20`);
        res.send(result);

    }
    else if (type = "ASC") {

        let { index, con } = req.query;
        index = index * 20;
        let result = await mysql(`SELECT * FROM list WHERE type LIKE '${con}' ORDER BY price1 ASC limit ${index},20`);
        res.send(result);

    }
})


module.exports = list_router;
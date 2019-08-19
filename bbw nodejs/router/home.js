const express = require('express');
const home_router = express.Router();
const mysql = require('./con_db');

home_router.get('/', async (req, res) => {
    let { type } = req.query;
    if (type == 'A') {

        let result = await mysql("SELECT * FROM home WHERE sort LIKE 'list'");
        res.send(result);

    } else if (type == 'B') {

        let result = await mysql("SELECT *FROM home WHERE sort LIKE 'small_list'");
        res.send(result);

    } else if (type == 'C') {
        let { index } = req.query;
        index = index * 30;
        let result = await mysql(`SELECT *FROM home WHERE sort LIKE 'left-content' LIMIT ${index}, 30`);
        res.send(result);

    } else if (type == 'D') {
        let result = await mysql("SELECT *FROM home WHERE sort  LIKE 'right-content1'");
        res.send(result);

    }

})

module.exports = home_router;
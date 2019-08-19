const mysql = require("mysql");//引入mysql模块
//连接数据库
let pool = mysql.createPool({
    host: "localhost",
    user: "root",
    password: "",
    port: 3306,
    database: 'bbw',
    multipleStatements: true
});


module.exports = function (sql) {   //放出数据
    return new Promise((resolve, reject) => {
        pool.query(sql, function (err, rows) {
            if (err) {
                reject(err);
            }
            resolve(rows);
        })
    })
}
const express = require('express');         //引入express第三方模块
const { PORT } = require('./config.json')   //引入默认文件
const Router = require('./router/index')          //引入/router/index.js
const app = express();                      //创建服务器

app.use(express.static('./'));              //创建静态资源服务器

app.use(Router);                            //调用router文件里的index.js文件

app.listen(PORT, (req, res) => {            //监听此端口
    console.log(`${PORT} 服务端口启动成功`)
})

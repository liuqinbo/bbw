const express = require('express');                  //引入express第三方模块
const Router = express.Router();                     //创建路由，下面为引入自定义插件
const home_router = require('./home');               //首页
const iar_router = require('./iar');                 //登录注册
const list_router = require('./List');               //列表页
const shopping_router = require('./shopping');       //购物车

Router.use(express.json(), express.urlencoded());    //格式化

Router.use('/home', home_router);
Router.use('/iar', iar_router);
Router.use('/list', list_router);
Router.use('/shopping', shopping_router);

module.exports = Router;                              //导出
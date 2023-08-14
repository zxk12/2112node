const express = require("express");
var server = express();
const path = require("path");
const router = require("./router");
const cors = require("cors");

server.use(cors());

server.use(express.urlencoded({ extended: false }))

server.use((req, res, next) => {
    next();
})

server.use(router)//挂载路由

server.use(express.static(path.join(__dirname, "./public")))//静态资源目录

server.use((err, req, res, next) => {
    if (err) return res.send({
        code: 500,
        msg: "服务器请求错误，请联系管理员" + err.message,
        value: []
    })
    next();
})

server.listen(2112, () => {
    console.log("服务已在2112启动");
})


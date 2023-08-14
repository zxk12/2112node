const express = require("express");
const router = express.Router();
const mysql = require("mysql");

// 链接数据库 
const db = mysql.createPool({
    host: "127.0.0.1",
    user: "root",
    password: "",
    database: "2112zhangxuekun"
})

router.get("/xuekun", (req, res, next) => {
    var data = req.query;
    var time = new Date().getTime();
    var sql = `INSERT INTO xuekun VALUES (null,"${data.name}","${data.age}","${time}")`
    db.query(sql, (err, result) => {
        if (err) return next(err)
        res.send({
            code: 200,
            msg: "添加数据成功",
            value: result
        })
    })
})

router.get("/set_pruduct", (req, res, next) => {
    var data = req.query;
    var sql = "SELECT * FROM xuekun";
    db.query(sql, (err, result) => {
        if (err) return next(err)
        res.send({
            code: 200,
            msg: "查询数据成功",
            value: result
        })
    })
})

router.get("/del_pruduct", (req, res, next) => {
    var data = req.query;
    var sql = `DELETE FROM xuekun WHERE id="${req.query.id}"`;
    db.query(sql, (err, result) => {
        if (err) return next(err)
        res.send({
            code: 300,
            msg: "删除数据成功",
            value: result
        })
    })
})

router.get("/sou_pruduct", (req, res, next) => {
    var data = req.query;
    var sql = `SELECT * FROM xuekun WHERE username LIKE "%${data.name}%"`;
    db.query(sql, (err, result) => {
        if (err) return next(err)
        res.send({
            code: 200,
            msg: "搜索成功呈现了",
            value: result
        })
    })
})

router.get("/delall_pruduct", (req, res, next) => {
    var data = req.query;
    var sql = `DELETE FROM xuekun`;
    db.query(sql, (err, result) => {
        if (err) return next(err)
        res.send({
            code: 300,
            msg: "删除数据成功",
            value: result
        })
    })
})

module.exports = router;
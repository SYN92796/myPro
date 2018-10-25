const express = require("express");
const router = express.Router();
var pool = require('../pool.js');
router.get('/news',(req,res)=>{
    var page = req.query.page;
    var sql = `SELECT * FROM game_news`;
    pool.query(sql,[page],(err,result)=>{
        if(err) throw err;
        var data = {};
        data.page=page-1;        
        data.pageCount=Math.ceil(result.length/7);
        data.news=result.slice(data.page*7,data.page*7+7);
        res.send(data);
    })
})
router.get("/newsdetails",(req,res)=>{
    var id = req.query.gid;
    var sql = "SELECT `nid`, `title`, `content` , `ctime` FROM `game_newsdetails` where nid=? "
    pool.query(sql,[id],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})

module.exports = router;
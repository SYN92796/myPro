const express = require("express");
const router = express.Router();
const pool = require("../pool");
//获得单机游戏推荐
router.get("/",(req,res)=>{
    var sql = `SELECT * FROM game_index_standalone`;
    pool.query(sql,[],(arr,result)=>{
        res.send(result);
    })
})
// router.get("/pic",(req,res)=>{

// })
module.exports = router;
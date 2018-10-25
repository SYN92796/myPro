const express = require("express");
const router = express.Router();
const pool = require("../pool");

//获取评论
router.get('/list',(req,res)=>{
    var nid = req.query.gid;
    var sql = "SELECT x.cid,x.nid,x.cname,x.content,x.ctime, x.cplace,x.zanC,x.caiC,y.uHead FROM game_comment x INNER JOIN game_user y ON x.cname = y.uname WHERE nid=?";
    pool.query(sql,nid,(err,result)=>{
        if(err) throw err;
        res.send(result);
    })
})
// 增加评论
router.post('/add',(req,res)=>{
    var {nid,cname,content} = req.body;
    var sql = "INSERT INTO `game_comment`(`cid`, `nid`, `cname`, `content`, `ctime`, `cplace`, `zanC`, `caiC`) VALUES (NULL,?,?,?,NOW(),'江苏',0,0)";
    pool.query(sql,[nid,cname,content],(err,result)=>{
        if(err) throw err;
        console.log(result)
        if(result.affectedRows>0){
            res.send({"code":1,"msg":"评论成功"});
        }else{
            res.send({"code":0,"msg":"评论失败"})
        }
    })
})

module.exports = router;
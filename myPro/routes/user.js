const express = require("express");
const router = express.Router();
var pool = require('../pool.js');
//用户登录
router.post('/login',(req,res)=>{
    var uname = req.body.uname;
    var upwd = req.body.upwd;
    if(!uname){
        res.send("请输入用户名");
        return;
    };
    if(!upwd){
        res.send("请输入密码");
        return;
    }
    var sql ="SELECT * FROM game_user WHERE uname=? AND upwd=?";
    pool.query(sql,[uname,upwd],(err,result)=>{
      if(result.length>0){
          req.session.uid=result[0].uid;
          res.send("登录成功");
      }else{
          res.send("登录失败");
      };
    });
});
router.get('/isLogin',(req,res)=>{
    if(req.session.uid!==undefined){
        var uid = req.session.uid;
        var sql = "SELECT `uid`, `uname`, `upwd`, `email`, `phone` , `uHead` FROM `game_user` WHERE uid=? ";
        pool.query(sql,uid,(err,result)=>{
            if(err) throw err;
            res.send({"ok":1,"uname":result[0].uname,"uHead":result[0].uHead});
        })
    }else{
        res.send({"ok":0});
    }
});
router.get('/loginOut',(req,res)=>{
     req.session.uid=undefined;
    res.send({"ok":0});
})
// 注册
router.post("/register",(req,res)=>{
    var {uname,upwd,email,phone} = req.body;
    var sql= "INSERT INTO `game_user`(`uid`, `uname`, `upwd`, `email`, `phone`) VALUES (null,?,?,?,?)";
    pool.query(sql,[uname,upwd,email,phone],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows==1){
            res.send({code:1,msg:{"uname":uname,"upwd":upwd}})
        }
    })
})
router.post("/checkUname",(req,res)=>{
    var uname  = req.body.uname;
    if(uname){
        var sql="SELECT `uid`, `uname`, `upwd`, `email`, `phone` FROM `game_user` WHERE uname=?";
        pool.query(sql,uname,(err,result)=>{
            if(err) throw err;
            if(result.length>0){
                res.send({code:0,msg:"用户名已存在"});
            }else{
                res.send({code:1,msg:"用户名可用"})
            }
        })
    }
})
//导出路由
module.exports = router;
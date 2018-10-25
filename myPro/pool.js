//连接数据库模块
const mysql = require('mysql');
var pool = mysql.createPool({
    host:'127.0.0.1',
    user:'root',
    password:'',
    database:'game',
    connectionLimit:10
});
module.exports=pool;

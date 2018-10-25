//�����
const express = require('express');
const user = require('./routes/user.js');
const bodyParser = require('body-parser');
const index= require('./routes/index.js');
const news = require('./routes/news.js');
const comment = require('./routes/comment.js');
const session =require('express-session');
//����������
var app = express();
app.listen(4000);
app.use(session({
	secret:'随机字符串',
	resave:false,
	saveUninitialized:true
}))
app.use(express.static('static'));
//����bodyParser
app.use(bodyParser.urlencoded({extended:false}));
//ʹ��·��
app.use('/user',user);
app.use('/index',index);
app.use('/news',news);
app.use('/comment',comment);
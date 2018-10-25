$(function(){
    var $link = `<link rel="stylesheet" href="css/header.css">`;
    $($link).appendTo("head");
    $.ajax({
        url:"header.html",
        type:"get",
        success:function(res){
            $(res).replaceAll("#header");
            var html="";
            // 登陆
            $.ajax({
                url:"http://127.0.0.1:4000/user/isLogin",
                type:"get",
                success:function(res){
                    if(res.ok==0){
                        html=` <img src="img/header/yhm.png" alt="" class="my_logo"/>
                        <a href="login.html"  target="_blank" class="my_color ">登录</a>|<a href="register.html" class="my_color text-center" target="_blank">注册</a>`;
                        $("#login").html(html);
                    }else{
                        var b = "img/header/yhm.png"
                        var a = res.uHead?res.uHead:b;
                        html=`
                        <img src="${a}" alt="" class="my_logo"/>
                        &nbsp;&nbsp;&nbsp;
                        <a href="#" class="my_color ">${res.uname}</a>
                        &nbsp;&nbsp;&nbsp;
                        <a href="#" class="my_color text-center" id="loginOut">注销</a>`;
                        $("#login").html(html);
                        $("#loginOut").on("click",function(e){
                            e.preventDefault();
                            $.ajax({
                                url:"http://127.0.0.1:4000/user/loginOut",
                                type:"get",
                                success:function(res){
                                    if(res.ok==0){
                                        sessionStorage.removeItem("uname");
                                        html=` <img src="img/header/yhm.png" alt="" class="my_logo"/>
                                        <a href="login.html"  target="_blank" class="my_color ">登录</a>|<a href="register.html" class="my_color text-center" target="_blank">注册</a>`;
                                        $("#login").html(html);
                                        history.go(0);
                                    }
                                }
                            })
                        })
                    }
                }
            })
            // 注销

        }
    })
    })
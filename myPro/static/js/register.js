// 用户名
function unameOnb(t){
    if(t.value==""){
      t.value="请输入用户名(必填)"};
      var uname = t.value;
      $.ajax({
          url:"http://127.0.0.1:4000/user/checkUname",
          type:"POST",
          dataType:"json",
          data:`uname=${uname}`,
          success:function(res){
            var html="";
            if(res.code==1){
                html=`<i class="ok"></i><span><font color="white">用户名可用</font></span>`;
               
            }else{
                html=`<i class="fail"></i><span><font color="red">用户名存在</font></span>`;
            } 
            $("#unameInfo").html(html);
          }
      })
    };
function unameOnf(t){  
    t.value=""
}
function upwdOnb(t){
    var html = "";
    if($(t).val() === $("#upwd").val()){
        html=`<i class="ok"></i><span><font color="white">通过</font></span>`;
    }else{
        html=`<i class="fail"></i><span><font color="red">两次密码不同</font></span>`;
    }
    $("#upwdInfo").html(html);
}
$("#register").click(function(){
    if( $("#upwdInfo").html()===`<i class="ok"></i><span><font color="white">通过</font></span>`&&$("#unameInfo").html()===`<i class="ok"></i><span><font color="white">用户名可用</font></span>`){
        $.ajax({
            url:"http://127.0.0.1:4000/user/register",
            type:"POST",
            data:`uname=${$("#uname").val()}&upwd=${$("#upwd").val()}&email=${$("#email").val()}&phone=${$("#phone").val()}`,
            dataType:"json",
            success:function(result){
                if(result.code==1){
                    alert("注册成功");
                    sessionStorage.setItem("uname",result.msg.uname);
                    $.ajax({
                        url:"http://127.0.0.1:4000/user/login",
                        type:"POST",
                        dataType:"json",
                        data:`uname=${result.msg.uname}&upwd=${result.msg.upwd}`,
                        success:function(res){
                            console.log(res)
                        }
                    })
                    window.location.href="http://127.0.0.1:4000/index.html";
                }else{
                    alert("注册失败")
                }
            }
        })
    }
})

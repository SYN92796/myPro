//构建ajax函数
function ajax({url,type,data,dataType}){
    return new Promise(function(open,err){
        //创建xhr对象
        var xhr = new XMLHttpRequest();
        //绑定监听事件
        xhr.onreadystatechange=function(){
            if(xhr.readyState==4&&xhr.status==200){
                if(dataType!==undefined&&dataType.toLowerCase()==="json"){
                    var res = JSON.parse(xhr.responseText)
                }else{
                    var res = xhr.responseText;
                }
                open(res);
            }
        }
        //get方法
        if(type.toLowerCase()=="get"&&data!=undefined){
            url+="?"+data;
        }
        //打开连接
        xhr.open(type,url,true);
        //post方法
        if(type.toLowerCase()=="post"){
            xhr.setRequestHeader("Content-Type","application/x-www-form-urlencoded")
        }
        //发送请求
        if(type.toLowerCase()=="post"&&data!=undefined){
            xhr.send(data);
        }else{
            xhr.send(null);
        }
    })
}
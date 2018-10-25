$(function(){
    function loadpage(){
        if(location.search.indexOf("gid")!=-1){
            id = decodeURI(
                location.search.split("=")[1]
            )
            $.ajax({
                url:"http://127.0.0.1:4000/news/newsdetails",
                type:"get",
                data:`gid=${id}`,
                dataType:"json",
                success:function(result){
                    var {title,content,ctime} = result[0];
                    var html=`${title}`;
                    $(".newsDetails h3").html(html);
                    $("head title").html(html)
                    html=``;
                    $(".newsDetails span").html("时间:"+ctime)
                    html=``;
                    html=`${content}`
                    $(".newsbody").html(html);
                }
            })
        }
    }
    loadpage();
    function comment(){
        $.ajax({
            url:"http://127.0.0.1:4000/comment/list",
            type:"get",
            data:`gid=${id}`,
            dataType:"json",
            success:function(res){
                var html = "<div>最新评论</div>";
                for(var i = 0;i<res.length;i++){
                    var b = "img/header/yhm.png";
                    var a = res[i].uHead?res[i].uHead:b;
                    html+= `<div class="cs-list-content">
                    <div class="cs-list-content-left">
                        <img src="${a}" alt="">
                        <div>第${i+1}楼</div>
                    </div>
                    <div class="cs-list-content-right">
                        <h6><a href="#">${res[i].cname}</a></h6>
                        <span>时间: ${res[i].ctime}</span>
                        <p>
                            ${res[i].content}
                        </p>
                        <div class="cs-list-content-right-bottom">
                            <span>来自${res[i].cplace}的热心网友</span>
                            <div class="cs-list-content-btn">
                                <p class="zan-cai">
                                    <i class="zan"></i>
                                    <span>${res[i].zanC}</span>
                                </p>
                                <p class="zan-cai">
                                    <i class="cai"></i>
                                    <span>${res[i].caiC}</span>
                                </p>
                                <div class="replyBtn">
                                    回复
                                </div>
                            </div>
                        </div>
                    </div>
                </div> `; }
                $(".cs-list").html(html);
            }
        })
    }
    comment();
    if(sessionStorage.getItem("uname")){
        var a =`<textarea name="comment" id="commentarea" cols="30" rows="10"></textarea>`;
        $(".cs-body>div:first-child").html(a);
    $("#addC").click(function(){
        var nid = id;
        var cname = sessionStorage.getItem("uname");
        var content = $("#commentarea").val();
        $.ajax({
            url:"http://127.0.0.1:4000/comment/add",
            type:"post",
            data:`nid=${nid}&cname=${cname}&content=${content}`,
            dataType:"json",
            success:function(res){
                if(res.msg=="评论成功"){
                    location.href=`http://127.0.0.1:4000/newsDetails.html?gid=${id}`;
                }else{
                    alert("评论失败")
                }
            }
        })
    })
    }else{
        var a = `<div id="commentarea"> <a href="login.html">登录</a>后才可评论</div>`
        $(".cs-body>div:first-child").html(a);
    }
})
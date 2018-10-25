$(function(){
    function get(page=1){      
       $.ajax({
        url:`http://127.0.0.1:4000/news/news`,
        type:'get',
        data:{page},
        dataType:'json',
        success: function(res){
            var {page,pageCount,news} = res;
            var html=``;
            for(var {title,details,pic,gid} of news){
                html+=`<li class="border-dark my_border clearfix">
                <a href="newsDetails.html?gid=${gid}" target="_blank" class= "my_h4">
                  <div class="float-left  mr-3 pt-2">
                      <img src="${pic}" alt=""/>
                  </div>
                  <div class="float-left">
                      <h4 class="text-dark my_h4 ">${title}</h4>
                      <p class="my_font">${details}</p>
                  </div>
                </a>
               </li>`
            }
            $("#news>ul").html(html);
            html=`<li class="page-border"><a href="#" >上一页</a></li>`;
            for(var i=1;i<=pageCount;i++){
                html+=`<li class="${i==page+1?'active':''} page-border"><a href="#" >${i}</a></li>`
            }
            html+=`<li class="page-border"><a href="#">下一页</a></li>`;
            $("#pageNum").html(html);
            if(page==0)
            $("#pageNum").children(":first").addClass("disabled");
            if(page==pageCount-1)
            $("#pageNum").children(":last").addClass("disabled");
        }

    })
    }
    get();
    $("#pageNum").on("click","a",function(e){
        e.preventDefault();
        var  $a =$(this);
        if(!$a.is(".disabled,.active")){
            if($a.html()=="上一页"){
             page=parseInt($a.parent().nextAll(".active").children().html())-1;
            }else if($a.html()=="下一页"){
              page=parseInt($a.parent().prevAll(".active").children().html())+1;
            }else{
             page = $a.html();
            }
            scrollTo(0,0);
            get(page);
        }
        
    })
})
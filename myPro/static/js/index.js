(async function(){
    var res=await ajax({
        url:"http://127.0.0.1:4000/index/",
        type:"get",
        dataType:"json"
    });
    var parent = document.querySelector("#tab1>div:first-child");
    html=``;
    for(var p of res){
        var{gname,pic,href}=p;
        html+=`<div class="col-3 text-center p-2"><a href="${href}"><img src="${pic}" width="320px" height="160px" alt=""/><h4 class="text-white">${gname}</h4></a>
    </div>`}
    parent.innerHTML=html;
    // 横向手风琴
    $("#accordion").on("click",".title",function(){
        var $title = $(this);
        $title.next().toggleClass("in").siblings(".secContain").removeClass("in");
        if(!$title.is(".active")){
        $title.addClass("active")
              .removeClass("tNextOut tPrevOut").nextAll(".title")
              .addClass("tNextOut");
        $title.prevAll(".title")
              .addClass("tPrevOut");
        $title.siblings(".title").removeClass("active");
        $title.next().children().removeClass("hidden").children().removeClass("hidden2");  ; 
        $title.next().siblings(".secContain").children().addClass("hidden").children().addClass("hidden2");  
            }else{
        $title.removeClass("active").siblings(".title").removeClass("tPrevOut tNextOut");
        $title.next().children(":first").addClass("hidden").children().addClass("hidden2");  
            }
    })  ;
    // 图片轮播
        var list = document.getElementById('picContainer').getElementsByTagName('img'),
            index=0,
            timer=null;
            if (timer) {
                clearInterval(timer);
                timer = null;
            }
            // var list2=[];
            // for(var i=0;i<=list.length;i++){
            //     list2[i]=list[i].getAttribute("src");
            // };
            // list2[0]=list[3].getAttribute("src")
            // list2[1]=list[1].getAttribute("src")
            // console.log(list2)  
            function changeImg(index){

                  var picSrc=list[index].getAttribute("src");
                  $("#picBody").children().attr("src",picSrc);
            }
            function autoChange(){
                index++;
                if(index>=list.length){
                    index=0;
                };
                if(index<0){
                    index=list.length;
                }
                changeImg(index);};
            timer=setInterval(autoChange,2000);
        // 鼠标滑过停止
        $("#picBody").mouseover(function(){
            clearInterval(timer)
        });
        $("#picBody").mouseout(function(){
            timer=setInterval(autoChange,2000);
        });
        $("#picContainer").on("mouseover","li",function(){
            $(this).addClass("picOn").siblings().removeClass("picOn");
            index = $(this).attr("data-target");
            clearInterval(timer);
            changeImg(index);
        });
        $("#picContainer").on("mouseout","li",function(){
            $(this).removeClass("picOn")
        });
        $("#picPrev").click(function(){
            index--;        
            if(index<=0){
                index=list.length-1;
            }
            changeImg(index);
        })
        $("#picNext").click(function(){
            index++;
            if(index>=list.length){
                index=0;
            };
            changeImg(index);
        })
    // 排行榜顶部字体彩色变化
    setInterval(function(){
        var r= Math.random()*255;
        var g= Math.random()*255;
        var b= Math.random()*255;
        $("#rank+div>div>ul>li>p>a>span:nth-child(2)").css("color",`rgb(${r},${b},${g})`)
    },300)
    // 排行榜图片
    $("#rank+div>div>ul>li>p>a"). mouseover(function(){
        var $a = $(this);
        $a.children("img").css("display","inline");
    })
    $("#rank+div>div>ul>li>p>a"). mouseout(function(){
        var $a = $(this);
        $a.children("img").css("display","none");
    })
    // radio界面效果
    $("#radio+div>div>div>ul>li").mouseover(function(){
        $li=$(this);
        $li.children().children(":last-child").css({"left":0,"opacity":1});
    })
    $("#radio+div>div>div>ul>li").mouseout(function(){
        $li=$(this);
        $li.children().children(":last-child").css({"left":-100,"opacity":0});
    })
    //硬件设备
    $("[data-toggle='item']").mouseover(function(e){
        e.preventDefault();
        $(this).parent().addClass("eqActive").siblings().removeClass("eqActive");
       $($(this).attr("href")).addClass("scActive").siblings().removeClass("scActive")
    })
})()
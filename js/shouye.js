"use strict";var mySwiper=new Swiper(".swiper-container",{direction:"horizontal",loop:!0,autoplay:{delay:2e3,disableOnInteraction:!1},pagination:{el:".swiper-pagination",clickable:!0},navigation:{nextEl:".swiper-button-next",prevEl:".swiper-button-prev"}});function render(n){var t="";n.forEach(function(n){t+='<li idx = "'+n.shopId+'">\n        <a href="./xiangqing.html?id='+n.productId+'"><img src="'+n.imageUrl+'" alt=""></a>\n        <span>'+n.productName+"</span>\n        <p>￥<i>"+n.salePrice.toFixed(2)+"</i></p>\n    </li>"}),$(".hotItems").html(t)}$.ajax({url:"../data/products.json",method:"get",dataType:"json",success:function(n){render(n),imgMove()},error:function(n){console.log(n)}}),$("#logo .pro").click(function(){$(".select").css("display","block"),$(".select p").on("click",function(){$("#logo .pro").text($(this).text()),$(".select").css("display","none")})}),$(".sousuo").click(function(){var n;$(".find").val()||(n=$(".find").attr("placeholder"),$(".find").val(n)),$.ajax({url:"https://www.zhongjiu.cn/search/SearchAdNameList",data:"keyword="+$(".find").val(),dataType:"jsonp",type:"get",success:function(n){n=n,$(".showBox").html(""),$(".showBox").css("display","block"),$(n).each(function(n,t){$(".showBox").append($('<div><a href="#">'+t.Name+"</a></div>"))}),$(".showBox").children().click(function(){$(".find").val($(this).children().html())})}})}),$("html").click(function(){$(".showBox").css("display","none")});var login=getCookie("login");function getData(){$.ajax({url:"../data/getCartData.php",method:"post",data:{username:login},dataType:"json",success:function(n){console.log(n),"empty"!=n.code&&$(".cartQty").text(n.length)},error:function(n){console.log(n)},context:this})}function imgMove(){$(".hotItems").find("img").hover(function(){$(this).css({position:"relative",left:-10})},function(){$(this).css({left:0})})}login&&($(".askLogin").text(login+"已登录"),getData()),$(".side li").hover(function(){$(".wineIntroduce").css("display","block");var n=$(this).index();$(".wineIntroduce li").eq(n).addClass("active").siblings().removeClass("active")},function(){$(".wineIntroduce").css("display","none")});
"use strict";$("#logo .pro").click(function(){$(".select").css("display","block"),$(".select p").on("click",function(){$("#logo .pro").text($(this).text()),$(".select").css("display","none")})});var login=getCookie("login");login?($(".askLogin").text(login+"已登录"),getData()):$(".askLogin").click(function(){localStorage.setItem("url",location.href),location.href="../html/dl.html"}),$(".sousuo").click(function(){var t;$(".find").val()||(t=$(".find").attr("placeholder"),$(".find").val(t)),$.ajax({url:"https://www.zhongjiu.cn/search/SearchAdNameList",data:"keyword="+$(".find").val(),dataType:"jsonp",type:"get",success:function(t){console.log(t),t=t,$(".showBox").html(""),$(".showBox").css("display","block"),$(t).each(function(t,n){$(".showBox").append($('<div><a href="#">'+n.Name+"</a></div>"))}),$(".showBox").children().click(function(){$(".find").val($(this).children().html())})}})}),$("html").click(function(){$(".showBox").css("display","none")});var reg=/id=(\d+)/;reg.test(location.search)||open("../html/shouye.html");var id=reg.exec(location.search)[1],a=$.ajax({url:"../data/products.json",method:"get",data:{id:id},dataType:"json",success:function(t){page(t),magnifier()},error:function(t){console.log(t)}});function page(t){var o=t.find(function(t){return id==t.productId});console.log(o),$(".xq_left").prepend($("\n        <h2>"+o.productName+'</h2>\n        <div class="xqBig">\n            <div class="cover"></div>\n            <div class="moveBox"></div>\n            <img src="'+o.img350[0]+'" alt="">\n        </div>'));var i="";o.img50.forEach(function(t,n){i+=0==n?'<li class="active"><img src="'+t+'" alt=""  midImg="'+o.img350[n]+'"  bigImg="'+o.img800[n]+'"></li>':'<li><img src="'+t+'" alt=""  midImg="'+o.img350[n]+'"  bigImg="'+o.img800[n]+'"></li>'}),$(".fenxiang").before($(".xqSmall").html(i)),$(".xq_center").prepend($("\n        <h2>"+o.productName+"</h2>\n        <h5>"+o.marks+'</h5>\n        <h3>\n            <p>\n                <span>价格<i class="pr">￥'+o.salePrice+'</i></span>\n                <b>手机购买</b>\n            </p>\n                <ul class="xq_data">\n                    <li><span>销量&nbsp;&nbsp;</span><b>'+o.saleQty+"</b></li>\n                    <li><span>评价&nbsp;&nbsp;</span><b>"+o.comment+'</b></li>\n                    <li><span>评分:&nbsp;&nbsp;</span><i></i></li>\n                </ul>\n            \n        </h3>\n        <ul class="xqInfo">\n            <li><span>运费:</span><em style="font-style: normal;">'+o.freight+'</em></li>\n            <li><span>促销</span><i></i>满<b>39.00</b>免运费</li>\n            <li><span>库出</span><i>有货</i></li>\n            <li>\n                <span>物流</span><i>配送至</i>\n                <b class="xqCountry">\n                    <a href="#">北京</a>\n                    <a href="#">北京市</a>\n                    <a href="#">朝阳区</a>\n                </b>\n                <i>|&nbsp;支持货到付款</i>\n            </li>\n            <li><span>服务</span><i>由 <b>中酒自营</b> 从北京发货，并提供售后服务</i></li>\n        </ul>\n        <div class="xqBtn">\n                        <i class="shuliang">数量</i>\n                        <div class="btn-group" role="group" aria-label="...">\n                            <button type="button" class="btn btn-default reduce">-</button>\n                            <button type="button" class="btn btn-default xq_qty">'+o.num+'</button>\n                            <button type="button" class="btn btn-default add">+</button>\n                        </div>\n                        <div class=\'jump\'>\n                            <span class="goCart">立即购买</span>\n                            <span class="addCart">加入购物车</span>\n                        </div>\n    </div>'));o.introduce.forEach(function(t){$(".showZone").append($(' <p><img src="'+t+'" alt="">'))})}function magnifier(){$(".xqBig").on("mouseover",function(){$(".cover").css("display","block"),$(".moveBox").css({display:"block"})}).on("mousemove",function(t){var n=t.pageX-$(".xqBig").offset().left-$(".cover").outerWidth()/2,o=t.pageY-$(".xqBig").offset().top-$(".cover").outerHeight()/2,i=$(".xqBig").outerWidth()-$(".cover").outerWidth(),t=$(".xqBig").outerHeight()-$(".cover").outerHeight(),n=n<0?0:i<n?i:n,o=o<0?0:t<o?t:o;$(".cover").css({left:n,top:o});n=800*n/$(".xqBig").outerWidth(),o=800*o/$(".xqBig").outerHeight();$(".moveBox").css({backgroundPosition:"-"+n+"px -"+o+"px"})}).on("mouseout",function(){$(".cover").css("display","none"),$(".moveBox").css("display","none")}),$(".xqSmall li").mouseover(function(t){$(this).addClass("active").siblings("li").removeClass("active"),$(".xqBig img").prop("src",$(this).children("img").attr("midImg")),$(".moveBox").css("backgroundImage","url("+$(this).children("img").attr("bigImg")+")")})}function getData(){$.ajax({url:"../data/getCartData.php",method:"post",data:{username:login},dataType:"json",success:function(t){console.log(t),"empty"!=t.code&&$(".cartQty").text(t.length)},error:function(t){console.log(t)},context:this})}console.log(a.then),$(".xq_center").on("click",function(t){if(t.target.classList.contains("reduce")){if($(".xq_qty").text()<=1)return void alert("商品最小数量为1,不能再减了");$(".xq_qty").text(+$(".xq_qty").text()-1)}if(t.target.classList.contains("add")&&$(".xq_qty").text(+$(".xq_qty").text()+1),t.target.classList.contains("goCart")&&(location.href="../html/cart.html"),t.target.classList.contains("addCart")){t=getCookie("login");if(!t)return localStorage.setItem("url",location.href),alert("您还没登录，请先登录"),void open("../html/dl.html");$.ajax({url:"../data/addCart.php",method:"post",data:{username:t,productId:id,num:+$(".xq_qty").text()},success:function(t){console.log(t)},error:function(t){console.log(t)}})}});
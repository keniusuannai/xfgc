<%@ page language="java" import="java.util.*,com.manggo.bean.*"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%int more=0; %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class=" webp webp-alpha webp-animation webp-lossless">
<head>
    <title>幸福工厂</title>
    <meta name="renderer" content="webkit"> 
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
    <meta charset="utf-8">
    <link rel="stylesheet" href="css/style.css"/>
</head>
<body>
<div class="default-header visible-hidden">
    <div class="logo-place-holder"><a href="index.jsp" class="logo-img">幸福工厂</a>

        <div class="info"><a href="javascript:void(0)" class="change-city"><span>成都</span><i
                class="fa fa-angle-down"></i>
            <ul class="city">
                <li channel_id="140">北京</li>
                <li channel_id="104">上海</li>
            </ul>
        </a>

            <p>精选限量美食</p></div>
    </div>
    <ul class="nav" style="FLOAT: right">
        <li><a href="index.jsp">首页</a></li>
        <li><a class="download-enjoy">下载应用</a></li>
        <%if (session.getAttribute("userid")==null) {%>
			<li><a href="login.jsp">登录</a>/<a href="regist.jsp">注册</a></a></li>
		<%}else{%>
			<li><a href="UserServlet?method=userinfo">个人中心</a></li>
			<li><a href="UserServlet?method=exit">注销</a></li>
		<%}%>
    </ul>
</div>
<div class="user-click order-popup">
    <div class="overlayer"></div>
    <div class="order-content">
        <div class="order-exist active">
            <div class="qrcode">
                <div src="https://dn-boson.qbox.me/pro_website/images/qrcode.jpg"></div>
            </div>
            <p>下载 Enjoy 客户端，随时随地管理您的订单和礼券。</p>

            <div class="btn tip-close user-click-close">我知道了</div>
        </div>
    </div>
</div>
<div class="index-page">

    <div class="wrap visible-hidden">
        <div class="img-wrap"></div>
        <div class="txt-wrap"><p class="title">Life's too short to be bored.</p>

            <p class="sub-title">享受精选美食</p>

            <div class="download-wrap"><span class="qrcode"><div></div></span><a
                    href="#" class="ios btn"><i
                    class="fa fa-2 fa-3"></i>iOS版</a><a href="#"
                                                        class="android btn">Android版</a></div>
        </div>
    </div>
    <div class="page container-fluid">
        <div class="title visible-hidden">现在热卖</div>
        <div class="item-list">
            <ul id="product">
            
            </ul>
        </div>
        <div id="more" class="more"><span class="btn"> <iclass="fa fa-circle-o-notch fa-spin"></i>查看更多礼遇</span></div>
    </div>

</div>
<div class="default-footer visible-hidden">
    <div class="content">
        <ul>
            <li>关注我们：</li>
            <li><a href="http://www.weibo.com/u/5385454600" target="_blank" class="weibo"><i
                    class="fa fa-weibo"></i></a><a id="weixin-code" class="weixin"><i class="fa fa-weixin"></i></a></li>
            <li>京ICP备12040847 · 京公网安备11010502025574 · 京ICP证150031号</li>
            <li>版权所有 ©2014 严肃科技</li>
        </ul>
        <div class="download"><p>扫描下载客户端</p><a>
            <div></div>
        </a></div>
    </div>
</div>
<div class="order-popup weixin-code">
    <div class="overlayer"></div>
    <div class="order-content"><span class="close-weixin-popup"><i class="fa fa-times"></i></span>

        <h1>关注我们</h1><img src="https://dn-boson.qbox.me/pro_website/images/ricebook_code.jpg">

        <h2>请使用微信扫描二维码关注</h2></div>
</div>
<link rel="stylesheet" href="css/font-awesome.min.css">
<script src="js/jquery-1.10.2.min.js"></script>
<script>
    	$(document).ready(function(){
            $("#more").click(function(){
                var htmlobj=$.ajax({url:"GoodsServlet?page=<%=++more%>",async:false});
                var json=eval(htmlobj.responseText);
                $.each(json,function(i,g){
                    $("#product").append('<li data-product_id="'+g.goodsid+'">'+
                            '<div class="item-img col-sm-12 col-md-5">'+
                            '<img src="img/14034622013935.jpg">'+
                            '</div>'+
                            '<div class="item-info col-sm-12 col-md-7">'+
                            '<div class="info"><p class="stunt">'+g.type+'</p>'+

                            '<p class="name">'+g.name+'</p>'+

                            '<p class="number visible-hidden"><span>剩余'+g.number+'份</span><span>剩余91天11小时35分43秒</span></p></div>'+
                            '<div class="description"><p>'+g.description+'</p></div>'+
                            '<div class="buy"><span> <span class="price">'+g.prices+'元</span><span class="original-price">'+g.old_prices+'元</span></span>'+
                            '<a onclick="info(this)"  class="btn go-buy visible-hidden">查看详情</a></div>'+
                            '</div>'+
                            '</li>');

                });

            });
            $("#more").click();

        });
    	function info(Obj){
        	window.location.href='GoodsServlet?method=getGoodsDetail&goodsid='+$(Obj).parent().parent().parent().data("product_id");
        };
</script>
</body>
</html>
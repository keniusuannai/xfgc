<%@ page language="java" import="java.util.*,com.manggo.bean.*"  pageEncoding="UTF-8"%>%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head lang="en">
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0,minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta content="a7cbcbcf81afea6c" property="wb:webmaster">
    <meta name="render" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=7,IE=9">  
<meta http-equiv="X-UA-Compatible" content="IE=7,9">  
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta charset="UTF-8"/>
    <title>订单管理页面</title>
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="css/css_style.css"/>
    <style>
        .main-page{
            max-width: 960px;
            margin: 0 auto;
        }
        ._nav{
            margin-top: 30px;
            /*text-align: center;*/
        }
        ._nav a{
            width: 150px;
            line-height: 50px;
            font-size: 20px;
            margin-left: 30px;
        }
        #header-search {
            margin-top: -4px;
            float: left;
        }
        .search {
            margin-top: 4px;
            margin-right: 20px;
            padding-right: 15px;
            border-right: 1px solid rgba(206, 206, 206, .5);
            float: left;
        }
        .search > input {
            width: 170px;
            height: 45px !important;
            padding: 12px 20px;
            font-size: 16px;
            letter-spacing: 1px;
            border: 1px solid rgba(206, 206, 206, .5);
            border-radius: 22px 0 0 22px;
            -webkit-transition: 300ms all;
            transition: 300ms all;
        }

        .search > input:focus {
            width: 200px;
            outline: none;
        }

        .search > button {
            height: 45px;
            background: url("img/search.png") no-repeat 7px 10px;
            padding: 22px;
            position: relative;
            top: -5px;
            left: -5px;
            background-color: #E85628;
            border: 0;
            border-radius: 0 22px 22px 0;
            transition: 300ms all;
            outline: none;
            z-index: 999;
        }

        .search > button:hover {
            background-color: #ed7853;
        }

        .search > button:active {
            background-color: #ed7853;
        }
        .card{
            display: none;
        }
        .display{
            display: block;
        }
        .card  li{
            display: block;
            position: relative;
            margin-top: 20px;
            border: 1px solid #ff9158;
            padding: 10px;
        }
        .card  li a{
            width: 150px;
            line-height: 50px;
            font-size: 20px;
            margin-left: 30px;
            float: right;
            margin-top: -10px;
        }
        h3{
            font-size: 20px;
            display: inline-block;
            margin-top: 14px;
        }
        .foot{
            margin-top: 20px;
        }
    </style>
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
    <ul class="nav">
        <li><a href="index.jsp">首页</a></li>
        <li><a class="download-enjoy">下载应用</a></li>
        <li><a href="/user/login">登录/注册</a></li>
    </ul>
</div>
<div class="user-click order-popup">
    <div class="overlayer"></div>
    <div class="order-content">
        <div class="order-exist active">
            <div class="qrcode">
                <div src="qrcode.jpg"></div>
            </div>
            <p>下载 Enjoy 客户端，随时随地管理您的订单和礼券。</p>

            <div class="btn tip-close user-click-close">我知道了</div>
        </div>
    </div>
</div>
<div class="main-page">
    <div id="header-search">
        <div class="search">
            <input type="text"/>
            <button></button>
        </div>
    </div>
    <div class="_nav">
        <a name="nav" class="btn go-buy visible-hidden">所有订单</a>
        <a name="nav" class="btn go-buy visible-hidden">已处理订单</a>
        <a name="nav" class="btn go-buy visible-hidden">未处理订单</a>
    </div>
    <div class="card display">
        <ul>
            <li>
                <h3>订单号:</h3><span>1234567</span><br />
                <h3>金额：</h3><span>210元</span><br />
                <h3>时间：</h3><span>2015-04-01 22:27:24</span><br />
                <h3>订单内容：</h3><span>新品独家试吃 川仁巷尝鲜3-4人餐</span>
                <a class="btn go-buy visible-hidden" href="">已接受</a>
            </li>
            <li>
                <h3>订单号:</h3><span>1234567</span><br />
                <h3>金额：</h3><span>210元</span><br />
                <h3>时间：</h3><span>2015-04-01 22:27:24</span><br />
                <h3>订单内容：</h3><span>新品独家试吃 川仁巷尝鲜3-4人餐</span>
                <a class="btn go-buy visible-hidden" href="">未接受</a>
            </li>
            <li>
                <h3>订单号:</h3><span>1234567</span><br />
                <h3>金额：</h3><span>210元</span><br />
                <h3>时间：</h3><span>2015-04-01 22:27:24</span><br />
                <h3>订单内容：</h3><span>新品独家试吃 川仁巷尝鲜3-4人餐</span>
                <a class="btn go-buy visible-hidden" href="">已接受</a>
            </li>
            <li>
                <h3>订单号:</h3><span>1234567</span><br />
                <h3>金额：</h3><span>210元</span><br />
                <h3>时间：</h3><span>2015-04-01 22:27:24</span><br />
                <h3>订单内容：</h3><span>新品独家试吃 川仁巷尝鲜3-4人餐</span>
                <a class="btn go-buy visible-hidden" href="">未接受</a>
            </li>
            <li>
                <h3>订单号:</h3><span>1234567</span><br />
                <h3>金额：</h3><span>210元</span><br />
                <h3>时间：</h3><span>2015-04-01 22:27:24</span><br />
                <h3>订单内容：</h3><span>新品独家试吃 川仁巷尝鲜3-4人餐</span>
                <a class="btn go-buy visible-hidden" href="">已接受</a>
            </li>
        </ul>
    </div>
    <div class="card">
        <ul>
            <li>
                <h3>订单号:</h3><span>1234567</span><br />
                <h3>金额：</h3><span>210元</span><br />
                <h3>时间：</h3><span>2015-04-01 22:27:24</span><br />
                <h3>订单内容：</h3><span>新品独家试吃 川仁巷尝鲜3-4人餐</span>
                <a class="btn go-buy visible-hidden" href="">已接受</a>
            </li>
            <li>
                <h3>订单号:</h3><span>1234567</span><br />
                <h3>金额：</h3><span>210元</span><br />
                <h3>时间：</h3><span>2015-04-01 22:27:24</span><br />
                <h3>订单内容：</h3><span>新品独家试吃 川仁巷尝鲜3-4人餐</span>
                <a class="btn go-buy visible-hidden" href="">已接受</a>
            </li>
            <li>
                <h3>订单号:</h3><span>1234567</span><br />
                <h3>金额：</h3><span>210元</span><br />
                <h3>时间：</h3><span>2015-04-01 22:27:24</span><br />
                <h3>订单内容：</h3><span>新品独家试吃 川仁巷尝鲜3-4人餐</span>
                <a class="btn go-buy visible-hidden" href="">已接受</a>
            </li>
            <li>
                <h3>订单号:</h3><span>1234567</span><br />
                <h3>金额：</h3><span>210元</span><br />
                <h3>时间：</h3><span>2015-04-01 22:27:24</span><br />
                <h3>订单内容：</h3><span>新品独家试吃 川仁巷尝鲜3-4人餐</span>
                <a class="btn go-buy visible-hidden" href="">已接受</a>
            </li>
        </ul>
    </div>
    <div class="card">
        <ul>
            <li>
                <h3>订单号:</h3><span>1234567</span><br />
                <h3>金额：</h3><span>210元</span><br />
                <h3>时间：</h3><span>2015-04-01 22:27:24</span><br />
                <h3>订单内容：</h3><span>新品独家试吃 川仁巷尝鲜3-4人餐</span>
                <a class="btn go-buy visible-hidden" href="">未接受</a>
            </li>
            <li>
                <h3>订单号:</h3><span>1234567</span><br />
                <h3>金额：</h3><span>210元</span><br />
                <h3>时间：</h3><span>2015-04-01 22:27:24</span><br />
                <h3>订单内容：</h3><span>新品独家试吃 川仁巷尝鲜3-4人餐</span>
                <a class="btn go-buy visible-hidden" href="">未接受</a>
            </li>
            <li>
                <h3>订单号:</h3><span>1234567</span><br />
                <h3>金额：</h3><span>210元</span><br />
                <h3>时间：</h3><span>2015-04-01 22:27:24</span><br />
                <h3>订单内容：</h3><span>新品独家试吃 川仁巷尝鲜3-4人餐</span>
                <a class="btn go-buy visible-hidden" href="">未接受</a>
            </li>
            <li>
                <h3>订单号:</h3><span>1234567</span><br />
                <h3>金额：</h3><span>210元</span><br />
                <h3>时间：</h3><span>2015-04-01 22:27:24</span><br />
                <h3>订单内容：</h3><span>新品独家试吃 川仁巷尝鲜3-4人餐</span>
                <a class="btn go-buy visible-hidden" href="">未接受</a>
            </li>
        </ul>
    </div>
</div>
<div class="foot default-footer visible-hidden">
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
<script src="js/jquery-1.10.2.min.js"></script>
<script>
    $("a[name='nav']").click(function(){
        console.log($(this).index());
        $(".card").removeClass("display");
        $(".card").eq($(this).index()).addClass("display");
    })
</script>
</body>
</html>
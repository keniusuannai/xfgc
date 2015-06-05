<%@ page language="java" import="java.util.*,com.manggo.bean.*"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head><title>ENJOY-精选限量美食</title>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0,minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta content="a7cbcbcf81afea6c" property="wb:webmaster">
    <meta name="render" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=7,IE=9">  
<meta http-equiv="X-UA-Compatible" content="IE=7,9">  
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta charset="UTF-8"/>
    <link rel="stylesheet" href="css/css_style.css">
</head>
<body>
<div class="default-header visible-hidden">
    <div class="logo-place-holder"><a href="index.jsp" class="logo-img">幸福工厂</a>

        <div class="info"><a href="javascript:void(0)" class="change-city"><span></span>
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
        <li><a href="login.jsp">登录</a>/<a href="regist.jsp">注册</a></a></li>
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
<div class="wap-item-header"><a href="/"><i class="fa fa-angle-left"></i></a><span>登录</span></div>
<div class="login-register">
    <div class="login-tab visible-hidden"><a class="active">登录</a>

        <div class="line"></div>
        <a href="regist.jsp">注册</a></div>
    <div class="login">
        <form method="post" action="UserServlet?method=login" onsubmit="encrypt()">
            <div class="group"><label>注册邮箱/手机号</label><input type="text" name="username" required></div>
            <div class="group"><label>密码</label><input type="password" min-length="6" name="userpwd" required></div>
            <div class="login-more"><a class="sign">记住登录状态</a><a href="" class="forget-password">忘记密码？</a>
            </div>
            <div class="group"><input type="submit" value="登录"></div>
        </form>
        <div class="wap-login-tip"><span>还没有账号？</span><a href="register.jsp">点击这里注册</a></div>
        <div class="entries">
            <div class="text-tip"><span class="line"></span><span class="text">通过社交平台登录</span><span class="line"></span>
            </div>
            <div class="goto-login"><span id="wb_connect_btn" class="weibo"><i class="fa fa-weibo"></i></span><span
                    class="weixin"><i class="fa fa-weixin"></i></span></div>
        </div>
    </div>
</div>
<div class="order-popup weixin-qrcode">
    <div class="overlayer"></div>
    <div class="order-content">
        <div id="weixin-qrcode"></div>
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
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/encrypt.js"></script>
<script>
function encrypt(){
	$("input[name=userpwd]").val(hex_md5($("input[name=userpwd]").val()));
}
</script>
</body>
<link rel="stylesheet" href="https://dn-boson.qbox.me/pro_website/external/font-awesome/css/font-awesome.min.css">
</html>
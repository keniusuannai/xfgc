<%@ page language="java" import="java.util.*,com.manggo.bean.*"  pageEncoding="UTF-8"%>
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
<title>用户详情页</title>
<meta charset="UTF-8" />
<link rel="stylesheet" href="css/css_style.css" />
<style>
._nav {
	width: 160px;
	float: left;
}

.main-page {
	width: 960px;
	margin: 0 auto;
	min-height: 800px;
}

.main-page h1 {
	font-size: 30px;
	margin-top: 30px;
	color: #E85628;
	padding: 10px;
	border: 1px solid #E85628;
	width: 124px;
}

.main-page h1:hover {
	cursor: pointer;
	opacity: .9;
	-ms-filter: "progid:DXImageTransform.Microsoft.Alpha(Opacity=90)";
	filter: alpha(opacity =   90)
}

.bg {
	background-color: #E85628;
	color: #ffffff !important;
}

.card {
	width: 800px;
	float: left;
	margin-top: 50px;
	display: none;
}

.card .input1 {
	height: 31px;
	padding: 0;
	border: none;
	color: black;
	background-color: white;
	cursor: text;
	width: 230px;
}

.userinfo {
	padding-left: 210px;
	width: 590px !important;
}

.head_img {
	width: 150px;
	height: 133px;
	margin-right: 30px;
	float: left;
	/*border: 1px solid #E85628;*/
}

h3 {
	font-size: 20px;
	display: inline-block;
}

.userinfo a {
	width: 75px;
	line-height: 40px;
	font-size: 18px;
	float: right;
	margin-top: -25px;
	height: 40px;
}

.card  li {
	display: block;
	position: relative;
	margin-top: 20px;
	border: 1px solid #ff9158;
	padding: 10px;
}

.card  li a {
	width: 100px;
	line-height: 40px;
	font-size: 18px;
	float: right;
	margin-top: -17px;
	height: 40px;
}

.submit {
	width: 100px;
	margin-left: 182px;
	font-size: 18px;
	height: 40px;
	display: none;
}
.foot {
	margin-top: 20px;
}

.order {
	margin-top: 0;
}

.editpwd {
	margin-left: 250px;
}

.editpwd button {
	width: 150px;
	margin-top: 20px;
}

.editpwd span {
	color: red;
	margin-left: 20px;
	display: none;
}
.display {
	display: inline-block !important;
}
</style>
</head>
<body>
	<%User u=(User)request.getAttribute("userinfo"); %>
	<div class="default-header visible-hidden">
		<div class="logo-place-holder">
			<a href="index.jsp" class="logo-img">幸福工厂</a>

			<div class="info">
				<a href="javascript:void(0)" class="change-city"><span>北京</span><i
					class="fa fa-angle-down"></i>
					<ul class="city">
						<li channel_id="140">北京</li>
						<li channel_id="104">上海</li>
					</ul> </a>

				<p>精选限量美食</p>
			</div>
		</div>
		<ul class="nav">
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
					<div src="qrcode.jpg"></div>
				</div>
				<p>下载 Enjoy 客户端，随时随地管理您的订单和礼券。</p>

				<div class="btn tip-close user-click-close">我知道了</div>
			</div>
		</div>
	</div>

	<div class="main-page">
		<div class="_nav">
			<h1 class="bg">个人信息</h1>
			<h1 id="editpwd">修改密码</h1>
			<h1 id="myorder">我的订单</h1>
		</div>

		<div class="userinfo card display">
			<img src="<%=u.getImg() %>" class="head_img" alt="" />
			<form action="UserServlet?method=updateUser" method="post">
				<a id="edit" class="btn go-buy visible-hidden">编辑</a>
				<h3>用户昵称 :</h3>
				<input name="username" class="input1" type="text"
					value="<%=u.getUsername() %>" disabled="none" /><br /> <br />
				<h3>用户邮箱 :</h3>
				<input name="email" class="input1" type="text"
					value="<%=u.getEmail() %>" disabled /><br /> <br />
				<h3>手机号码 :</h3>
				<input name="phone" class="input1" type="text"
					value="<%=u.getPhone() %>" disabled /><br /> <br />
				<h3 style="margin-left: 182px;">订单地址 :</h3>
				<input name="address" class="input1" type="text"
					value="<%=u.getAddress() %>" disabled /><br /> <br />
				<button id="submit" class="submit">保存</button>
			</form>
		</div>
		<div class="card">
			<table class="editpwd">
				<tr>
					<td>请输入原始密码：</td>
					<td><input type="password" name="oldpwd" required /><span
						class="resp">原密码错误!</span></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>请输入新密码：</td>
					<td><input type="password" name="userpwd" required /><span
						class="resp">密码必须至少六个字符</span></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>确认密码：</td>
					<td><input type="password" name="confirm_userpwd" required /><span
						class="resp">两次密码输入不一致！</span></td>
				</tr>
				<tr>
					<td>&nbsp;</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td><td rowspan="2"><button id="editpwd-sub">提交</button></td>
					</td>
            </tr>
        </table>

    </div>
	
						<div class="card order">
							<ul id="order">
        </ul>
    </div>
    <div style="clear: both"></div>

					
					</div>
<div class="foot default-footer visible-hidden">
    <div class="content">
        <ul>
            <li>关注我们：</li>
            <li><a href="http://www.weibo.com/u/5385454600"
					target="_blank" class="weibo"><i class="fa fa-weibo"></i></a><a
					id="weixin-code" class="weixin"><i class="fa fa-weixin"></i></a></li>
            <li>京ICP备12040847 · 京公网安备11010502025574 · 京ICP证150031号</li>
            <li>版权所有 ©2014 严肃科技</li>
        </ul>
        <div class="download">
				<p>扫描下载客户端</p>
				<a>
            <div></div>
        </a>
			</div>
    </div>
</div>
<div class="order-popup weixin-code">
    <div class="overlayer"></div>
    <div class="order-content">
			<span class="close-weixin-popup"><i class="fa fa-times"></i></span>

        <h1>关注我们</h1>
			<img
				src="https://dn-boson.qbox.me/pro_website/images/ricebook_code.jpg">

        <h2>请使用微信扫描二维码关注</h2>
		</div>
</div>
<script src="js/jquery-1.10.2.min.js"></script>
<script src="js/encrypt.js"></script>
<script>
    $(".main-page h1").click(function(){
        $(this).siblings().removeClass("bg");
        $(this).addClass("bg");

        $(".card").removeClass("display");
        $(".card").eq($(this).index()).addClass("display");
    });
    $("#edit").click(function(){
        $("#submit").addClass("display");
        $(".userinfo input").removeClass("input1").removeAttr("disabled");
    });
    $("#myorder").click(function(){

        var htmlobj=$.ajax({url:"GoodsServlet?method=getGoodsByUserid",async:false});
        var json=eval(htmlobj.responseText);
        console.log(json);
        $("#order").empty();
        $.each(json,function(i,g){
            var date= new Date(g.time.time);
            $("#order").append('<li>'+
            '<h3>订单号:</h3><span>'+g.orderid+'</span><br />'+
            '<h3>金额：</h3><span>'+g.prices+'元</span><br />'+
            '<h3>时间：</h3><span> '+ date.getFullYear()+'-'+(date.getMonth()+1)+'-'+date.getDate()+' '+ date.getHours()+':'+ date.getMinutes()+':'+date.getSeconds()+'</span><br />'+
            '<h3>订单内容：</h3><span>'+g.goodsname+'</span>'+
            '<a class="btn go-buy visible-hidden" href="">查看</a>'+
            '</li>');

        });

    });
    
    $("#editpwd-sub").click(function(){
        var a=$("input[name=userpwd]");
        var b=$("input[name=confirm_userpwd]");
        var c=$("input[name=oldpwd]");
        a.next().removeClass("display");
        b.next().removeClass("display");
        c.next().removeClass("display");
        if(a.val().length<6){
            a.next().addClass("display");
            return false;
        }
        if(a.val()!=b.val()){
            b.next().addClass("display");
            return false;
        }else{
            a.val((hex_md5(a.val())));
            b.val((hex_md5(b.val())));
            var htmlobj=$.ajax({url:"UserServlet?method=changePwd",async:false,date:{oldpwd:$("input[name=oldpwd]").val,newpwd:a.val()}});
            var json=eval(htmlobj.responseText);
            if(json==0){
            	c.next().addClass("display");
            }else{
            	$("editpwd-sub").html("修改成功!");
            	setTimeout($("editpwd-sub").html("保存"),2000);
            }
            return true;
        }
        

    });
</script>
</body>
</html>
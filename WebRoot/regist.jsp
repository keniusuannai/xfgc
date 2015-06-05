<%@ page language="java" import="java.util.*,com.manggo.bean.*"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html class=" webp webp-alpha webp-animation webp-lossless">
<head>
<title>ENJOY-精选限量美食</title>
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
<style>
.group {
	margin: 0 auto;
	width: 46%;
}

.check {
	display: none;
	color: red;
}

.display {
	display: block;
}
</style>
</head>
<body>
	<div class="default-header visible-hidden">
		<div class="logo-place-holder">
			<a href="index.jsp" class="logo-img">幸福工厂</a>

			<div class="info">
				<a href="javascript:void(0)" class="change-city"><span></span>
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
	<div class="wap-item-header">
		<a href="/"><i class="fa fa-angle-left"></i></a><span>注册</span>
	</div>
	<div class="login-register">
		<div class="login-tab visible-hidden">
			<a href="login.jsp">登录</a>

			<div class="line"></div>
			<a class="active">注册</a>
		</div>
		<div class="login register">
			<form method="post" action="UserServlet?method=regist"
				onsubmit="return encrypt()">
				<div class="group">
					<label>用户名</label><input type="text" name="username" required=""
						class="register-phone">
				</div>
				<div class="group">
					<label>创建密码</label><input type="password" name="userpwd"
						required="">
						<span class="check">密码必须不小于6位！</span>
				</div>
				<div class="group">
					<label>确认密码</label><input type="password" name="confirm_userpwd"
						required=""><span class="check">两次输入密码不一致！</span>
				</div>
				<div class="group">
					<label>邀请码(选填)</label><input type="text" min-length="6"
						name="invitation_code" value="">
				</div>
				<div class="group">
					<input type="submit" value="注册">
				</div>
			</form>
			<div class="register-tip">
				<p>
					<i class="fa fa-check-square"> </i><span> <a
						href="http://enjoy.ricebook.com/user/agreement" target="_blank">我已阅读并同意《用户服务手册》</a></span>
				</p>
			</div>
			<div class="wap-register-tip">
				<span>已有账号？</span><a href="../user/login">点击这里登录</a>
			</div>
		</div>
	</div>
	<div class="default-footer visible-hidden">
		<div class="content">
			<ul>
				<li>关注我们：</li>
				<li><a href="http://www.weibo.com/u/5385454600" target="_blank"
					class="weibo"><i class="fa fa-weibo"></i></a><a id="weixin-code"
					class="weixin"><i class="fa fa-weixin"></i></a></li>
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
	<link rel="stylesheet"
		href="https://dn-boson.qbox.me/pro_website/external/font-awesome/css/font-awesome.min.css">
	<script src="https://dn-boson.qbox.me/pro_website/js/all.js?v=1.05"></script>
	<div
		style="margin: 0px; padding: 0px; height: auto; width: 336px; position: absolute; z-index: 9999; left: 364.5px; top: 687px; text-align: left; display: none;">
		<div _type="top"
			style="width:100%;height:18px;padding: 0px;float: left">
			<div _type="a"
				style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAA8AAAAOCAYAAADwikbvAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAACqSURBVDhPldA9CsJAFATg+J9G75ELpPAENlt4hz1gwCMttoLtNjoDjjyfT7I+GFJ9zGy67v9bgChN2oJm/AstUcmEN4cIV5GMoJqECL9wK1wDMx9ncdQmtIFi3udbhTXRwi0UE+IIqk1wJxnNtY2Ce4ABGZHjHOZUwQNRSulUSplqrVeP7Vz/xiHnfAa6PV5H7Cf7uXwj3zei8SLIr8W+lXP1c3q+Ea13i59GizeunpCWnwAAAABJRU5ErkJggg==) no-repeat right bottom;height:18px;width:16px;float:left;position:relative;z-index:9999"></div>
			<div _type="b"
				style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAPCAYAAAD3T6+hAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAACbSURBVDhP3ZBZDoMwDAXT0gXowoG6wf0PRcdUjhwE6oKVj0YaySTw5pEQXmuVkbeyNWU8GYSfBBa850EimwvcIPMiaT0VukXmSdLcBu8QzbHn7Fdi+3G4DSwReBH/QgU2uEKk1MwexKsR0Tj8wJ7lyPNShqsSkbZXgQafOBPOEzTsfUu48JFwhZvhzvwwtMxCt4g+8wqZff3/C5+R9MvlT87pLAAAAABJRU5ErkJggg==) no-repeat bottom;float:left;height:18px;width:28px;position:relative;z-index:9999"></div>
			<div _type="c"
				style="float: left; height: 18px; width: 245px; background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABIAAAAPCAYAAADphp8SAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAABGSURBVDhPzczJCYBAAMDAeKGIYE32X9SaHszDQL4DMEUzCxWzCBWzChWzCRWzCxVzCBVzChVzCRVzCxXzCH1/RBE543/QC3Q3KDjU+J1VAAAAAElFTkSuQmCC) 0% 100% repeat-x;"></div>
			<div _type="e"
				style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABUAAAAPCAYAAAALWoRrAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAADwSURBVDhPpZNLDoJAEETH/y9+YryG8QBGE3dsPIB7TujK80DC0pUbYKHVZlradmaAOEmFoYFXlQKMMabjEEb/LRdUz1o7dPGEVsiokUEPd7HaGAThfVxlSQPaSxNfeid8gCnLZ1AH/wEPMZHSBq5qar+YMaCkkRUbtIV/pZ3ibGLlg+vOuQ7vpzcDkERwNmC4K7WuQ4I/aQ/Y7aEttA7AZR1hcJ7nWZIk1yiKzha+EcmpFplag101GPO0qyiKexzHF0B20LwGLDvW4ApK7DRNb4AdoUVDsKyh6paT0rEsywdgJ2gFLT1g+fIosfzz3uAXeC06HQLgjlUAAAAASUVORK5CYII=) no-repeat left bottom;float:right;height:18px;width:22px"></div>
			<div _type="d"
				style="background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABkAAAAPCAYAAAARZmTlAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAACjSURBVDhP7ZDbCoMwEESnd2svfk4R8dL//6h2UlwYxOim1D4ZOJhoZs+uALD5A9hSshQ2AHaU/Jph09hTsgTaOA6UpPJwZqx5nBhIoXxxMVMOckeeYyDjRy8fga1eFMtq48h52UOlAhFVI/kz3xmhCVwd1GMCEdVS48K9EgZAMUM7JRBRwzr3nhufARsATx6ieAQi6lgr0AoNUop8e3eVJP25N7SrKNBSUf6NAAAAAElFTkSuQmCC) no-repeat center bottom;float:right;height:18px;width:25px"></div>
		</div>
		<div _type="center" style="height:auto;padding:0px;float:left">
			<div _type="a" style="float:left;height:auto;width:16px">
				<div _type="s1"
					style="background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAVCAYAAABPPm7SAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAC4SURBVDhP3ZPbDsIgEESxWu/18j3e9f+/qZ2JTEJWEPDFpCQTHihnZnepc+818WqwT71m2FtoDi2gFXTqzfL3PwD28hIfrqFzDBC6K0HMnYBLDUDR5b4pAbD+lPsWZ9dcAgugO5tH9w66/QJg7dUAWz/j76B7aYJw9nQnYA89UgCOTyO0j0fxiwDhBGwDs4DYBNRA1n/IlZACqIEEPL/1IAc41gD49+kJK8F/AZwAE7xKe2BLGDNgAJXDWeJMX67WAAAAAElFTkSuQmCC) no-repeat;float: left;height: 21px;width: 16px;"></div>
				<div _type="s2"
					style="float: left; width: 16px; height: 51px; background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAHCAYAAAABIM1CAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAAySURBVChTY2BgYGAEYiYgZgZiFiBmBWJ2IOYAYi4g5gFifiAWBGLn/2gAKDZqwICHAQBFj3OyE7qIpwAAAABJRU5ErkJggg==) 100% 50% repeat-y;"></div>
				<div _type="s3"
					style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAVCAYAAABPPm7SAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAACASURBVDhP7ZRZCoAwDETjvm9HUu9/pjoDFkpEieJnC+8n0EcamhERSUAKMpCDAlSgBi3owQQWsDt1UIuCOAMX/4Ezz2A8l2n7ukyvBaVa518EM6TmJ4QddLjIDihYn2bAVPKJ5AUNahQMVgFjjZFGAWMtFDDWbjvQuagFPhcvggOy51ru028jCAAAAABJRU5ErkJggg==) no-repeat;float:left;height:21px;width:16px;"></div>
			</div>
			<div _type="b"
				style="position: relative; float: left; height: auto; width: 298px; background: rgb(255, 255, 255);">
				<div
					style="font-family: Arial, 微软雅黑, 'Microsoft YaHei', Verdana, Helvetica, sans-serif; float: left; height: 10px; width: 298px;"></div>
				<div
					style="font-family: Arial, 微软雅黑, 'Microsoft YaHei', Verdana, Helvetica, sans-serif; float: left; height: auto; width: 298px;">
					<div
						style="float:left;height:auto;width:100px;font-size:14px;line-height:28px;color:#666;text-align:left;padding-left:12px">
						猎豹强密码建议</div>
					<div
						style="float:right;height:auto;width:168px;font-size:14px;line-height:30px;color:#666;text-align:left;margin-left:-100px">
						<div none="0"
							style="font-size:12px;line-height:28px;color:#093;float:right;height:28px;margin-left:10px;width:auto;margin-right:10px;text-decoration:underline;cursor:pointer">
							选项</div>
						<input type="text"
							style="-webkit-box-sizing:border-box;font-size:16px;line-height:26px;color:#555;height:26px;width:105px;border:1px solid #22ae09;margin:0px;float:left;outline:none;padding:0px 8px"
							readonly="true">
					</div>
				</div>
				<div
					style="float: left; height: 10px; width: 298px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(235, 235, 235); margin-bottom: 10px;"></div>
				<div style="display: none;">
					<div
						style="font-family: Arial, 微软雅黑, 'Microsoft YaHei', Verdana, Helvetica, sans-serif; float: left; height: auto; width: 298px;">
						<div
							style="float:left;height:auto;width:100px;font-size:14px;line-height:28px;color:#666;text-align:left;padding-left:12px">
							包含字符</div>
						<div
							style="float:right;height:auto;width:168px;font-size:14px;line-height:30px;color:#666;text-align:left;margin-left:-100px">
							<div
								style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAGXSURBVDhPnZU9TsMwGIaLEDAgJgZg4QJwAdgYmRBMCAkmDgADI13bU3CNHqhS1fypVdS/JG3M94Q4ctK4TbH0KPHn930TO3HSaq23PSntQk3EX2lfuBLuhcecJznWocfR4sFbatzRda/X+5lMJrFq2NDiwZvPqgjlCg/z+TyNokgtFotGoMWD17xL7u5AeEnTFMFO4MGbZ5CVPYBD4XW1WqnpdLoV7+uy0ODBm2cUgUdSeFsul0rWZSOEadDiwSuQUQ5MkkSFYWjFDCMILR5rYBzHajweZ2DW57qvAwnRY3isgTzd0WhUTImAap8waho81sDZbKaCIFBc1ZyePqfOuAkeayCL7Pt+RjWUvh4zj3isgSyy67oFOpSjWTfP8VgDWWjHcUqwG6o1s4+nLpAX+3kwGPiIh8NhI9DiwVt9sdl6N51Op93v9wPP81QT0Ha73W/x3ppbj+3Hx+FEuBPehQ/hcwto0OLBW/qE6Q/EsQycCmfCuXBhgTE0aPEww2zbmY0CV2GQNWVvbgINWjxrYdXgf/8CfgEsntxJJHriYQAAAABJRU5ErkJggg==) no-repeat left;height:20px;width:50px;padding-left:28px;float:left;line-height:20px;font-size:12px;margin-top:5px;margin-bottom:2px;cursor:pointer"
								checkbox="1">小写</div>
							<div checkbox="1"
								style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAGXSURBVDhPnZU9TsMwGIaLEDAgJgZg4QJwAdgYmRBMCAkmDgADI13bU3CNHqhS1fypVdS/JG3M94Q4ctK4TbH0KPHn930TO3HSaq23PSntQk3EX2lfuBLuhcecJznWocfR4sFbatzRda/X+5lMJrFq2NDiwZvPqgjlCg/z+TyNokgtFotGoMWD17xL7u5AeEnTFMFO4MGbZ5CVPYBD4XW1WqnpdLoV7+uy0ODBm2cUgUdSeFsul0rWZSOEadDiwSuQUQ5MkkSFYWjFDCMILR5rYBzHajweZ2DW57qvAwnRY3isgTzd0WhUTImAap8waho81sDZbKaCIFBc1ZyePqfOuAkeayCL7Pt+RjWUvh4zj3isgSyy67oFOpSjWTfP8VgDWWjHcUqwG6o1s4+nLpAX+3kwGPiIh8NhI9DiwVt9sdl6N51Op93v9wPP81QT0Ha73W/x3ppbj+3Hx+FEuBPehQ/hcwto0OLBW/qE6Q/EsQycCmfCuXBhgTE0aPEww2zbmY0CV2GQNWVvbgINWjxrYdXgf/8CfgEsntxJJHriYQAAAABJRU5ErkJggg==) no-repeat left;height:20px;width:50px;padding-left:28px;float:left;line-height:20px;font-size:12px;margin-top:5px;margin-bottom:2px;cursor:pointer">
								大写</div>
							<div checkbox="1"
								style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAGXSURBVDhPnZU9TsMwGIaLEDAgJgZg4QJwAdgYmRBMCAkmDgADI13bU3CNHqhS1fypVdS/JG3M94Q4ctK4TbH0KPHn930TO3HSaq23PSntQk3EX2lfuBLuhcecJznWocfR4sFbatzRda/X+5lMJrFq2NDiwZvPqgjlCg/z+TyNokgtFotGoMWD17xL7u5AeEnTFMFO4MGbZ5CVPYBD4XW1WqnpdLoV7+uy0ODBm2cUgUdSeFsul0rWZSOEadDiwSuQUQ5MkkSFYWjFDCMILR5rYBzHajweZ2DW57qvAwnRY3isgTzd0WhUTImAap8waho81sDZbKaCIFBc1ZyePqfOuAkeayCL7Pt+RjWUvh4zj3isgSyy67oFOpSjWTfP8VgDWWjHcUqwG6o1s4+nLpAX+3kwGPiIh8NhI9DiwVt9sdl6N51Op93v9wPP81QT0Ha73W/x3ppbj+3Hx+FEuBPehQ/hcwto0OLBW/qE6Q/EsQycCmfCuXBhgTE0aPEww2zbmY0CV2GQNWVvbgINWjxrYdXgf/8CfgEsntxJJHriYQAAAABJRU5ErkJggg==) no-repeat left;height:20px;width:50px;padding-left:28px;float:left;line-height:20px;font-size:12px;margin-top:5px;margin-bottom:2px;cursor:pointer">
								数字</div>
							<div checkbox="0"
								style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABQAAAAUCAYAAACNiR0NAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAFcSURBVDhPnZVPToNAGEdrjLowrlyoZ9AL6M6lK6MrY6IrD6AH0C2cotfogUia0kIgDf8LjN+rtCkto4yTvJDMfO/HwDDDYLDb9qTLhI6In6594VK4Ex4aHuXaxWqcWhzcVmNGV6PRaBhFUaF6NmpxcJunWodyh/s0Tes8z1WWZb2gFgd3c5bM7kB4ruuaAiNwcJsMspYLcCi8VFWl4jg2Age3yVgHHknHa1mWSt6LETi4AhntwMVioebzuRE42sCiKFQYhkbgaANZ3SAIjMDRBiZJonzfNwJHG8iCeJ5nBI42kAWZTqdG4GgDWRDXdY3A6Qrkw34aj8cegZPJpBfU4uBuf9hsvWvLsr4cx/Fns5nqA7W2bX+Ke7O59dh+HA4nwq3wJrwLH39ADbU4uK0jbHVAHMvAqXAmnAsXGhijhlocnnC57TYbHdyFQd4pe/M3qKEWZydsO/jfv4BvUyT82FhX4/kAAAAASUVORK5CYII=) no-repeat left;height:20px;width:50px;padding-left:28px;float:left;line-height:20px;font-size:12px;margin-top:5px;margin-bottom:2px;cursor:pointer">
								符号</div>
						</div>
					</div>
					<div
						style="float: left; height: 10px; width: 298px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(235, 235, 235); margin-bottom: 10px;"></div>
					<div
						style="font-family: Arial, 微软雅黑, 'Microsoft YaHei', Verdana, Helvetica, sans-serif; float: left; height: auto; width: 298px;">
						<div
							style="float:left;height:auto;width:100px;font-size:14px;line-height:28px;color:#666;text-align:left;padding-left:12px">
							字段长度</div>
						<div
							style="float:right;height:auto;width:168px;font-size:14px;line-height:30px;color:#666;text-align:left;margin-left:-100px">
							<div
								style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAGEAAAAeCAYAAAA8cnC3AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAANbSURBVGhD7ZrNTlpRFIWtrW1NddRB03kfwaTjvhEjEXwGxhr1BWwkgvIPIr8KOrJzYrUqVcCCEFBUdvciQLQHSU5y9+Ck7GTFcL3nuu63PPvccM/ExPN6xR8nWa9Zb8aynAG4gi84K9WFHwqFvuRyuSDran9/n8aylgG4gi84Dwtj0u/3zzH0WqlUotvbW+p0Opbr8PCQTCj4lLh/cAVfcA6Hw197QXRnBGbBVCaTiZbLZZE/3r+h/z2EPgdw3tvb22Hub/utCT1qOpvNNtrtNj0+Porp4ODAhIlA8CnJAZyZdxPce+tvdxH+wAfp4eFBVCaFIM0CvMG9HwKegma4HdH9/b2o8vm8ETMBPqVZgDe4955Au49hs+lUitp3d6LK8ROXCQWf0izAG9yfhZDig1i9JcWLkQkZYNEU5QDG4K2EkEwmqdVqicqkEKRZgLcSQiKRoGazKSosRiYUfOqwWFtbI0hnDHgrIcTjcWo0GqJKp9MmZEDwqcNicXGRIJ0x4D00hHq9TpJCHzSh4FOHQz8EnTFDQ9iJxeimVhNVivugCQWfOiycTidBOmPAW5kJ0WiUqtXqi1peXiaHwzFSOGfUNdAHTSj4lGYB3moIkQj9ub5+UasrK+RYWBgpnDPqGrvcB00o+JRmEWXeSgj8rR5VKhVRoQ+aUPCpw2KB/zkhnTHgrYQQCgapzF+zSgp90ISCTx0OdrudIJ0x4K2EEOSDpasrUcW4D5pQ8KnDwj4/T5DOGPBWQggEAnR5eSmqCPdBEwo+dVgsLS0RpDMGvJUQ/D4f/S4WRRXhPmhCwac0C/BWQvBtb1Px4kJU4VDIhAwIPqVZgLcSwjYfPD8/FxX6oAkFn9IswFsJYWtri87OzkSFPmhCwac0C/D+N4QZz+Zm4+fxMf06PRVTwO83IQOCT0kO4Oz1ePCOefBmrfuO2e12J34cHdHpyYmYsBiZUPApyQGcwfvpO2aEMO1yub55vd6bIz6hUCjQCYdhtXyGhACfVt87rgeu4AvO4P10twX2HWH/y6zNZpv7vr6+697YuOb2RGNZywBcwRece+vBYN8Rf+7uj3zX+8VH/vmJ9XksyxmAK/jiBT94g/ug+huBp/jI+16vwqKBk8eyhgF4Yp8R+ILzYGPwXy3SDEv7XRiEAAAAAElFTkSuQmCC) no-repeat;margin:0px;padding:0px;float:left;height:30px;width:97px">
								<div
									style="margin:0px;padding:0px;float:left;height:30px;width:28px;cursor:pointer"></div>
								<input maxlength="2"
									style="font-size:14px;line-height:23px;color:#666;padding:0px;float:left;height:23px;width:40px;border:none;margin:3px 0px 0px 0px;outline:none;text-align:center">

								<div
									style="margin:0px;padding:0px;float:right;height:30px;width:28px;cursor:pointer;"></div>
							</div>
						</div>
					</div>
					<div
						style="float: left; height: 10px; width: 298px; border-bottom-width: 1px; border-bottom-style: solid; border-bottom-color: rgb(235, 235, 235); margin-bottom: 10px;"></div>
				</div>
				<div
					style="font-family: Arial, 微软雅黑, 'Microsoft YaHei', Verdana, Helvetica, sans-serif; float: left; height: auto; width: 298px;">
					<div
						style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHAAAAAiCAYAAACHpl23AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAK6SURBVGhD7dvLahphGMbxpCktpemq0NJFoO22u15C6V259GoEwTOKomhUFHHrBXhIFJV4PsZk+v0/okwYZ9138QpPHMysnh/vOPPxeXHherVarV+NRiNrsqzVao5GTgeYYIOR2+x4fFkqlX43m83FfD53DoeDoy9ZDWCCDUZYGbhLN+RVvV7PLRYL5/n5WSO4A4ywMnhXp+kzB++q1erq6enJ0cjvwFitMTtO4Rtz8MF8aCePUdXI7QAjrDA7TiGj+LFSqdjpe3x81AjuACOsMDsCvjUH1+Vy2QLu93uN4A4wwgozE+zsn0+3t7f20rnb7TSCO8AIK8zOAm63W0cjtwNfQPNsYb/7NpuNRnAHGGHlmcBisWgB1+u1RnAHGGHlASwUCvbmZblcagR3gBFWvoA86WvkduALmM/n7d0n620auR1ghJVnAnO5nL37nE6nGsEdYISVL+BkMnE0cjvwBcxms/bx4eHhQSO4A4yw8kxgJpOxjw/j8VgjuAOMsPIAptNpCzgajTSCO8AIK1/A4XDoaOR24AuYSqWc1WrlDAYDjeAOMMLKM4HJZNKuwPT7fY3gDjDCygOYSCQs4P39vUZwBxhhdRaQJbS7uzuN4A4wOgsYj8ftGmiv19MI7gAjrDwTGIvF7Bpot9vVCO4AI6w8gJFIZMU6KICdTkcjsANsMIpGo2wrfLWl4jocDheB4yaG93a7rRHUgdsGK/emJrutMBgM/jFLNCtOZD10NptpBHWACTYYYeXeVmg39pp8DgQCf0OhUJkRNZdURyOnA0ywwQirFzO7vZ4fSbBNm2vqF5Mbk+8mP0x+akR0gAUm2GCE1WlrPYhIvn/5B7pfTb5pRHWACTbgYXX6cctxCvkAVS6nbNtm5y8na/5/B1hggg1GWL36eRmIR0i+EzmBHdsaOR1ggs0ruH86S6Bli3oyIAAAAABJRU5ErkJggg==) no-repeat;text-align:center;height:34px;width:112px;font-size:12px;line-height:31px;color:#626262;float:left;margin-left:5px;cursor:pointer">
						随机换一个</div>
					<div
						style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAHAAAAAiCAYAAACHpl23AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAM+SURBVGhD7dvLTlNRFMbxIpxbKRJA2p6eU9rSoiFeCWri0Ogz+BZERIMQVAIqCiKCVYoQQog3ooQoiATCfeCrGAeiGObL9TVAquw5e7BI/qGBjr5fNnSwTyBQ8FUzaqXiw/a8n7N/xIcdkvTZgE2+c3MwKjTbe12UGAo2JEaC26fnw3Rh3aeL32okjTaACWySueBWuNOqZbiiQsgj/rCziDfUr1dQ3WqIMqulkkYbwAQ2MPKz9izjHdk/ffzC8LPOTuNGnOpWGG+F8STtNoANjLzn9i+Y7Z1CSDoMSOc345RZZjxJ2w1g5A/aO2xm753CYn5R6g851Mh/ZzNLDChpuwGM/IE8YCkHu0AJF/IHGXDNo8wiA0rabgAj/2keMLRrlwcs857Z1LDiUnohKGm8AYy8fhXggE3nlhnwKwNK2m4AI69PBdjPgEtRSn9hQEnbDWDk9aoAn9h0diFC6VkGlLTdAEbeIxVgr01n5hnwEwNK2m4AI69HBfjYolNzx6h2xpE03gBGsQeW4lNoj0UnP1dR7TQDStpuAKNYtwrwIQPOMOAHBpS03QBGsS4FYOy+RfXTlZSaciSNN4CR26kC7GbAjxWUes+AkrYbwEgN2GXSialySr21JY03gJF7zzz4ISbWadLxd0cp9ZoBJW03gJF7VwHIqlT3poySk7ak8QYwcjtUgHdMykyGKDnBgJK2G8DIbVcBdpiUnmDAcQaUtN0ARm6bCrDdoPR4kJJjlqTxBjByW42DH2KibQalxhxKjFqSxhvAKKoEvG1Q8pVNiREGlLTdAEbRW6oT2MqAOQbMMaCk7QYwiraoAFk1kWW8l5LOGySzecDf/9+JCUVumBvxPsZ7Iem8AYwi143FQsD8tcLKa8VX3ZvGn3ivSTWDJiWykk4bwAQ2bLRdfjnQWHitEIAOV1V2peRSuMnYjDQbW5EWgySNNmg2flY3GWswYqvKwou9eEjCxNVCLsz5XJLDUzB4iEI6/A1gARPYVO9a7V+tx+VeXK+3dn9Rxd8jnCtptQFMcPJw0HDg9h9uASBOIX4AVdy5x7Vt3PzFm6XD3wAWMIENjGD1z+NlQCyExP9F3NiW9NkAJgfg/gJrzQfLcGUuBgAAAABJRU5ErkJggg==) no-repeat;text-align:center;height:34px;width:112px;font-size:12px;line-height:31px;color:#FFF;float:right;margin-right:5px;cursor:pointer">
						填写并复制</div>
				</div>
			</div>
			<div _type="c" style="float:right;height:auto;width: 22px">
				<div _type="s1"
					style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAVCAYAAABCIB6VAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAE+SURBVEhLzZTbTgJBEERHuSMCAl5RQPkUAwQIePn/f4GqMB06nZ5dVniQpMLD7pzUVldP2JlfCOET6kFdqAPdQjdQE2pANagKVaAyVIq6xv9VVAgOeIaHAwVvG3g9Ac8Fz3HwIcLvonPCWzmuCT7CHccLvPAI3UN9iHAbiXYtceSClwA9R7iN5BTXh5wdxys8eIGeMlxziHRth5gZxRoHXqNryZot8eIoBN4A8hZdS9ZSPz3EVM7JKAgeQcMYB13rITJn9lp3Wg8wCd7i0NiJw7bDLgsX5dgMZ3hfeGFi4tDtkE30BpgJ/gb03cTBTuucZcXTzXAcp8DMuQvZAfrNcMA/OPzh5CwDPAs8LQDmbadvusOSJBwTzAHqRUk5/hOYi8J7Q9923EC5M2RJCjuWDfzf4F98qmR8UccXAe8B4/hmVpFZPuwAAAAASUVORK5CYII=) no-repeat;float: left;height:21px;width: 22px"></div>
				<div _type="s2"
					style="float: left; width: 22px; height: 51px; background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAICAYAAAD9aA/QAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAABCSURBVChT7dK7CYBQAAPA+EMRQQSxEATBjdx/F73aAaxe4NoUIXk+SXJzcXKws7GyMDMxMtDT0dJQU6UUlyn+e8UL9a+J0Q5cco4AAAAASUVORK5CYII=) 0% 50% repeat-y;"></div>
				<div _type="s3"
					style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAVCAYAAABCIB6VAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAADDSURBVEhL7ZVZCgIxEAXjvu/7Pup5XO9/F60GG9rgQNTRrwwU5CNThEfSz928zzl3hT0ksII5jGEIPehAE+pQhQqUoAgFyEPORXGMIt6K9x7I5Vcv72/iWVazwp54iVTFg8cQan86hFS8QZC5eIc0VFwOHZtnNm5hDQuYwggkii74UXwt7htxwwz6YPGJnxLQ9piwlvZQcYu1iGsgDWLF0h6pDXJ8ka+tJSuWWlKx1lKq+ODlK32nV037Tk+s4ue+o/PuOqhpM6eVzJ8AAAAASUVORK5CYII=) no-repeat;float:left;height:21px;width:22px"></div>
			</div>
		</div>
		<div _type="foot"
			style="height: 23px; padding: 0px; float: left; width: 336px;">
			<div _type="a"
				style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAWCAYAAADJqhx8AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAEcSURBVDhPlZS9bsJAEIQNJPyEQEiEwmsgaqKkSOWGPq0fEvE2lrs0kSjtJsxKHmu93jubk0b+ke/TzO6ekyRJRrXGuE6gB2gKzaA59AQ9Q2voq6qq679aeOcCHmsIAUs8r6BjURSXewELbCRgn2XZD1z8EdLnQGIIgDHecf+Rpukpz/NzWZa/FhCrA13ssOkAfULfMQDrYF1IMTfQK7QVwJAYtpiEvIUAbKfnglFeaicdB7oOBMhciAsWVENaABkqAjwXHoQpWgOlXchk6igW0gHQhY0SgvQCdBQP0gB0O60LD8IDFwSEILomAuksHm8NsJ0hRCJFAfpfIRAP5DGalva5kdoEl94cA8UYnSn1QL0Ae+Css8EA/WEDuQHVbjuBaPyr0QAAAABJRU5ErkJggg==) no-repeat right top;height:23px;width:16px;float:left"></div>
			<div _type="b"
				style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABwAAAAXCAYAAAAYyi9XAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAFTSURBVEhL5ZHXTkMxEESH3iH03kL7EoRAdPj/XwkzyCOtLHMTO1JeQDpydMPmHO/FYMJ/mLBv8A+EAO7JA3kkT+SZvJBX8kbeyUfik+dX4ptnC9jj4AE5JMfklJyRC3JJ+uSKXCdueN4WuOOzUcAO/1HS/SQ94nkSxOdBHgMU0QK2OCjpbpL6thLrxlGumyvAEdpCLehxaJNsB7FvnMsdoAiH6BXUgHUOWKrb5uIod4Det9EmasAaByTdyMRR7pVr7QoYB6zwB1ZJFEe51i25A7QBo5BasMwhEcW53AFevSJawSKHl5LUYst9cwdo9RGF1IIFDgmLS3IFxAiFtIJ5DosoljwGxAi/gtYTc/xxYXEe4Ns7YtwTs5QZy0sBMcjbaDkxQ6GJ8lJEDGr9jGkKTZQPCynFjfIMU0EY5fnnv2Jqn/8Ku+iKaPmOum7hsKCq738A7hfjgK8jC/wAAAAASUVORK5CYII=) no-repeat top;float:left;height:23px;width:28px"></div>
			<div _type="c"
				style="float: left; height: 23px; width: 245px; background: url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABcAAAAXCAYAAADgKtSgAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAABmSURBVEhL1cxBCoIAAADBzYpChAikQyAEHvxQ//+K7if24MJehz2M0N5PjAP/cDbxalbxan7i1Szi1XzFq/mIVzOLV/MWr+YlXs0kXs0oXs1TvJqHeDV38Wpu4tVcxasZxKu5iCcfcTSP9fcnx7cAAAAASUVORK5CYII=) 0% 0% repeat-x;"></div>
			<div _type="e"
				style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABYAAAAXCAYAAAAP6L+eAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAAGYSURBVEhLlZQ5UsNAFETFvoPZdwKfg0QZBBxAObeEm+gGJERUSUqgW0ybr+GPRlZVl1xj+bmnf4+Kb3N1XfdVFMULdA/dQJfQOXQCzaBDaB/ahbahLWgTWofWoFVopZcF13X9jsVn6A66hi6gswA+wv0A2jNgQjdGwW3bflZV9YqHHoPbq+D2FPdjyIJ3guM0uGmaDzh9K8uywsNP0Dy4ZQxyO8NnGwPBisF3jAeYKbdPpxbKbD23Y/n+ZYwfP0Ac1m1wygiULSNYxu0AzEGxARwWt28HJmg8tGwM4PRAulS1bK5xE1LZDqtGanDIPAlUpnTqQdldNsFrwyAGggXkIbCZ2u2rXl4EsVsekP6yQLpkraZA7Wn755ZgwiyQR1any3Ma99ZCF24JpjvKAtnVHFQRJMF0J4ceUIOyTrNQOhbMOtSQ7PSVaQo6iIFgVkivwBgolx40GYFaoV7afi4D/H3/OhchEp1J3LJEd5JA9u5xFyC73alA16n+JeVszOEoUGC7zRxsElBgL7N4zc0wtzh5GDmQ/f4HsIRCmk5F2IIAAAAASUVORK5CYII=) no-repeat left top;float:right;height:23px;width:22px"></div>
			<div _type="d"
				style="background:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABoAAAAUCAYAAACTQC2+AAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAADsMAAA7DAcdvqGQAAADfSURBVEhL3Y9ZbsJAEAVHCvu+hEDYd26ThMD9rwKv0LQ1ssSPPeYDSzXd8yzXk93tRY97Uc/tDYucc9dIXOSBf3H2/Gn+ih/hThk56rs0B2V7z05zKzZiTRFBLExs8pXcS7GgiLYYIDWxyefKZmJKEW15QWggNvm39okYU0RbHpCFIDb5l3YYUWSXWBMpfHqGmgOKLMgzkYUghr6nR5FdYk2k0A3oUBQGWXdEadrKoOVJFgtizKbkIQ3+iKMI6vIaNYo4iqIqt5EsYZh1r0j8DFfWyyIpyQ+Poyg+5H5wB0oCwpOxg6deAAAAAElFTkSuQmCC) no-repeat center top;float:right;height:23px;width:25px"></div>
		</div>
	</div>
	<script src="js/jquery-1.10.2.min.js"></script>
	<script src="js/encrypt.js"></script>
	<script>
    function encrypt(){
        var a=$("input[name=userpwd]");
        var b=$("input[name=confirm_userpwd]");
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
            return true;
        }

    }
</script>
</body>
</html>
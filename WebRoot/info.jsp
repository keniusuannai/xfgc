<%@ page language="java" import="java.util.*,com.manggo.bean.*"  pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html class=" no-webp">
<head>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0,minimum-scale=1.0, maximum-scale=1.0, user-scalable=yes">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta content="a7cbcbcf81afea6c" property="wb:webmaster">
    <meta name="render" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=7,IE=9">  
<meta http-equiv="X-UA-Compatible" content="IE=7,9">  
<meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1">
    <meta charset="UTF-8"/>
    <link href="css/css_style.css" rel="stylesheet">
    <script src="//www.google-analytics.com/analytics.js"></script>
    <script src="//hm.baidu.com/hm.js?6ad0f9786e9035e0275f33c495e02f52"></script>
    <script>var pageConfig = {
        "image_cdn": {
            "replacement": {"https://ricebook.b0.upaiyun.com": "https://dn-img-seriousapps.qbox.me"},
            "alternatives": ["https://dn-img-seriousapps.qbox.me"],
            "suffix": "/interlace/1",
            "type_suffix": {"webp": "/format/webp", "jpeg": "/format/jpeg/interlace/1"}
        }
    };
    </script>
    <script>var _hmt = _hmt || [];
    (function () {
        var hm = document.createElement("script");
        hm.src = "//hm.baidu.com/hm.js?6ad0f9786e9035e0275f33c495e02f52";
        var s = document.getElementsByTagName("script")[0];
        s.parentNode.insertBefore(hm, s);
    })();</script>
    <script>(function (i, s, o, g, r, a, m) {
        i['GoogleAnalyticsObject'] = r;
        i[r] = i[r] || function () {
            (i[r].q = i[r].q || []).push(arguments)
        }, i[r].l = 1 * new Date();
        a = s.createElement(o),
                m = s.getElementsByTagName(o)[0];
        a.async = 1;
        a.src = g;
        m.parentNode.insertBefore(a, m)
    })(window, document, 'script', '//www.google-analytics.com/analytics.js', 'ga');

    ga('create', 'UA-44893980-2', 'auto');
    ga('send', 'pageview');</script>
</head>
<body windowc_onresizez="true">
<%Goods g = (Goods)request.getAttribute("goods"); %>
<div class="default-header visible-hidden">
    <div class="logo-place-holder"><a class="logo-img" href="index.jsp">幸福工厂</a>

        <div class="info"><a class="change-city" href="javascript:void(0)"><span></span>
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
        <%if(session.getValue("userid")==null) {%>
			<li><a href="login.jsp">登录</a>/<a href="regist.jsp">注册</a></a></li>
		<%}else{%>
			<li><a href="UserServlet?method=userinfo">个人中心</a></li>
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
<div class="product-page" id="productDetail">
    <div class="touchslider">
        <div class="touchslider-viewport" style="height: 280px; position: relative;">
            <div style="left: 0px; width: 100000px; height: 280px; position: absolute;">
                <div class="touchslider-item" style="left: 0px; height: 300px; overflow: hidden; position: absolute;"><a
                        href="https://dn-img-seriousapps.qbox.me/business/14034622013935?imageView2/1/w/639/h/420"><img
                        class="image0"
                        src="https://dn-img-seriousapps.qbox.me/business/14034622013935?imageView2/1/w/639/h/420/interlace/1/format/jpeg/interlace/1"
                        x-src="https://dn-img-seriousapps.qbox.me/business/14034622013935?imageView2/1/w/639/h/420"></a>
                </div>
                <div class="touchslider-item"
                     style="left: 10000px; height: 300px; overflow: hidden; position: absolute;"><a
                        href="https://dn-img-seriousapps.qbox.me/business/14034623323680?imageView2/1/w/639/h/420"><img
                        class="image0"
                        src="https://dn-img-seriousapps.qbox.me/business/14034623323680?imageView2/1/w/639/h/420/interlace/1/format/jpeg/interlace/1"
                        x-src="https://dn-img-seriousapps.qbox.me/business/14034623323680?imageView2/1/w/639/h/420"></a>
                </div>
                <div class="touchslider-item"
                     style="left: 10000px; height: 300px; overflow: hidden; position: absolute;"><a
                        href="https://dn-img-seriousapps.qbox.me/business/14034626123244?imageView2/1/w/639/h/420"><img
                        class="image0"
                        src="https://dn-img-seriousapps.qbox.me/business/14034626123244?imageView2/1/w/639/h/420/interlace/1/format/jpeg/interlace/1"
                        x-src="https://dn-img-seriousapps.qbox.me/business/14034626123244?imageView2/1/w/639/h/420"></a>
                </div>
                <div class="touchslider-item"
                     style="left: 10000px; height: 300px; overflow: hidden; position: absolute;"><a
                        href="https://dn-img-seriousapps.qbox.me/business/14034627213936?imageView2/1/w/639/h/420"><img
                        class="image0"
                        src="https://dn-img-seriousapps.qbox.me/business/14034627213936?imageView2/1/w/639/h/420/interlace/1/format/jpeg/interlace/1"
                        x-src="https://dn-img-seriousapps.qbox.me/business/14034627213936?imageView2/1/w/639/h/420"></a>
                </div>
                <div class="touchslider-item"
                     style="left: 10000px; height: 300px; overflow: hidden; position: absolute;"><a
                        href="https://dn-img-seriousapps.qbox.me/business/14034636523682?imageView2/1/w/639/h/420"><img
                        class="image0"
                        src="https://dn-img-seriousapps.qbox.me/business/14034636523682?imageView2/1/w/639/h/420/interlace/1/format/jpeg/interlace/1"
                        x-src="https://dn-img-seriousapps.qbox.me/business/14034636523682?imageView2/1/w/639/h/420"></a>
                </div>
                <div class="touchslider-item"
                     style="left: 10000px; height: 300px; overflow: hidden; position: absolute;"><a
                        href="https://dn-img-seriousapps.qbox.me/business/14034638213937?imageView2/1/w/639/h/420"><img
                        class="image0"
                        src="https://dn-img-seriousapps.qbox.me/business/14034638213937?imageView2/1/w/639/h/420/interlace/1/format/jpeg/interlace/1"
                        x-src="https://dn-img-seriousapps.qbox.me/business/14034638213937?imageView2/1/w/639/h/420"></a>
                </div>
                <div class="touchslider-item"
                     style="left: 10000px; height: 300px; overflow: hidden; position: absolute;"><a
                        href="https://dn-img-seriousapps.qbox.me/business/14034661423683?imageView2/1/w/639/h/420"><img
                        class="image0"
                        src="https://dn-img-seriousapps.qbox.me/business/14034661423683?imageView2/1/w/639/h/420/interlace/1/format/jpeg/interlace/1"
                        x-src="https://dn-img-seriousapps.qbox.me/business/14034661423683?imageView2/1/w/639/h/420"></a>
                </div>
                <div class="touchslider-item"
                     style="left: 10000px; height: 300px; overflow: hidden; position: absolute;"><a
                        href="https://dn-img-seriousapps.qbox.me/business/14034662423684?imageView2/1/w/639/h/420"><img
                        class="image0"
                        src="https://dn-img-seriousapps.qbox.me/business/14034662423684?imageView2/1/w/639/h/420/interlace/1/format/jpeg/interlace/1"
                        x-src="https://dn-img-seriousapps.qbox.me/business/14034662423684?imageView2/1/w/639/h/420"></a>
                </div>
                <div class="touchslider-item"
                     style="left: 10000px; height: 300px; overflow: hidden; position: absolute;"><a
                        href="https://dn-img-seriousapps.qbox.me/business/14034665023247?imageView2/1/w/639/h/420"><img
                        class="image0"
                        src="https://dn-img-seriousapps.qbox.me/business/14034665023247?imageView2/1/w/639/h/420/interlace/1/format/jpeg/interlace/1"
                        x-src="https://dn-img-seriousapps.qbox.me/business/14034665023247?imageView2/1/w/639/h/420"></a>
                </div>
            </div>
        </div>
    </div>
    <div class="add-padding-all">
        <div class="wap-title"><p class="stunt">超值精选</p>

            <p class="name">像德国人那样大口吃肉大口喝酒 埃利金啤酒屋烤肉+烤香肠2-3人餐</p></div>
        <div class="item-info">
            <div class="item-info-1 col-sm-12 col-md-8">
                <div class="item-img visible-hidden">
                    <div class="ad-gallery" id="gallery" style="width: 639px;">
                        <div class="ad-image-wrapper" style="width: 639px; height: 500px;">
                            <div class="ad-image" style="left: 0px; top: 40px; width: 639px; height: 420px;"><img
                                    width="639" height="420"
                                    src="https://dn-img-seriousapps.qbox.me/business/14034622013935?imageView2/1/w/639/h/420/interlace/1/format/jpeg/interlace/1"
                                    x-src="https://dn-img-seriousapps.qbox.me/business/14034622013935?imageView2/1/w/639/h/420">
                            </div>
                            <img class="ad-loader" style="display: none;"
                                 src="https://dn-boson.qbox.me/pro_website/images/loader.gif">

                            <div class="ad-next">
                                <div class="ad-next-image" style="opacity: 0.7;"></div>
                            </div>
                            <div class="ad-prev">
                                <div class="ad-prev-image" style="opacity: 0.7;"></div>
                            </div>
                        </div>
                        <div class="ad-controls"><p class="ad-info">1 / 9</p>

                            <div class="ad-slideshow-controls"><span class="ad-slideshow-start">Start</span><span
                                    class="ad-slideshow-stop">Stop</span><span class="ad-slideshow-countdown"
                                                                               style="display: none;"></span></div>
                        </div>
                        <div class="ad-nav">
                            <div class="ad-back" style="opacity: 0.6;"></div>
                            <div class="ad-thumbs">
                                <ul class="ad-thumb-list" style="width: 621px;">
                                    <li><a class="ad-thumb0 ad-active"
                                           href="https://dn-img-seriousapps.qbox.me/business/14034622013935?imageView2/1/w/639/h/420"><img
                                            class="image0" style="opacity: 1;"
                                            src="https://dn-img-seriousapps.qbox.me/business/14034622013935?imageView2/1/w/100/h/100/interlace/1/format/jpeg/interlace/1"
                                            x-src="https://dn-img-seriousapps.qbox.me/business/14034622013935?imageView2/1/w/100/h/100"></a>
                                    </li>
                                    <li><a class="ad-thumb1"
                                           href="https://dn-img-seriousapps.qbox.me/business/14034623323680?imageView2/1/w/639/h/420"><img
                                            class="image0" style="opacity: 0.7;"
                                            src="https://dn-img-seriousapps.qbox.me/business/14034623323680?imageView2/1/w/100/h/100/interlace/1/format/jpeg/interlace/1"
                                            x-src="https://dn-img-seriousapps.qbox.me/business/14034623323680?imageView2/1/w/100/h/100"></a>
                                    </li>
                                    <li><a class="ad-thumb2"
                                           href="https://dn-img-seriousapps.qbox.me/business/14034626123244?imageView2/1/w/639/h/420"><img
                                            class="image0" style="opacity: 0.7;"
                                            src="https://dn-img-seriousapps.qbox.me/business/14034626123244?imageView2/1/w/100/h/100/interlace/1/format/jpeg/interlace/1"
                                            x-src="https://dn-img-seriousapps.qbox.me/business/14034626123244?imageView2/1/w/100/h/100"></a>
                                    </li>
                                    <li><a class="ad-thumb3"
                                           href="https://dn-img-seriousapps.qbox.me/business/14034627213936?imageView2/1/w/639/h/420"><img
                                            class="image0" style="opacity: 0.7;"
                                            src="https://dn-img-seriousapps.qbox.me/business/14034627213936?imageView2/1/w/100/h/100/interlace/1/format/jpeg/interlace/1"
                                            x-src="https://dn-img-seriousapps.qbox.me/business/14034627213936?imageView2/1/w/100/h/100"></a>
                                    </li>
                                    <li><a class="ad-thumb4"
                                           href="https://dn-img-seriousapps.qbox.me/business/14034636523682?imageView2/1/w/639/h/420"><img
                                            class="image0" style="opacity: 0.7;"
                                            src="https://dn-img-seriousapps.qbox.me/business/14034636523682?imageView2/1/w/100/h/100/interlace/1/format/jpeg/interlace/1"
                                            x-src="https://dn-img-seriousapps.qbox.me/business/14034636523682?imageView2/1/w/100/h/100"></a>
                                    </li>
                                    <li><a class="ad-thumb5"
                                           href="https://dn-img-seriousapps.qbox.me/business/14034638213937?imageView2/1/w/639/h/420"><img
                                            class="image0" style="opacity: 0.7;"
                                            src="https://dn-img-seriousapps.qbox.me/business/14034638213937?imageView2/1/w/100/h/100/interlace/1/format/jpeg/interlace/1"
                                            x-src="https://dn-img-seriousapps.qbox.me/business/14034638213937?imageView2/1/w/100/h/100"></a>
                                    </li>
                                    <li><a class="ad-thumb6"
                                           href="https://dn-img-seriousapps.qbox.me/business/14034661423683?imageView2/1/w/639/h/420"><img
                                            class="image0" style="opacity: 0.7;"
                                            src="https://dn-img-seriousapps.qbox.me/business/14034661423683?imageView2/1/w/100/h/100/interlace/1/format/jpeg/interlace/1"
                                            x-src="https://dn-img-seriousapps.qbox.me/business/14034661423683?imageView2/1/w/100/h/100"></a>
                                    </li>
                                    <li><a class="ad-thumb7"
                                           href="https://dn-img-seriousapps.qbox.me/business/14034662423684?imageView2/1/w/639/h/420"><img
                                            class="image0" style="opacity: 0.7;"
                                            src="https://dn-img-seriousapps.qbox.me/business/14034662423684?imageView2/1/w/100/h/100/interlace/1/format/jpeg/interlace/1"
                                            x-src="https://dn-img-seriousapps.qbox.me/business/14034662423684?imageView2/1/w/100/h/100"></a>
                                    </li>
                                    <li><a class="ad-thumb8"
                                           href="https://dn-img-seriousapps.qbox.me/business/14034665023247?imageView2/1/w/639/h/420"><img
                                            class="image0" style="opacity: 0.7;"
                                            src="https://dn-img-seriousapps.qbox.me/business/14034665023247?imageView2/1/w/100/h/100/interlace/1/format/jpeg/interlace/1"
                                            x-src="https://dn-img-seriousapps.qbox.me/business/14034665023247?imageView2/1/w/100/h/100"></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="ad-forward" style="opacity: 0.6;"></div>
                        </div>
                    </div>
                </div>
                <div class="number"><span>剩余<%=g.getNumber() %>份</span><span>剩余91天10小时50分59秒</span></div>
                <div class="dec">
                    <%=g.getDescription() %>
                </div>
                <div class="item-specifics">
                    <div class="item-tab">
                        <ul>
                            <li class="lightspot active" style="float:left">亮点</li>
                            <li class="menu">菜单</li>
                        </ul>
                    </div>
                    <div class="wap-info"><span>亮点</span></div>
                    <div class="item-lightspot active">
                        <ul>
                            <li><img
                                    src="https://dn-img-seriousapps.qbox.me/business/14034372223669?imageView2/1/w/639/h/472/interlace/1/format/jpeg/interlace/1"
                                    x-src="https://dn-img-seriousapps.qbox.me/business/14034372223669?imageView2/1/w/639/h/472">

                                <h1 class="model-1">进口食材传统做法 让你假装在德国</h1>

                                <p>
                                    埃利金啤酒屋一直坚持“口味正宗”的经营理念，香肠食材全部由德国进口，其他肉类则严格按照德国传统配方制作。如菜单中的「纽伦堡肠」便是非常地道的当地风味小吃，更是德式香肠的代表。煎烤过后搭配酸菜或土豆沙拉，解腻提香。「传统脆烧猪肘」则按照德国工艺先用秘料腌制入味再进行烹制，口感非常独特。更值得一提的是这里的自酿啤酒，餐厅特聘请了德国专业酿酒师亲自酿造，白啤口感浓厚润滑，黑啤则麦芽香味浓郁略微带甜。</p>
                            </li>
                            <li><img
                                    x-src="https://dn-img-seriousapps.qbox.me/business/14034347823231?imageView2/1/w/639/h/472">

                                <h1 class="model-1">圈内名厨坐镇 细节之处可见一斑</h1>

                                <p>
                                    埃利金啤酒屋主厨费所建曾任喜来登酒店、五洲酒店等多家星级酒店的行政总厨，也曾多次同米其林星级厨师合作共事。他希望能“走心”地经营埃利金，大口吃肉大口喝酒虽看似粗犷，但费师傅制作的功夫却事无巨细也创意百变。单是佐餐前包的酱料就分为三种，其中橄榄酱是由黑橄榄加银鱼柳调制而成，幸运的食客还能尝到德国特制「猪肝酱」，由猪肝加入猪肉酱，进口香料入味，低温烘烤而得，每日限量供应。「小牛肉肠」为德国生产线引进，又创意加入鸡肉，使得肉质更加细腻，贴近东方人口感。</p>
                            </li>
                            <li><img
                                    x-src="https://dn-img-seriousapps.qbox.me/business/14034363413676?imageView2/1/w/639/h/472">

                                <h1 class="model-1">价值308元烤肉+烤香肠2-3人餐 ENJOY 独享240元</h1>

                                <p>
                                    埃利金啤酒屋带来烤肉与烤香肠12道餐点的多人餐，让“心有余而胃不足”的食客放心与友人一同分享大口吃肉大口喝酒的快乐。餐厅更贴心为喜爱素食又不胜酒力的女性食客奉上「健康有机蔬菜沙拉」和气泡浓郁带有麦芽与水果混合香气的「啤酒香槟」，假装在德国的多选择走心一餐，价值308元，ENJOY
                                    独享240元。</p></li>
                        </ul>
                    </div>
                    <div class="wap-info"><span>菜单</span></div>
                    <div class="item-menu">
                        <div class="menu-title"><img src="img/menu_logo.png">

                            <div class="line"></div>
                        </div>
                        <div class="menu-sub-detail"><p class="menu-sub-title">- 面包 -</p>
                            <ul>
                                <li>（1份，配酱料）</li>
                            </ul>
                        </div>
                        <div class="menu-sub-detail"><p class="menu-sub-title">- 健康有机蔬菜沙拉 -</p>
                            <ul>
                                <li>（1份）</li>
                            </ul>
                        </div>
                        <div class="menu-sub-detail"><p class="menu-sub-title">- 埃利金“聚”精品总汇 -</p>
                            <ul>
                                <li>传统脆烤猪肘</li>
                                <li>小牛肉肠</li>
                                <li>图林根肠</li>
                                <li>纽伦堡肠</li>
                                <li>烟熏火腿</li>
                                <li>农夫肉面包</li>
                                <li>培根</li>
                                <li>自制薯泥</li>
                                <li>德国酸黄瓜</li>
                                <li>酸椰菜</li>
                            </ul>
                        </div>
                        <div class="menu-sub-detail"><p class="menu-sub-title">- 甜品及饮品 -</p>
                            <ul>
                                <li>（以下3种餐点任选1种）</li>
                                <li>焦糖布丁</li>
                                <li>（2份）</li>
                                <li>无酒精饮料</li>
                                <li>（2杯）</li>
                                <li>啤酒香槟</li>
                                <li>（2杯）</li>
                            </ul>
                        </div>
                        <div class="chef">
                            <div class="chef-model-1">
                                <div class="chef-img"><img
                                        src="https://dn-img-seriousapps.qbox.me/business/14034603513702?imageView2/1/w/100/h/100/interlace/1/format/jpeg/interlace/1"
                                        x-src="https://dn-img-seriousapps.qbox.me/business/14034603513702?imageView2/1/w/100/h/100">
                                </div>
                                <div class="name">- 埃利金啤酒屋西餐厅主厨 -</div>
                                <p class="info">曾任喜来登酒店、五洲酒店等多家星级酒店的行政总厨，亲自参与并自行经营埃利金啤酒屋西餐厅。</p></div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item-info-2 col-sm-12 col-md-4">
                <div class="wap-info"><span>信息</span></div>
                <div class="center-content">
                    <div class="title"><p class="stunt"><%=g.getType() %></p>

                        <p class="name"><%=g.getName() %></p></div>
                    <div class="dec visible-hidden">
                        <%=g.getDescription() %>
                    </div>
                    <div class="buy visible-hidden"><span class="price"><%=g.getPrices() %>元</span><span
                            class="original-price"><%=g.getOld_prices() %>元</span>

                        <form method="post" action="/order/buy_now"><input type="hidden" name="product_id"
                                                                           value="10252"><input type="hidden"
                                                                                                name="name"
                                                                                                value="21种粤点随心搭 天阶粤菜家宴半自助点心菜单"><input
                                type="hidden" name="price" value="7800"><input type="hidden" name="max"
                                                                               value="20"><input type="hidden"
                                                                                                 name="min"
                                                                                                 value="1"><input
                                type="hidden" name="short_name" value="天阶粤菜家宴单人菜单">

                            <div class="group"><input type="submit" name="submit" value="立即购买" class="goto-buy"></div>
                        </form>
                    </div>
                    <div class="number visible-hidden"><span>剩余<%=g.getNumber() %>份</span><span>剩余91天10小时50分59秒</span></div>
                    <div class="like visible-hidden"><span>27人喜欢</span></div>
                    <div class="restaurant">
                        <div class="map"><img
                                src="https://restapi.amap.com/v3/staticmap?&amp;zoom=15&amp;size=280*224&amp;markers=-1,http://ricebookenjoy.qiniudn.com/detail_map_pin_1.png,0:116.45336151123047,39.9162483215332&amp;key=154cbee6ef929ad66ee1532f11580493">
                        </div>
                        <div class="name"><img
                                x-src="https://dn-img-seriousapps.qbox.me/business/14000701823177?imageView2/1/w/100/h/100"
                                src="https://dn-img-seriousapps.qbox.me/business/14000701823177?imageView2/1/w/100/h/100/interlace/1/format/webp"><span>天阶粤菜家宴</span>
                        </div>
                        <div class="info">
                            <ul>
                                <li><span>地址：</span>

                                    <p>朝阳区天阶大厦写字楼 5 层</p></li>
                                <li><span>电话： </span>

                                    <p>010-65895522</p></li>
                                <!--li span 饭本评分：
                                p--></ul>
                        </div>
                    </div>
                    <div class="tip"><p class="title-tip">温馨提示</p>
                        <ul>
                            <li>使用日期：2015.04.13-2015.07.13；</li>
                            <li>使用时段：午市：11:00-13:30，晚市：16:30-21:00；</li>
                            <li>请提前3小时预约；</li>
                            <li>本产品不支持使用 ENJOY 礼券；</li>
                            <li>仅限堂食，不可打包。为避免浪费，例汤与甜品逐份供应；</li>
                            <li>本产品支持随时退款；</li>
                            <li>如需开具发票，请具体咨询商户；</li>
                            <li>如有疑问，请联系ENJOY 客服。电话：010-85270069；微信：enjoyricebook</li>
                        </ul>
                    </div>
                    <div class="our-info visible-hidden">
                        <ul>
                            <li>客服电话： 010-85270069</li>
                            <li>客服时间： 9:00-21:00</li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="wap-footer">
                <ul>
                    <li><a href="/">首页</a></li>
                    <li><a href="../user/login">登录/注册</a></li>
                </ul>
                <div class="info"><p>京 ICP 备 13052560 号 · 京公网安备 11010802010035 号</p></div>
            </div>
        </div>
    </div>
</div>
<div class="wap-item-header"><a href="/"><i class="fa fa-angle-left"></i></a><span>礼遇详情</span></div>
<div class="wap-goto-buy">
    <div class="wap-goto-buy-btn"><a>
        <div class="goto-buy btn goto-buy-warp"><span>ENJOY NOW</span></div>
    </a></div>
    <div class="wap-goto-buy-price"><em>240</em><span>元/份</span></div>
</div>
<div class="default-footer visible-hidden">
    <div class="content">
        <ul>
            <li>关注我们：</li>
            <li><a class="weibo" href="http://www.weibo.com/u/5385454600" target="_blank"><i
                    class="fa fa-weibo"></i></a><a class="weixin" id="weixin-code"><i class="fa fa-weixin"></i></a></li>
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
<link href="https://dn-boson.qbox.me/pro_website/external/font-awesome/css/font-awesome.min.css" rel="stylesheet">
<script src="https://dn-boson.qbox.me/pro_website/js/all.js?v=1.05"></script>
<div class="ad-preloads"><img width="639" height="420"
                              src="https://dn-img-seriousapps.qbox.me/business/14034622013935?imageView2/1/w/639/h/420">
</div>
</body>
</html>
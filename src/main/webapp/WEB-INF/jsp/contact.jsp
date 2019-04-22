<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html style="font-size: 100px;">

<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/css/aos.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/animate.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/swiper.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/phon_header_footer.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/contact.css"/>
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/Marquee.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/swiper.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/js.js" type="text/javascript"></script>
    <!--<script src="js/MetaController.js"></script>-->

    <title>泰格助剂</title>
</head>

<body>
<div class="top">
    <div class="mainbox clearfix">
        <p class="welcome">欢迎进入泰格助剂！</p>
        <div class="top_right clearfix">
				<span>
					<i class="icon_tel"></i>
					<b>021-50796110</b>
				</span>
            <span>
					<i class="icon_fax"></i>
					<b>stanley.luo@tech-polymer.cn</b>
				</span>
        </div>
    </div>
</div>

<div class="header">
    <div class="mainbox clearfix header_nav">
        <a class="logo" href="index.jsp">
            <img src="images/logo.png">
        </a>
        <div class="munes">
            <span class="mune1"></span>
            <span class="mune2"></span>
            <span class="mune3"></span>
        </div>
        <div class="nav">
            <ul class="navul clearfix dropdown">
                <li class="navli">
                    <a href="index.jsp">首页</a>
                </li>
                <li class="navli">
                    <a class="level" href="company.html">关于泰格</a>
                    <div class="level_down">
                        <a href="company.html">公司简介</a>
                        <a href="company.html">公司愿景</a>
                        <a href="company.html">安全环保</a>
                        <a href="company.html">价值传递</a>
                    </div>
                </li>
                <li class="navli">
                    <a class="level" href="goods.html">产品中心</a>
                    <div class="level_down">
                        <a href="download.html">分散剂</a>
                        <a href="download.html">流平剂</a>
                        <a href="download.html">消泡剂</a>
                        <a href="download.html">基材润湿剂</a>
                        <a href="download.html">附着力促进剂</a>
                        <a href="download.html">特用助剂</a>
                        <a href="download.html">流变助剂</a>
                    </div>
                </li>
                <li class="navli">
                    <a class="level" href="news.html">新闻资讯</a>
                    <div class="level_down">
                        <a href="news.html">公司新闻</a>
                        <a href="news.html">行业动态</a>
                    </div>
                </li>
                <li class="navli">
                    <a class="level" href="application-list-shui.html">应用推荐</a>
                    <div class="level_down">
                        <a href="application-list-shui.html">水性体系</a>
                        <a href="application-list-you.html">油性体系</a>
                        <a href="ask.html">样品索取</a>
                        <a href="download-list.html">资料下载</a>
                    </div>
                </li>
                <li class="navli cur-active">
                    <a class="level" href="contact.html">联系我们</a>
                    <div class="level_down">
                        <a href="contact.html">联系方式</a>
                        <a href="recruit.html">人才招聘</a>
                    </div>
                </li>
                <li class="language">
                    <a href="#">EN</a>
                </li>
            </ul>
        </div>
    </div>
    <script>
        $(".nav li").hover(function () {
                $(this).addClass("cur");
                $(this).children(".level_down").stop().slideDown('fast');
            },
            function () {
                $(this).removeClass("cur");
                $(this).children(".level_down").stop().slideUp('fast')
            })
        $(".level_down p").hover(function () {
                $(this).css({
                    "background": "#27a01c",
                    "color": "#fff"
                })
            },
            function () {
                $(this).css({
                    "background": "#fff",
                    "color": "#000"
                })
            });
    </script>
</div>
<div class="contact_banner banner-public"
     style="background: url(images/350.png) repeat-x center top;background-size:cover;">
    <h2>联系我们</h2>
    <span></span>
    <p>CONTACT US IS VERY EXCTING, SEE EVERYTHING</p>
</div>
<div class="contact_content">
    <div class="contact_center">
        <div class="info">
            <div class="info_left">
                <h2>联系我们
                </h2>
                <p>CONTACT</p>
                <input type="text" placeholder="姓名"/>
                <input type="text" placeholder="邮箱"/>
                <input type="text" placeholder="电话"/>
                <textarea placeholder="内容"></textarea>
                <button>确定</button>
            </div>
            <div class="info_right">
                <h2>上海泰格聚合物技术有限公司</h2>
                <p>电话：021-50796110 </p>
                <p>传真：021-50796113</p>
                <p>地址：上海市浦东新区张江路665号德宏大厦602室</p>
            </div>
        </div>
        <div class="contact_map">
            <div style="width:100%;height:535px;border:#ccc solid 1px;" id="dituContent"></div>
        </div>
    </div>
</div>
<div class="footer">
    <div class="mainbox clearfix">
        <div class="footer_l aos-animate" data-aos-duration="300" data-aos-delay="100" data-aos="fade-right">
            <div class="footer_nav clearfix">
                <dl>
                    <dt>关于泰格</dt>
                    <dd>
                        <a href="company.html">公司简介</a>
                    </dd>
                    <dd>
                        <a href="company.html">公司愿景</a>
                    </dd>
                    <dd>
                        <a href="company.html">安全环保</a>
                    </dd>
                    <dd>
                        <a href="company.html">价值传递</a>
                    </dd>
                </dl>

                <dl>
                    <dt>新闻资讯</dt>
                    <dd>
                        <a href="news.html">公司新闻</a>
                    </dd>
                    <dd>
                        <a href="news.html">行业动态</a>
                    </dd>
                </dl>

                <dl>
                    <dt>产品中心</dt>
                    <dd>
                        <a href="download.html">分散剂</a>
                    </dd>
                    <dd>
                        <a href="download.html">流平剂</a>
                    </dd>
                    <dd>
                        <a href="download.html">消泡剂</a>
                    </dd>
                    <dd>
                        <a href="download.html">基材润湿剂</a>
                    </dd>
                    <dd>
                        <a href="download.html">附着力促进剂</a>
                    </dd>
                    <dd>
                        <a href="download.html">特用助剂</a>
                    </dd>
                    <dd>
                        <a href="download.html">流变助剂</a>
                    </dd>
                </dl>

                <dl>
                    <dt>应用推荐</dt>
                    <dd>
                        <a href="application-list-shui.html">水性体系</a>
                    </dd>
                    <dd>
                        <a href="application-list-you.html">油性体系</a>
                    </dd>
                    <dd>
                        <a href="ask.html">样品索取</a>
                    </dd>
                    <dd>
                        <a href="download-list.html">资料下载</a>
                    </dd>
                </dl>
                <dl>
                    <dt>联系我们</dt>
                    <dd>
                        <a href="contact.html">联系方式</a>
                    </dd>
                    <dd>
                        <a href="recruit.html">人才招募</a>
                    </dd>
                </dl>
            </div>
            <div class="footer_bot">
                <p>上海泰格聚合物技术有限公司 电话：021-50796110 传真：021-50796113 地址：上海市浦东新区张江路665号德宏大厦602室</p>
                <p>版权所有 2016-2018 沪ICP备09072940号-1 网站制作：杰冠网络</p>
            </div>
        </div>

        <div class="footer_logo aos-animate" data-aos-duration="300" data-aos-delay="100" data-aos="fade-left">
            <img src="images/footer-top-logo.png" style="width: 260px;">
            <img src="images/footer_logo.png">
        </div>
    </div>
</div>
<div class="footer_flixd_bottom"></div>
<div class="footer_flixd">
    <ul>
        <li>
            <a href="index.jsp" class="frist_a">
                <i class="frist"></i>首頁</a>
        </li>
        <li>
            <a href="contact.html" class="tel_a">
                <i class="phon_i"></i>
            </a>
        </li>
        <li>
            <a href="goods.html" class="frist_a">
                <i class="goods_i"></i>产品中心</a>
        </li>
    </ul>
</div>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=Yp9062LbFzGcPihwzzRzGqdB"></script>
<script src="${pageContext.request.contextPath}/static/js/header_footer.js"></script>
<script type="text/javascript">
    //创建和初始化地图函数：
    function initMap() {
        createMap(); //创建地图
        setMapEvent(); //设置地图事件
        addMapControl(); //向地图添加控件
        addMarker(); //向地图中添加marker
    }

    //创建地图函数：
    function createMap() {
        var map = new BMap.Map("dituContent"); //在百度地图容器中创建一个地图
        var point = new BMap.Point(121.623804, 31.210163); //定义一个中心点坐标
        map.centerAndZoom(point, 18); //设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map; //将map变量存储在全局
    }

    //地图事件设置函数：
    function setMapEvent() {
        map.enableDragging(); //启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom(); //启用地图滚轮放大缩小
        map.disableDoubleClickZoom(); //禁用鼠标双击放大
        map.disableKeyboard(); //禁用键盘上下左右键移动地图，默认禁用(可不写)
    }

    //地图控件添加函数：
    function addMapControl() {
    }

    //标注点数组
    var markerArr = [{
        title: "上海泰格聚合物技术有限公司",
        content: "地址：上海市浦东新区张江路665号德宏大厦602室",
        point: "121.623144|31.210418",
        isOpen: 1,
        icon: {
            w: 23,
            h: 25,
            l: 0,
            t: 21,
            x: 9,
            lb: 12
        }
    }];

    //创建marker
    function addMarker() {
        for (var i = 0; i < markerArr.length; i++) {
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0, p1);
            var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point, {
                icon: iconImg
            });
            var iw = createInfoWindow(i);
            var label = new BMap.Label(json.title, {
                "offset": new BMap.Size(json.icon.lb - json.icon.x + 10, -20)
            });
            marker.setLabel(label);
            map.addOverlay(marker);
            label.setStyle({
                borderColor: "#808080",
                color: "#333",
                cursor: "pointer"
            });

            (function () {
                var index = i;
                var _iw = createInfoWindow(i);
                var _marker = marker;
                _marker.addEventListener("click", function () {
                    this.openInfoWindow(_iw);
                });
                _iw.addEventListener("open", function () {
                    _marker.getLabel().hide();
                })
                _iw.addEventListener("close", function () {
                    _marker.getLabel().show();
                })
                label.addEventListener("click", function () {
                    _marker.openInfoWindow(_iw);
                })
                if (!!json.isOpen) {
                    label.hide();
                    _marker.openInfoWindow(_iw);
                }
            })()
        }
    }

    //创建InfoWindow
    function createInfoWindow(i) {
        var json = markerArr[i];
        var iw = new BMap.InfoWindow("<b class='iw_poi_title' title='" + json.title + "'>" + json.title + "</b><div class='iw_poi_content'>" + json.content + "</div>");
        return iw;
    }

    //创建一个Icon
    function createIcon(json) {
        var icon = new BMap.Icon("http://api.map.baidu.com/lbsapi/createmap/images/icon.png", new BMap.Size(json.w, json.h), {
            imageOffset: new BMap.Size(-json.l, -json.t),
            infoWindowOffset: new BMap.Size(json.lb + 5, 1),
            offset: new BMap.Size(json.x, json.h)
        })
        return icon;
    }

    initMap(); //创建和初始化地图
</script>

</body>

</html>
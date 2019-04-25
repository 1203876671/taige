<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black"/>
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0 user-scalable=no"
    />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/css/aos.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/animate.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/swiper.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/phon_header_footer.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/phon_index.css"/>
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/Marquee.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/swiper.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/js.js" type="text/javascript"></script>
    <title>泰格助剂</title>
</head>

<body>
<div class="top">
    <div class="mainbox clearfix">
        <p class="welcome">欢迎进入泰格助剂！</p>
        <div class="top_right clearfix">
				<span>
					<i class="icon_tel"></i>
					<b>${company.phone}</b>
				</span>
            <span>
					<i class="icon_fax"></i>
					<b>${company.emil}</b>
				</span>
        </div>
    </div>
</div>

<div class="header">
    <div class="mainbox clearfix header_nav">
        <a class="logo" href="index.html">
            <img src="${pageContext.request.contextPath}/static/images/logo.png">
        </a>
        <div class="munes">
            <span class="mune1"></span>
            <span class="mune2"></span>
            <span class="mune3"></span>
        </div>
        <div class="nav">
            <ul class="navul clearfix dropdown">
                <li class="navli">
                    <a href="index.html">首页</a>
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
                        <c:forEach items="${listProduct}" var="listProduct">
                            <a href="download.html">${listProduct.name}</a>
                        </c:forEach>
                    </div>
                </li>
                <li class="navli">
                    <a class="level" href="news.html">新闻资讯</a>
                    <div class="level_down">
                        <a href="news.html">公司新闻</a>
                        <a href="news.html?type=2">行业动态</a>
                    </div>
                </li>
                <li class="navli cur-active">
                    <a class="level" href="application-list.html?applyid=1">应用推荐</a>
                    <div class="level_down">
                        <c:forEach items="${listApply}" var="listApply">
                            <a href="application-list.html?applyid=${listApply.id}">${listApply.name}</a>
                        </c:forEach>
                        <a href="ask.html">样品索取</a>
                        <a href="download-list.html">资料下载</a>
                    </div>
                </li>
                <li class="navli">
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

<div class="banner">
    <div class="swiper-container">
        <div class="swiper-wrapper">
            <div class="swiper-slide">
                <img src="${pageContext.request.contextPath}/static/images/banner1.jpg">
            </div>
            <div class="swiper-slide">
                <img src="${pageContext.request.contextPath}/static/images/banner1.jpg">
            </div>
        </div>
    </div>
    <div class="arrow arrow-left"></div>
    <div class="arrow arrow-right"></div>
    <script>
        var iSwiper = new Swiper('.banner .swiper-container', {
            paginationClickable: true,
            autoplay: 5000,
            autoplayDisableOnInteraction: true,
            calculateHeight: true,
            loop: true
        });
        $('.arrow-left').on('click', function (e) {
            e.preventDefault();
            iSwiper.swipePrev();
        });
        $('.arrow-right').on('click', function (e) {
            e.preventDefault();
            iSwiper.swipeNext();
        });


    </script>
    <div class="search">
        <div class="mainbox clearfix">
            <div class="search_left">
                <p class="searchltit">
                    <i class="icon_sj icon_gj"></i>
                    <span>索取产品资料: 输入您的邮箱，我们会及时提供我们最新的产品信息给您</span>
                </p>
                <input type="text" class="search_input1" id="emli" placeholder="请输入您的邮箱"/>
                <input type="button" class="search_btn2" value="提交" onclick="emli()"/>
            </div>
            <div class="search_form clearfix">
                <input type="text" class="search_input" placeholder="产品快速搜索" id="proname"/>
                <a href="javascript:void(0);" onclick="searchs()"><input type="button" class="search_btn"
                                                                         value="搜索"/></a>
            </div>
        </div>
    </div>
</div>


<div class="product">
    <div class="mainbox">
        <div class="index_nav clearfix aos-animate" data-aos-duration="300" data-aos-delay="100" data-aos="fade-up">
            <div class="index_tit">
                <h2>产品中心</h2>
                <p>科学演绎聚合物</p>
            </div>
            <a href="goods.html" class="more">全部</a>
        </div>
        <div class="product_scroll">
            <div class="product_show" id="marquee1">
                <ul>
                    <c:forEach var="product" items="${listProduct}">
                        <li class="aos-animate" data-aos-duration="300" data-aos-delay="100" data-aos="fade-left">
                            <a href="download-list.html" class="show_list">
                                <div class="show_img">
                                    <img src="${product.img}">
                                </div>
                                <div class="show_con">
                                    <p class="show_tit">${product.name}</p>
                                    <p class="show_des">${product.introduction}</p>
                                    <i class="icon_promore"></i>
                                </div>
                                <span class="borderwl"></span>
                            </a>
                        </li>
                    </c:forEach>
                </ul>
            </div>
            <div class="control">
                <a href="javascript:void(0);" id="goR" class="go_prev"></a>
                <a href="javascript:void(0);" id="goL" class="go_next"></a>
            </div>
        </div>

    </div>
    <script type="text/javascript">
        var WH = 750;
        console.log($(window).width());
        if ($(window).width() > WH) {
            console.log(1)
            $('#marquee1').kxbdSuperMarquee({
                distance: 1200,
                time: 5,
                btnGo: {left: '#goL', right: '#goR'},
                direction: 'left'
            });
        } else {
            console.log(2)
            $('#marquee1').kxbdSuperMarquee({
                distance: 375,
                time: 5,
                btnGo: {left: '#goL', right: '#goR'},
                direction: 'left'
            });
        }
    </script>
</div>
<div class="recommend">
    <div class="mainbox">
        <div class="index_nav clearfix aos-animate" data-aos-duration="300" data-aos-delay="100" data-aos="fade-up">
            <div class="index_tit">
                <h2>应用推荐</h2>
                <p>科学演绎聚合物</p>
            </div>
            <a href="application.html" class="more">全部</a>
        </div>
    </div>
    <div class="reco_con clearfix">
        <div class="reco_list reco_w1 aos-animate" data-aos-duration="300" data-aos-delay="100" data-aos="fade-up">
            <div class="reco_wcon">
                <c:forEach items="${listApply}" var="listApply" begin="0" end="1">
                    <c:if test="${listApply.sort == 0}">
                        <img src="${listApply.img}">
                        <a class="reco_one" href="application-list.html?applyid=${listApply.id}">
                            <div class="reco_text">
                                <div class="reco_textcon">
                                    <p class="down_tit">${listApply.title}</p>
                                    <p>${listApply.introduction}</p>
                                </div>
                            </div>
                        </a>
                        <a class="reco_bottom clearfix" href="application-list.html?applyid=${listApply.id}">
                            <p class="reco_tit">${listApply.name}</p>
                            <i class="icon_tjmore"></i>
                        </a>
                    </c:if>
                </c:forEach>
            </div>
        </div>
        <c:forEach items="${listApply}" var="listApply" begin="1">
            <div class="reco_list reco_w2">
                <div class="reco_wcon aos-animate" data-aos-duration="300" data-aos-delay="200" data-aos="fade-up">
                    <img src="${listApply.img}">
                    <a class="reco_one" href="application-list.html?applyid=${listApply.id}">
                        <div class="reco_text">
                            <div class="reco_textcon">
                                <p class="down_tit">${listApply.title}</p>
                                <p>${listApply.introduction}</p>
                            </div>
                        </div>
                    </a>
                    <a class="reco_bottom clearfix" href="application-list.html?applyid=${listApply.id}">
                        <p class="reco_tit">${listApply.name}</p>
                        <i class="icon_tjmore"></i>
                    </a>
                </div>
            </div>
        </c:forEach>
    </div>

</div>

<div class="mainbox news clearfix">
    <div class="news_side aos-animate" data-aos-duration="300" data-aos-delay="100" data-aos="fade-up">
        <div class="index_tit">
            <h2>新闻资讯</h2>
            <p>科学演绎聚合物</p>
        </div>
        <div class="news_tab">
            <a class="tabacur ne ab">公司新闻</a>
            <a class="ne">行业动态</a>
        </div>
        <a class="newsmore" href="news.html">
            <i class="icon_news"></i>
        </a>
    </div>

    <div class="news_tabcon" id="news1" style="display:block;">
        <c:forEach var="listNews1" items="${listNews}" begin="0" end="1">
            <c:if test="${listNews1.sort == 0}">
                <a href="news_content.html?id=${listNews1.id}" class="news_left aos-animate" data-aos-duration="300"
                   data-aos-delay="200"
                   data-aos="fade-right">
        <span class="newspic">
          <img src="${listNews1.img}">
        </span>
                    <div class="newslistcon">
                        <h1 class="newstit">${listNews1.title}</h1>
                        <p class="newsdes">${listNews1.outline}</p>
                    </div>
                </a>
            </c:if>
        </c:forEach>
        <c:forEach var="listNews" items="${listNews}" begin="1">
            <div class="news_right">
                <ul>
                    <li class="aos-animate" data-aos-duration="300" data-aos-delay="300" data-aos="fade-up">
                        <a class="news_left news_r" href="news_content.html?id=${listNews.id}">
              <span class="newspic">
                <img src="${listNews.img}">
              </span>
                            <div class="newslistcon">
                                <h1 class="newstit">${listNews.title}</h1>
                                <span class="newstime">[${listNews.date}]</span>
                                <p class="newsdes">${listNews.outline}</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </c:forEach>
    </div>

    <div class="news_tabcon aaa" style="display: none;">
        <c:forEach var="listNews1" items="${listNews2}" begin="0" end="1">
            <c:if test="${listNews1.sort == 0}">
                <a href="news_content.html?id=${listNews1.id}" class="news_left aos-animate" data-aos-duration="300"
                   data-aos-delay="200"
                   data-aos="fade-right">
        <span class="newspic">
          <img src="${listNews1.img}">
        </span>
                    <div class="newslistcon">
                        <h1 class="newstit">${listNews1.title}</h1>
                        <p class="newsdes">${listNews1.outline}</p>
                    </div>
                </a>
            </c:if>
        </c:forEach>
        <c:forEach var="listNews" items="${listNews2}" begin="1">
            <div class="news_right">
                <ul>
                    <li class="aos-animate" data-aos-duration="300" data-aos-delay="300" data-aos="fade-up">
                        <a class="news_left news_r" href="news_content.html?id=${listNews.id}">
              <span class="newspic">
                <img src="${listNews.img}">
              </span>
                            <div class="newslistcon">
                                <h1 class="newstit">${listNews.title}</h1>
                                <span class="newstime">[${listNews.date}]</span>
                                <p class="newsdes">${listNews.outline}</p>
                            </div>
                        </a>
                    </li>
                </ul>
            </div>
        </c:forEach>
    </div>
</div>

<div class="map aos-animate" data-aos-duration="300" data-aos-delay="100" data-aos="fade-up">
    <div style="width:100%;height:535px;border:#ccc solid 1px;" id="dituContent"></div>
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
                        <a href="news.html?type=2">行业动态</a>
                    </dd>
                </dl>
                <dl>
                    <dt>产品中心</dt>
                    <c:forEach items="${listProduct}" var="listProduct">
                        <dd>
                            <a href="download.html?proid=${listProduct.id}">${listProduct.name}</a>
                        </dd>
                    </c:forEach>
                </dl>

                <dl>
                    <dt>应用推荐</dt>
                    <c:forEach items="${listApply}" var="listApply">
                        <dd>
                            <a href="application-list.html?applyid=${listApply.id}">${listApply.name}</a>
                        </dd>
                    </c:forEach>
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
                <p>${company.name} 电话：${company.phone} 邮箱：${company.emil} 地址：${company.address}</p>
                <p>版权所有 2016-2018 沪ICP备09072940号-1 网站制作：杰冠网络</p>
            </div>
        </div>

        <div class="footer_logo aos-animate" data-aos-duration="300" data-aos-delay="100" data-aos="fade-left">
            <img src="${pageContext.request.contextPath}/static/images/footer-top-logo.png" style="width: 260px;">
            <img src="${pageContext.request.contextPath}/static/images/footer_logo.png">
        </div>
    </div>
</div>
<div class="footer_flixd_bottom"></div>
<div class="footer_flixd">
    <ul>
        <li>
            <a href="index.html" class="frist_a">
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

<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/aos.js"></script>
<script src="${pageContext.request.contextPath}/static/js/header_footer.js" type="text/javascript"
        charset="utf-8"></script>
<script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=Yp9062LbFzGcPihwzzRzGqdB"></script>
<script type="text/javascript">

    $(".ne").click(function () {
        var text = $(this).html();
        if (text == '公司新闻') {
            $(".ne").siblings().removeClass("tabacur ne");
            $(this).toggleClass("tabacur ne");
            $(".aaa").css('display', 'none');
            $("#news1").css('display', 'block');
        }
        if (text == '行业动态') {
            $(".ne").siblings().removeClass("tabacur");
            $(this).toggleClass("tabacur");
            $("#news1").css('display', 'none');
            $(".aaa").css('display', 'block');
        }
    })

    function searchs() {
        var proname = $("#proname").val();
        if (proname != null && proname != '') {
            window.location.href = "seach.html?proname=" + proname;
            return true;
        } else {
            alert("请输入关键词")
            return false;
        }
    }

    function emli() {
        var emli = $("#emli").val();
        if ((/^([0-9A-Za-z\-_\.]+)@([0-9a-z]+\.[a-z]{2,3}(\.[a-z]{2})?)$/g).test(emli)) {
            $.post("emliadd", {"emil": emli}, function (date) {
            })
            alert("添加成功");
        }
        else {
            alert("邮箱格式不正确");
            return false;
        }
    }

    (function () {
        AOS.init({});
    }());

    //创建和初始化地图函数：
    function initMap() {
        createMap();//创建地图
        setMapEvent();//设置地图事件
        addMapControl();//向地图添加控件
        addMarker();//向地图中添加marker
    }

    //创建地图函数：
    function createMap() {
        var map = new BMap.Map("dituContent");//在百度地图容器中创建一个地图
        var point = new BMap.Point(121.623804, 31.210163);//定义一个中心点坐标
        map.centerAndZoom(point, 18);//设定地图的中心点和坐标并将地图显示在地图容器中
        window.map = map;//将map变量存储在全局
    }

    //地图事件设置函数：
    function setMapEvent() {
        map.enableDragging();//启用地图拖拽事件，默认启用(可不写)
        map.enableScrollWheelZoom();//启用地图滚轮放大缩小
        map.disableDoubleClickZoom();//禁用鼠标双击放大
        map.disableKeyboard();//禁用键盘上下左右键移动地图，默认禁用(可不写)
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
        icon: {w: 23, h: 25, l: 0, t: 21, x: 9, lb: 12}
    }
    ];

    //创建marker
    function addMarker() {
        for (var i = 0; i < markerArr.length; i++) {
            var json = markerArr[i];
            var p0 = json.point.split("|")[0];
            var p1 = json.point.split("|")[1];
            var point = new BMap.Point(p0, p1);
            var iconImg = createIcon(json.icon);
            var marker = new BMap.Marker(point, {icon: iconImg});
            var iw = createInfoWindow(i);
            var label = new BMap.Label(json.title, {"offset": new BMap.Size(json.icon.lb - json.icon.x + 10, -20)});
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

    initMap();//创建和初始化地图
</script>
</body>

</html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="renderer" content="webkit"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1,maximum-scale=1,user-scalable=no"/>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="format-detection" content="telephone=no"/>
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <meta name="apple-mobile-web-app-status-bar-style" content="black"/>
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/css/aos.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/animate.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/swiper.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/company.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/phon_header_footer.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/application.css"/>
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
                        <a href="company.html?type=1">公司简介</a>
                        <a href="company.html?type=2">公司愿景</a>
                        <a href="company.html?type=3">安全环保</a>
                        <a href="company.html?type=4">价值传递</a>
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
                $(this).children(".level_down").slideDown('fast');
            },
            function () {
                $(this).removeClass("cur");
                $(this).children(".level_down").slideUp('fast')
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
<div class="banner"
     style="background: url(${pageContext.request.contextPath}/static/images/banner.jpg)  repeat-x center top; background-size:cover;">
</div>

<div class="application-body">
    <div class="type-page">
        <div class="title">
            <span>应 用 推 荐</span>
        </div>
        <div class="subTitle">
            <span>APPLICATION RECOMMENDATION</span>
        </div>

        <div class="wrapper">
            <ul>
                <c:forEach items="${apply}" var="apply">
                    <li>
                        <a href="application-list.html?applyid=${apply.id}">
                            <img src="${apply.img}" width="430px" height="250px"/>
                            <p>
                                <strong>${apply.name}</strong>
                                <span>WATERBORNE SERIES</span>
                            </p>
                            <div>
                                    ${apply.introduction}
                            </div>
                        </a>
                    </li>
                </c:forEach>
                <li>
                    <a href="ask.html">
                        <img src="${pageContext.request.contextPath}/static/images/application_icon3.jpg"/>
                        <p>
                            <strong>样品索取</strong>
                            <span>WATERBORNE SERIES</span>
                        </p>
                        <div>
                            上海泰格将参加2012年第十七届中国国际涂料展上海泰格将参加2012年第十七届中国国际涂料展上海泰格将第十七届...中国国际涂料展
                        </div>
                    </a>
                </li>
                <li>
                    <a href="download-list.html">
                        <img src="${pageContext.request.contextPath}/static/images/application_icon4.jpg"/>
                        <p>
                            <strong>资料下载</strong>
                            <span>WATERBORNE SERIES</span>
                        </p>
                        <div>

                        </div>
                    </a>
                </li>
            </ul>
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
                        <a href="company.html?type=1">公司简介</a>
                    </dd>
                    <dd>
                        <a href="company.html?type=2">公司愿景</a>
                    </dd>
                    <dd>
                        <a href="company.html?type=3">安全环保</a>
                    </dd>
                    <dd>
                        <a href="company.html?type=3">价值传递</a>
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
<script src="${pageContext.request.contextPath}/static/js/header_footer.js" type="text/javascript"
        charset="utf-8"></script>
</body>

</html>
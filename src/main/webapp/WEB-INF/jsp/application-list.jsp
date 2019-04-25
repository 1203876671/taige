<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html style="font-size:100px">

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
    <meta name="viewport"
          content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0 user-scalable=no"
    />
    <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/static/css/aos.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/index.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/animate.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/swiper.min.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/phon_header_footer.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/download.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/goods.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/application-list.css">
    <script src="${pageContext.request.contextPath}/static/js/jquery.min.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/static/js/jquery-2.1.0.js" type="text/javascript"
            charset="utf-8"></script>
    <script src="${pageContext.request.contextPath}/static/js/Marquee.js" type="text/javascript"></script>
    <script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
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
                            <a href="download.html?proid=${listProduct.id}">${listProduct.name}</a>
                        </c:forEach>
                    </div>
                </li>
                <li class="navli">
                    <a class="level" href="news.html">新闻资讯</a>
                    <div class="level_down">
                        <a href="news.html?type=1">公司新闻</a>
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
<div class="goods_banner"
     style="background: url(${pageContext.request.contextPath}/static/images/banner.jpg)  repeat-x center top; background-size:cover;">
    <h2>应用推荐</h2>
    <span></span>
    <p>NEWS EVERY DAY IS VERY EXCTING, SEE EVERYTHING</p>
</div>
<div class="download">

    <div class="download-le">
        <div class="bread">
            <a href="index.html">首页</a>
            >
            <a href="application-list.html?applyid=1">水性体系</a>
        </div>
        <div class="dl-le-title">
            <c:forEach items="${details}" var="details" begin="0" end="1">
                <h2>${details.applyname}</h2>
            </c:forEach>
            <a href="ask.html">技术支持和服务</a>
            <a href="ask.html">索取样品 / 产品资料</a>
        </div>
        <div class="app-list-tab">
            <ul class="clearfix app-list-ul app-list-shui">
                <li class="app-tab-active">涂料体系</li>
                <li>分散剂</li>
                <li>消泡剂</li>
                <li>流平剂</li>
                <li>基材润湿剂</li>
                <li>流变助剂</li>
            </ul>
            <select class="app-list-select">
                <option>涂料体系</option>
                <option>分散剂</option>
                <option>消泡剂</option>
                <option>流平剂</option>
                <option>基材润湿剂</option>
                <option>流变助剂</option>
            </select>
        </div>
        <!-- app-list-content -->
        <div class="app-list-content" style="display:block">
            <div class="dl-list-title">
                <ul class="clearfix">
                    <li>产品
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>同类产品
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>活性成分
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>用途
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>TDS下载
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                </ul>
            </div>
            <c:forEach items="${details}" var="details">
                <div class="dl-list">
                    <div class="dl-list-con">
                        <ul class="clearfix">
                            <li>${details.name}</li>
                            <li>${details.likeproduct}</li>
                            <li>${details.ingredients}</li>
                            <li>${details.use}</li>
                        </ul>
                    </div>
                    <div class="dl-pdf">
                        <c:if test="${details.file != null && details.file != ''}">
                        <a href="${details.file}" class="file" download="${details.file}">
                            </c:if>
                            <c:if test="${details.file == null || details.file == ''}">
                            <a href="#" class="file">
                                </c:if>
                                <ul>
                                    <li>
                                        <img src="${pageContext.request.contextPath}/static/images/icon_pdf.png" alt="">
                                    </li>
                                </ul>
                            </a>
                    </div>
                </div>
            </c:forEach>
        </div>
        <!-- app-list-content -->
        <!-- app-list-content -->
        <div class="app-list-content" style="display:display">
            <div class="dl-list-title">
                <ul class="clearfix">
                    <li>产品
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>同类产品
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>活性成分
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>用途
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>TDS下载
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                </ul>
            </div>
            <c:forEach items="${details}" var="details">
                <div class="dl-list">
                    <div class="dl-list-con">
                        <ul class="clearfix">
                            <li>${details.name}</li>
                            <li>${details.likeproduct}</li>
                            <li>${details.ingredients}</li>
                            <li>${details.use}</li>
                        </ul>
                    </div>
                    <div class="dl-pdf">
                        <c:if test="${details.file != null && details.file != ''}">
                        <a href="#" download="${details.file}" class="file">
                            </c:if>
                            <c:if test="${details.file == null || details.file == ''}">
                            <a href="#" class="file">
                                </c:if>
                                <ul>
                                    <li>
                                        <img src="${pageContext.request.contextPath}/static/images/icon_pdf.png" alt="">
                                    </li>
                                </ul>
                            </a>
                    </div>
                </div>
            </c:forEach>
        </div>
        <!-- app-list-content -->
        <!-- app-list-content -->
        <div class="app-list-content" style="display:display">
            <div class="dl-list-title">
                <ul class="clearfix">
                    <li>产品
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>同类产品
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>活性成分
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>用途
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>TDS下载
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                </ul>
            </div>
            <c:forEach items="${details}" var="details">
                <div class="dl-list">
                    <div class="dl-list-con">
                        <ul class="clearfix">
                            <li>${details.name}</li>
                            <li>${details.likeproduct}</li>
                            <li>${details.ingredients}</li>
                            <li>${details.use}</li>
                        </ul>
                    </div>
                    <div class="dl-pdf">
                        <c:if test="${details.file != null && details.file != ''}">
                        <a href="#" download="${details.file}" class="file">
                            </c:if>
                            <c:if test="${details.file == null || details.file == ''}">
                            <a href="#" class="file">
                                </c:if>
                                <ul>
                                    <li>
                                        <img src="${pageContext.request.contextPath}/static/images/icon_pdf.png" alt="">
                                    </li>
                                </ul>
                            </a>
                    </div>
                </div>
            </c:forEach>

        </div>
        <!-- app-list-content -->
        <!-- app-list-content -->
        <div class="app-list-content" style="display:display">
            <div class="dl-list-title">
                <ul class="clearfix">
                    <li>产品
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>同类产品
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>活性成分
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>用途
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>TDS下载
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                </ul>
            </div>
            <c:forEach items="${details}" var="details">
                <div class="dl-list">
                    <div class="dl-list-con">
                        <ul class="clearfix">
                            <li>${details.name}</li>
                            <li>${details.likeproduct}</li>
                            <li>${details.ingredients}</li>
                            <li>${details.use}</li>
                        </ul>
                    </div>
                    <div class="dl-pdf">
                        <c:if test="${details.file != null && details.file != ''}">
                        <a href="#" download="${details.file}" class="file">
                            </c:if>
                            <c:if test="${details.file == null || details.file == ''}">
                            <a href="#" class="file">
                                </c:if>
                                <ul>
                                    <li>
                                        <img src="${pageContext.request.contextPath}/static/images/icon_pdf.png" alt="">
                                    </li>
                                </ul>
                            </a>
                    </div>
                </div>
            </c:forEach>

        </div>
        <!-- app-list-content -->
        <!-- app-list-content -->
        <div class="app-list-content" style="display:display">
            <div class="dl-list-title">
                <ul class="clearfix">
                    <li>产品
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>同类产品
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>活性成分
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>用途
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>TDS下载
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                </ul>
            </div>
            <c:forEach items="${details}" var="details">
                <div class="dl-list">
                    <div class="dl-list-con">
                        <ul class="clearfix">
                            <li>${details.name}</li>
                            <li>${details.likeproduct}</li>
                            <li>${details.ingredients}</li>
                            <li>${details.use}</li>
                        </ul>
                    </div>
                    <div class="dl-pdf">
                        <c:if test="${details.file != null && details.file != ''}">
                        <a href="#" download="${details.file}" class="file">
                            </c:if>
                            <c:if test="${details.file == null || details.file == ''}">
                            <a href="#" class="file">
                                </c:if>
                                <ul>
                                    <li>
                                        <img src="${pageContext.request.contextPath}/static/images/icon_pdf.png" alt="">
                                    </li>
                                </ul>
                            </a>
                    </div>
                </div>
            </c:forEach>
        </div>
        <!-- app-list-content -->
        <!-- app-list-content -->
        <div class="app-list-content" style="display:display">
            <div class="dl-list-title">
                <ul class="clearfix">
                    <li>产品
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>同类产品
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>活性成分
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>用途
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>TDS下载
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                </ul>
            </div>
            <c:forEach items="${details}" var="details">
                <div class="dl-list">
                    <div class="dl-list-con">
                        <ul class="clearfix">
                            <li>${details.name}</li>
                            <li>${details.likeproduct}</li>
                            <li>${details.ingredients}</li>
                            <li>${details.use}</li>
                        </ul>
                    </div>
                    <div class="dl-pdf">
                        <c:if test="${details.file != null && details.file != ''}">
                        <a href="#" download="${details.file}" class="file">
                            </c:if>
                            <c:if test="${details.file == null || details.file == ''}">
                            <a href="#" class="file">
                                </c:if>
                                <ul>
                                    <li>
                                        <img src="${pageContext.request.contextPath}/static/images/icon_pdf.png" alt="">
                                    </li>
                                </ul>
                            </a>
                    </div>
                </div>
            </c:forEach>

        </div>
        <!-- app-list-content -->
        <!-- app-list-content -->
        <div class="app-list-content" style="display:display">
            <div class="dl-list-title">
                <ul class="clearfix">
                    <li>产品
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>同类产品
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>活性成分
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>用途
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                    <li>TDS下载
                        <img src="${pageContext.request.contextPath}/static/images/dl-list-icon.png" alt="">
                    </li>
                </ul>
            </div>
            <c:forEach items="${details}" var="details">
                <div class="dl-list">
                    <div class="dl-list-con">
                        <ul class="clearfix">
                            <li>${details.name}</li>
                            <li>${details.likeproduct}</li>
                            <li>${details.ingredients}</li>
                            <li>${details.use}</li>
                        </ul>
                    </div>
                    <div class="dl-pdf">
                        <c:if test="${details.file != null && details.file != ''}">
                        <a href="#" class="file" download="${details.file}">
                            </c:if>
                            <c:if test="${details.file == null || details.file == ''}">
                            <a href="#" class="file">
                                </c:if>
                                <ul>
                                    <li>
                                        <img src="${pageContext.request.contextPath}/static/images/icon_pdf.png" alt="">
                                    </li>
                                </ul>
                            </a>
                    </div>
                </div>
            </c:forEach>
        </div>
        <!-- app-list-content -->
    </div>
    <div class="download-ri">
        <dl>
            <dt>应用领域列表</dt>
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
            <dt>
                产品列表
            </dt>
            <c:forEach items="${listProduct}" var="listProduct">
                <dd>
                    <a href="download.html?proid=${listProduct.id}">${listProduct.name}</a>
                </dd>
            </c:forEach>
        </dl>
    </div>
    <br clear="all"/>
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
                        <a href="news.html?type=1">公司新闻</a>
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
<script src="${pageContext.request.contextPath}/static/js/js.js"></script>

<script>

    $(".file").click(function () {
        var dow = $(this).attr("download");
        if (dow != null && dow != "") {
            return true;
        }
        alert("该产品暂时没有文件");
        return false;
    })

    $('.app-list-select').change(function () {
        var index = $('option:selected', '.app-list-select').index();
        $('.app-list-content').css('display', 'none').eq(index).css('display', 'block');
    })
</script>
</body>

</html>
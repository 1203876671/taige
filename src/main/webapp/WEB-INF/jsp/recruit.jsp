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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/static/css/company.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/phon_header_footer.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/news_content.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/css/recruit.css"/>
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
<!--company_banner-->
<div class="company_banner banner-public"
     style="background: url(images/company_banner.jpg)  repeat-x center top; background-size:cover;">
    <h2>人才招聘</h2>
    <span></span>
    <p>RECRUITMENT VERY EXCTING, SEE EVERYTHING</p>
</div>
<!--company_banner-->
<div class="company_content">
    <div class="company_center">
        <div class="news_profile company_profile">
            <h4 id="recruit-h4">人才招聘</h4>
            <p>TALENT RECRUITMEMT</p>
            <div class="news_content">
                <div class="recruit">
                    <h3>研发工程师(IOS)</h3>
                    <dl>
                        <dt>岗位职责：</dt>
                        <dd>1.为永佳移动端的发展负责，我们给你产品发展方面足够的发挥和想象空间，与产品经理协同，共同推动永佳产品向移动方向的发展与创新；</dd>
                        <dd>2. 移动端产品，IOS客户端及SDK的技术方案设计和开发；</dd>
                        <dd>3.参与移动技术方案的研究，设计和实现、关键技术验证等工作；</dd>
                        <dd>4.构建高性能可扩展的组件，打造稳定可复用的开发框架。</dd>
                    </dl>
                    <dl>
                        <dt>任职要求：：</dt>
                        <dd>1. 熟悉cocoa touch，core data，iOS runtime，精通OS X/iOS下的并行开发、网络、内存管理、GUI开发；</dd>
                        <dd>2. 拥有很好的设计模式和思维, 熟悉面向对象编程，图形界面开发；</dd>
                        <dd>3. 学习能力强，强烈的责任心,具有较强的沟通能力及团队合作精神；</dd>
                        <dd>5. 多年iOS客户端开发经验，熟悉REST Application的开发；有成功案例；</dd>
                        <dd>6. 对iOS的UI控件有优化经验者优先；有前端开发经验者优先；</dd>
                        <dd>7. 已在App Store发布过作品者优先；</dd>
                        <dd>8. 有移动社交产品开发经验者优先；</dd>
                        <dd>9、有电子商务经验优先</dd>
                    </dl>
                </div>
                <div class="recruit">
                    <h3>研发工程师(IOS)</h3>
                    <dl>
                        <dt>岗位职责：</dt>
                        <dd>1.为永佳移动端的发展负责，我们给你产品发展方面足够的发挥和想象空间，与产品经理协同，共同推动永佳产品向移动方向的发展与创新；</dd>
                        <dd>2. 移动端产品，IOS客户端及SDK的技术方案设计和开发；</dd>
                        <dd>3.参与移动技术方案的研究，设计和实现、关键技术验证等工作；</dd>
                        <dd>4.构建高性能可扩展的组件，打造稳定可复用的开发框架。</dd>
                    </dl>
                    <dl>
                        <dt>任职要求：：</dt>
                        <dd>1. 熟悉cocoa touch，core data，iOS runtime，精通OS X/iOS下的并行开发、网络、内存管理、GUI开发；</dd>
                        <dd>2. 拥有很好的设计模式和思维, 熟悉面向对象编程，图形界面开发；</dd>
                        <dd>3. 学习能力强，强烈的责任心,具有较强的沟通能力及团队合作精神；</dd>
                        <dd>5. 多年iOS客户端开发经验，熟悉REST Application的开发；有成功案例；</dd>
                        <dd>6. 对iOS的UI控件有优化经验者优先；有前端开发经验者优先；</dd>
                        <dd>7. 已在App Store发布过作品者优先；</dd>
                        <dd>8. 有移动社交产品开发经验者优先；</dd>
                        <dd>9、有电子商务经验优先</dd>
                    </dl>
                </div>

            </div>
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
            <img src="${pageContext.request.contextPath}/static/images/footer-top-logo.png" style="width: 260px;">
            <img src="${pageContext.request.contextPath}/static/images/footer_logo.png">
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
<script src="${pageContext.request.contextPath}/static/js/header_footer.js" type="text/javascript"
        charset="utf-8"></script>
</body>

</html>
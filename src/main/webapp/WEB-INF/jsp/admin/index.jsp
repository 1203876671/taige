<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE HTML>

<html>

<head>

<meta charset="utf-8">
<meta name="renderer" content="webkit|ie-comp|ie-stand">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport"
	content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
<meta http-equiv="Cache-Control" content="no-siteapp" />
<LINK rel="Bookmark" href="/favicon.ico">
<LINK rel="Shortcut Icon" href="/favicon.ico" />
<link rel="icon" href="${findicoid.icopic }" type="image/x-icon" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/admin/index/css/H-ui.min.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/admin/index/css/H-ui.admin.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/admin/index/css/iconfont.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/admin/index/css/icheck.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/admin/index/css/skin/skin.css" id="skin" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/admin/index/css/style.css" />

<script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/index/js/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/index/js/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/index/js/H-ui.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/index/js/H-ui.admin.js"></script>

<title>青春梦想团-后台管理系统</title>

</head>

<body>

	<header class="navbar-wrapper">

		<div class="navbar navbar-fixed-top">

			<div class="container-fluid cl">
				<a class="logo navbar-logo f-l mr-10 hidden-xs">青春梦想团-后台管理系统</a>
				<span class="logo navbar-slogan f-l mr-10 hidden-xs">v2.4</span> 
				<a aria-hidden="false" class="nav-toggle Hui-iconfont visible-xs" href="javascript:;">&#xe667;</a>
				<nav id="Hui-userbar" class="nav navbar-nav navbar-userbar hidden-xs">
					<ul class="cl">
						<li>欢迎您</li>
						<li class="dropDown dropDown_hover"><a class="dropDown_A">admin</a>
							<ul class="dropDown-menu menu radius box-shadow"></ul>
						</li>
						<li><a href="logout.html">[退出]</a></li>
						<li id="Hui-skin" class="dropDown right dropDown_hover"><a href="javascript:;" class="dropDown_A" title="换肤"><i class="Hui-iconfont" style="font-size: 18px">&#xe62a;</i></a>
							<ul class="dropDown-menu menu radius box-shadow">
								<li><a href="javascript:;" data-val="default" title="默认（黑色）">默认（黑色）</a></li>
								<li><a href="javascript:;" data-val="blue" title="蓝色">蓝色</a></li>
								<li><a href="javascript:;" data-val="green" title="绿色">绿色</a></li>
								<li><a href="javascript:;" data-val="red" title="红色">红色</a></li>
								<li><a href="javascript:;" data-val="yellow" title="黄色">黄色</a></li>
								<li><a href="javascript:;" data-val="orange" title="绿色">橙色</a></li>
							</ul>
						</li>
					</ul>
				</nav>
			</div>
		</div>

	</header>
	<aside class="Hui-aside">
		<input runat="server" id="divScrollValue" type="hidden" value="" />
		<div class="menu_dropdown bk_2">
		
			<dl id="menu-article">
				<dt>
					<i class="Hui-iconfont">&#xe687;</i>喜捷广告<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="adminadindex.html" data-title="公司介绍" href="javascript:void(0)">公司介绍</a></li>
					</ul>
					<ul>
						<li><a _href="adminadservice.html" data-title="服务项目" href="javascript:void(0)">服务项目</a></li>
					</ul>
					<ul>
						<li><a _href="adminadcontact.html" data-title="联系我们" href="javascript:void(0)">联系我们</a></li>
					</ul>
				</dd>
			</dl>
			
			<dl id="menu-article">
				<dt>
					<i class="Hui-iconfont">&#xe687;</i>基点教育<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="admineduindex.html" data-title="学校介绍" href="javascript:void(0)">学校介绍</a></li>
					</ul>
					<ul>
						<li><a _href="admineduset.html" data-title="课程设置" href="javascript:void(0)">课程设置</a></li>
					</ul>
					<ul>
						<li><a _href="adminedusign.html" data-title="预约报名" href="javascript:void(0)">预约报名</a></li>
					</ul>
				</dd>
			</dl>
			
			<dl id="menu-article">
				<dt>
					<i class="Hui-iconfont">&#xe687;</i>起程建筑<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="adminebuildindex.html" data-title="公司介绍" href="javascript:void(0)">公司介绍</a></li>
					</ul>
					<ul>
						<li><a _href="adminbuildservice.html" data-title="成功案例" href="javascript:void(0)">服务项目</a></li>
					</ul>
					<ul>
						<li><a _href="adminbuildcase.html" data-title="成功案例" href="javascript:void(0)">成功案例</a></li>
					</ul>
				</dd>
			</dl>
			
			<dl id="menu-article">
				<dt>
					<i class="Hui-iconfont">&#xe687;</i>同臣生态<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="adminecologyindex.html" data-title="公司介绍" href="javascript:void(0)">公司介绍</a></li>
					</ul>
					<ul>
						<li><a _href="adminecologyservice.html" data-title="成功案例" href="javascript:void(0)">服务项目</a></li>
					</ul>
					<ul>
						<li><a _href="adminecologycase.html" data-title="成功案例" href="javascript:void(0)">成功案例</a></li>
					</ul>
				</dd>
			</dl>
			
			<dl id="menu-article">
				<dt>
					<i class="Hui-iconfont">&#xe687;</i>崇妍蔬菜<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="adminvegetablesindex.html" data-title="公司介绍" href="javascript:void(0)">公司介绍</a></li>
					</ul>
					<ul>
						<li><a _href="adminevegetablesservice.html" data-title="成功案例" href="javascript:void(0)">服务项目</a></li>
					</ul>
					<ul>
						<li><a _href="adminvegetableslist.html" data-title="新鲜上市" href="javascript:void(0)">新鲜上市</a></li>
					</ul>
				</dd>
			</dl>
			
			<dl id="menu-article">
				<dt>
					<i class="Hui-iconfont">&#xe687;</i>微咨询<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="adminnews.html" data-title="咨询" href="javascript:void(0)">咨询</a></li>
					</ul>

				</dd>
			</dl>
			
			<dl id="menu-article">
				<dt>
					<i class="Hui-iconfont">&#xe687;</i>微互动<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>
					<ul>
						<li><a _href="admincooperate.html" data-title="合作咨询" href="javascript:void(0)">合作咨询</a></li>
					</ul>
					<ul>
						<li><a _href="admincareers.html" data-title="招贤纳士" href="javascript:void(0)">招贤纳士</a></li>
					</ul>
				</dd>
			</dl>
			
			
			<dl id="menu-article">
				<dt>
					<i class="Hui-iconfont">&#xe687;</i>其他<i class="Hui-iconfont menu_dropdown-arrow">&#xe6d5;</i>
				</dt>
				<dd>

					<ul>
						<li><a _href="adminseo.html" data-title="seo" href="javascript:void(0)">seo</a></li>
					</ul>
					
					<ul>
						<li><a _href="adminico.html" data-title="ico" href="javascript:void(0)">ico</a></li>
					</ul>
					<ul>
						<li><a _href="updadmin.html" data-title="修改管理员密码" href="javascript:void(0)">修改管理员密码</a></li>
					</ul>
				</dd>
			</dl>
		</div>
	</aside>

	<div class="dislpayArrow hidden-xs">
		<a class="pngfix" href="javascript:void(0);"
			onClick="displaynavbar(this)"></a>
	</div>

	<section class="Hui-article-box">

		<div id="Hui-tabNav" class="Hui-tabNav hidden-xs">

			<div class="Hui-tabNav-wp">

				<ul id="min_title_list" class="acrossTab cl">

					<li class="active"><span title="我的桌面" data-href="welcome.html">我的桌面</span><em></em></li>

				</ul>

			</div>

			<div class="Hui-tabNav-more btn-group">
				<a id="js-tabNav-prev" class="btn radius btn-default size-S"
					href="javascript:;"><i class="Hui-iconfont">&#xe6d4;</i></a><a
					id="js-tabNav-next" class="btn radius btn-default size-S"
					href="javascript:;"><i class="Hui-iconfont">&#xe6d7;</i></a>
			</div>

		</div>

		<div id="iframe_box" class="Hui-article">

			<div class="show_iframe">

				<div style="display: none" class="loading"></div>

				<iframe scrolling="yes" frameborder="0" src="welcome.html"></iframe>

			</div>

		</div>

	</section>

	<script type="text/javascript">
		/*资讯-添加*/

		function article_add(title, url) {

			var index = layer.open({

				type : 2,

				title : title,

				content : url

			});

			layer.full(index);

		}

		/*图片-添加*/

		function picture_add(title, url) {

			var index = layer.open({

				type : 2,

				title : title,

				content : url

			});

			layer.full(index);

		}

		/*产品-添加*/

		function product_add(title, url) {

			var index = layer.open({

				type : 2,

				title : title,

				content : url

			});

			layer.full(index);

		}

		/*用户-添加*/

		function member_add(title, url, w, h) {

			layer_show(title, url, w, h);

		}
	</script>

	<script type="text/javascript">
		var _hmt = _hmt || [];

		(function() {

			var hm = document.createElement("script");

			hm.src = "//hm.baidu.com/hm.js?080836300300be57b7f34f4b3e97d911";

			var s = document.getElementsByTagName("script")[0];

			s.parentNode.insertBefore(hm, s)
		})();

		var _bdhmProtocol = (("https:" == document.location.protocol) ? " https://"
				: " http://");

		document
				.write(unescape("%3Cscript src='"
						+ _bdhmProtocol
						+ "hm.baidu.com/h.js%3F080836300300be57b7f34f4b3e97d911' type='text/javascript'%3E%3C/script%3E"));
	</script>

</body>

</html>
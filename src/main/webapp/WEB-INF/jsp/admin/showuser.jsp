<%--
  Created by IntelliJ IDEA.
  User: Jzdsh
  Date: 2019/4/17
  Time: 17:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%
    String base = pageContext.getServletContext().getContextPath();
%>
<script type="text/javascript">
    window.UEDITOR_SERVER_URL = '<%=base%>';
</script>
<!DOCTYPE HTML>
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <LINK rel="Bookmark" href="/favicon.ico">
    <LINK rel="Shortcut Icon" href="/favicon.ico"/>

    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/admin/index/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/admin/index/h-ui.admin/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/admin/index/Hui-iconfont/1.0.8/iconfont.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/admin/icheck/icheck.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/admin/index/h-ui.admin/skin/default/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/admin/index/h-ui.admin/css/style.css"/>

    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/admin/index/jquery/1.9.1/jquery.min.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/index/layer/layer.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/admin/js/jquery.validate.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/admin/js/validate-methods.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/js/messages_zh.min.js"></script>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/admin/icheck/jquery.icheck.min.js"></script>
    <title>用户查看</title>
</head>
<body>
<nav class="breadcrumb">
    <a><i class="Hui-iconfont">&#xe67f;</i> ；用户管理</a>
    <span class="c-gray en">&gt;</span> 用户查看
    <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
       href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<h3 style="text-align:center;">用户查看</h3>
<div class="page-container">
    <form class="form form-horizontal" id="form-article-add">
        <input hidden="hidden" value="${user.id}" name="id"/>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2"></span>姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="${user.name}" readonly="readonly" placeholder="names"
                       id="names" name="names">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">手&nbsp;&nbsp机&nbsp;&nbsp;号：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="${user.phone}" placeholder="" readonly="readonly"
                       id="phone" name="phone">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">地&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;址：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="${user.address}" placeholder="" readonly="readonly"
                       id="address" name="address">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">邮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;箱：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="${user.emli}" placeholder="" readonly="readonly"
                       id="emli" name="emli">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">职务信息：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="${user.post}" placeholder="" readonly="readonly"
                       id="posts" name="posts">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">公司信息：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="${user.companyname}" placeholder="" readonly="readonly"
                       id="companyname" name="companyname">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="${user.remark}" placeholder="" readonly="readonly"
                       id="remark" name="remark">
            </div>
        </div>
    </form>
</div>

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.js"></script>
<link href="<%=base%>/static/ue/themes/default/css/ueditor.css" type="text/css" rel="stylesheet">
<script src="<%=base%>/static/ue/ueditor.config.js" type="text/javascript"></script>
<script src="<%=base%>/static/ue/ueditor.all.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=base%>/static/ue/lang/zh-cn/zh-cn.js"></script>

<!--/请在上方写此页面业务相关的脚本-->
</body>
</html>
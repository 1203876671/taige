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

    <script type="text/javascript">


        function cheakform() {
            $("#sub").click(function () {
                var title = $("input[name='title']").val();
                if (title == null || title == '') {
                    layer.msg("标题不能为空~");
                    return false;
                }
                if (sort == null || sort == '') {
                    layer.msg("权重不能为空~");
                    return false;
                }
                $('#subform').submit();
            });
        }

    </script>

    <title>管理员管理</title>
</head>
<body>
<nav class="breadcrumb">
    <a><i class="Hui-iconfont">&#xe67f;</i> ；类别管理</a>
    <span class="c-gray en">&gt;</span> 修改类别
    <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
       href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<h3 style="text-align:center;">新闻修改/添加</h3>
<article class="page-container">
    <form class="form form-horizontal" id="form-article-add" enctype="multipart/form-data"
          action="${pageContext.request.contextPath}/admin/insertnews.html" method="post">
        <input name="id" hidden="hidden" value="${news.id}"/>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2"><span class="c-red">*</span>新闻标题：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="${news.title}" placeholder="" id="title" name="title">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">新闻概要：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" class="input-text" value="${news.outline}" placeholder="" id="outline"
                       name="outline">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">作者：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <input type="text" name="author" id="author" placeholder="" value="${news.author}"
                       class="input-text">
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">排序值：</label>
            <div class="formControls col-xs-8 col-sm-4">
                <c:if test="${news.sort != null && news.sort != ''}">
                    <input type="text" class="input-text" value="${news.sort}" placeholder="0" id="sort" name="sort">
                </c:if>
                <c:if test="${news.sort == null || news.sort == ''}">
                    <input type="text" class="input-text" value="0" placeholder="0" id="sort" name="sort">
                </c:if>
            </div>
            <div class="formControls col-xs-8 col-sm-4">
                <span class="c-red">数字越小，排序靠前</span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">封面图：</label>
            <div class="formControls col-xs-8 col-sm-4">
                <input type="file" class="input-text" name="file">
            </div>
            <div class="formControls col-xs-8 col-sm-2">
                <c:if test="${news.img != null && news.img != ''}">
                    <img alt="" src="${news.img }" width="90" height="60">
                </c:if>
            </div>
            <div class="formControls col-xs-8 col-sm-4">
                <span class="c-red">图片最佳尺寸(像素)：200 x 164</span>
            </div>
        </div>
        <div class="row cl">
            <label class="form-label col-xs-4 col-sm-2">文章内容：</label>
            <div class="formControls col-xs-8 col-sm-9">
                <script id="introduction" type="text/plain" style="width:100%;height:400px;" >
                ${news.content}
                </script>
            </div>
        </div>
        <div class="row cl">
            <div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-2">
                <button class="btn btn-primary radius" onclick="checkform();" type="submit"><i class="Hui-iconfont">&#xe632;</i>
                    保存
                </button>
                <button class="btn btn-default radius" type="button">&nbsp;&nbsp;取消&nbsp;&nbsp;</button>
            </div>
        </div>
    </form>
</article>

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.3.1.js"></script>
<link href="<%=base%>/static/ue/themes/default/css/ueditor.css" type="text/css" rel="stylesheet">
<script src="<%=base%>/static/ue/ueditor.config.js" type="text/javascript"></script>
<script src="<%=base%>/static/ue/ueditor.all.js" type="text/javascript"></script>
<script type="text/javascript" src="<%=base%>/static/ue/lang/zh-cn/zh-cn.js"></script>
<script type="text/javascript">

    $(function () {
        var ue = UE.getEditor('introduction', {
            //关闭字数统计
            wordCount: false,
            toolbars: [['fullscreen', 'source', '|', 'undo', 'redo', '|',
                'bold', 'italic', 'underline', 'fontborder', 'strikethrough', 'superscript', 'subscript', 'removeformat', 'formatmatch', 'autotypeset', 'blockquote', 'pasteplain', '|', 'forecolor', 'backcolor', 'insertorderedlist', 'insertunorderedlist', 'selectall', 'cleardoc', '|',
                'rowspacingtop', 'rowspacingbottom', 'lineheight', '|',
                'customstyle', 'paragraph', 'fontfamily', 'fontsize', '|',
                'directionalityltr', 'directionalityrtl', 'indent', '|',
                'justifyleft', 'justifycenter', 'justifyright', 'justifyjustify', '|', 'touppercase', 'tolowercase', '|',
                'link', 'unlink', 'anchor', '|', 'imagenone', 'imageleft', 'imageright', 'imagecenter', '|',
                'insertimage', 'emotion', 'insertvideo', 'attachment', 'map', 'template', 'background', '|',
                'horizontal', 'date', 'time', 'spechars', 'wordimage', '|',
                'inserttable', 'deletetable', 'insertparagraphbeforetable', 'insertrow', 'deleterow', 'insertcol', 'deletecol', 'mergecells', 'mergeright', 'mergedown', 'splittocells', 'splittorows', 'splittocols', 'charts', '|',
                'print', 'preview', 'searchreplace', 'help'
            ]],
            //关闭elementPath
            elementPathEnabled: false,
        });
    })

</script>
</body>
</html>
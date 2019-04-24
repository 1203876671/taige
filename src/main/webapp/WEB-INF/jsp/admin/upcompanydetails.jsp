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
    <title>公司管理</title>
</head>
<body>
<nav class="breadcrumb">
    <a><i class="Hui-iconfont">&#xe67f;</i> ；公司管理</a>
    <span class="c-gray en">&gt;</span> 修改公司信息
    <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
       href="javascript:location.replace(location.href);" title="刷新"><i class="Hui-iconfont">&#xe68f;</i></a>
</nav>
<h3 style="text-align:center;">公司信息修改/添加</h3>
<div class="mt-20">
    <table class="table table-border table-bordered table-bg table-hover table-sort">
        <thead>
        <tr class="text-c">
            <%--<th><input type="checkbox" id="sltall"/> </th>--%>
            <th width="200">公司内容</th>
            <th width="200"><a style="text-decoration:none" class="ml-5"
                               href="upcompanytype.html?type=1&id=${company.id}" title="编辑"><i class="Hui-iconfont">&#xe6df;</i>
            </th>
        </tr>
        <tr class="text-c">
            <%--<th><input type="checkbox" id="sltall"/> </th>--%>
            <th width="200">公司愿景</th>
            <th width="200"><a style="text-decoration:none" class="ml-5"
                               href="upcompanytype.html?type=2&id=${company.id}" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
            </th>
        </tr>
        <tr class="text-c">
            <%--<th><input type="checkbox" id="sltall"/> </th>--%>
            <th width="200">价值传递</th>
            <th width="200"><a style="text-decoration:none" class="ml-5"
                               href="upcompanytype.html?type=3&id=${company.id}" title="编辑"><i class="Hui-iconfont">&#xe6df;</i>
            </th>
        </tr>
        <tr class="text-c">
            <%--<th><input type="checkbox" id="sltall"/> </th>--%>
            <th width="200">安全环保</th>
            <th width="200"><a style="text-decoration:none" class="ml-5"
                               href="upcompanytype.html?type=4&id=${company.id}" title="编辑"><i class="Hui-iconfont">&#xe6df;</i>
            </th>
        </tr>
        </thead>
    </table>
</div>

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

    $(function () {
        var ue = UE.getEditor('introduction1', {
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

    $(function () {
        var ue = UE.getEditor('introduction2', {
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

    $(function () {
        var ue = UE.getEditor('introduction3', {
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
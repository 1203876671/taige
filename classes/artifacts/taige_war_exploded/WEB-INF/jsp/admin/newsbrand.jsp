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
<html>
<head>
    <meta charset="utf-8">
    <meta name="renderer" content="webkit|ie-comp|ie-stand">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport"
          content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no"/>
    <meta http-equiv="Cache-Control" content="no-siteapp"/>
    <!--[if lt IE 9]>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/html5shiv.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/respond.min.js"></script>
    <![endif]-->
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/static/h-ui/css/H-ui.min.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/static/h-ui.admin/css/H-ui.admin.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/lib/Hui-iconfont/1.0.8/iconfont.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/static/h-ui.admin/skin/default/skin.css" id="skin"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/static/h-ui.admin/css/style.css"/>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/static/static/h-ui.admin/css/page.css"/>
    <!--[if IE 6]>
    <script type="text/javascript"
            src="${pageContext.request.contextPath}/static/lib/DD_belatedPNG_0.0.8a-min.js"></script>
    <script>DD_belatedPNG.fix('*');</script>
    <![endif]-->
    <title>品牌管理</title>
</head>
<body>
<nav class="breadcrumb"><i class="Hui-iconfont">&#xe67f;</i> 首页 <span class="c-gray en">&gt;</span> 新闻咨询 <span
        class="c-gray en">&gt;</span>
    <c:if test="${type==1}">
        新闻管理
    </c:if>
    <c:if test="${type==2}">
        动态管理
    </c:if>
    <a class="btn btn-success radius r" style="line-height:1.6em;margin-top:3px"
       href="javascript:location.replace(location.href);" title="刷新"><i
            class="Hui-iconfont">&#xe68f;</i></a></nav>
<div class="page-container">
    <div class="text-c">
        <%--<form class="Huiform" method="post" action="${pageContext.request.contextPath}/admin/newsbrand.html"--%>
        <%--target="_self">--%>
        <%--<input type="text" placeholder="新闻名称" name="name" value="" class="input-text" style="width:120px">--%>
        <%--</span>--%>
        <%--<button type="submit" class="btn btn-success" id="" name=""><i--%>
        <%--class="Hui-iconfont">&#xe600;</i> 查询--%>
        <%--</button>--%>
        <%--</form>--%>
    </div>
    <div class="cl pd-5 bg-1 bk-gray mt-20">
        <%--<span class="l"><a href="javascript:;" onclick="datadel()"--%>
        <%--class="btn btn-danger radius" id="delete"><i--%>
        <%--class="Hui-iconfont">&#xe6e2;</i> 批量删除</a></span>--%>
        <a class="btn btn-primary radius" href="newsadd.html?type=${type}&id=0"><i
                class="Hui-iconfont">&#xe600;</i> <c:if test="${type==1}">
            添加新闻
        </c:if>
            <c:if test="${type==2}">
                添加动态
            </c:if></a>
        <span class="r data_num">共有数据：<strong>${pageInfo.total }</strong> 条</span></div>
    <div class="mt-20">
        <table class="table table-border table-bordered table-bg table-sort">
            <thead>
            <tr class="text-c">
                <%--<th width="25"><input type="checkbox" name="" value="" id="sltall"></th>--%>
                <th width="70">新闻ID</th>
                <th width="80">新闻名称</th>
                <th width="200">新闻作者</th>
                <th width="120">新闻概要</th>
                <th width="200">排列序号</th>
                <th width="120">修改时间</th>
                <th width="100">操作</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach items="${pageInfo.list}" var="itme">
                <tr class="text-c">
                        <%--<td><input name="allid" type="checkbox" value="${itme.id}"></td>--%>
                    <td>${itme.id}</td>
                    <td>${itme.title}</td>
                    <td>${itme.author}</td>
                    <td>${itme.outline}</td>
                    <td>${itme.sort}</td>
                    <td>${itme.date}</td>
                    <td class="td-manage">
                        <a style="text-decoration:none" class="ml-5" onClick="article_edit(${itme.id},${type})"
                           href="javascript:;" title="编辑"><i class="Hui-iconfont">&#xe6df;</i></a>
                        <a style="text-decoration:none" class="ml-5" onClick="article_del(this,${itme.id})"
                           href="javascript:;" title="删除"><i class="Hui-iconfont">&#xe6e2;</i></a>
                    </td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </div>

    <div id="PageNum">
        <section>
            <div class="bd points-goods-list">
                <ul class="pages">
                    <li><a href="newsbrand.html?page=1&rows=${pageInfo.pageSize }&type=${type}">首页</a></li>
                    <li class="prev"><a
                            href="newsbrand.html?page=${pageInfo.prePage}&rows=${pageInfo.pageSize }&type=${type}">上一页</a>
                    </li>
                    <c:forEach items="${pageInfo.navigatepageNums}" var="nav">
                        <c:if test="${nav == pageInfo.pageNum}">
                            <li><a href="newsbrand.html?page=${nav}&rows=${pageInfo.pageSize }&type=${type}"
                                   class="active">${nav}</a></li>
                        </c:if>
                        <c:if test="${nav != pageInfo.pageNum}">
                            <li>
                                <a href="newsbrand.html?page=${nav}&rows=${pageInfo.pageSize }&type=${type}">${nav}</a>
                            </li>
                        </c:if>
                    </c:forEach>
                    <li class="next"><a
                            href="newsbrand.html?page=${pageInfo.nextPage}&rows=${pageInfo.pageSize }&type=${type}">下一页</a>
                    </li>
                    <li>
                        <a href="newsbrand.html?page=${pageInfo.pages }&rows=${pageInfo.pageSize }&type=${type}">末页</a>
                    </li>
                </ul>
            </div>
        </section>
    </div>

</div>
<!--_footer 作为公共模版分离出去-->
<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/jquery/1.9.1/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/lib/layer/2.4/layer.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/static/h-ui/js/H-ui.min.js"></script>
<script type="text/javascript"
        src="${pageContext.request.contextPath}/static/static/h-ui.admin/js/H-ui.admin.js"></script>
<!--/_footer 作为公共模版分离出去-->

<!--请在下方写此页面业务相关的脚本-->
<script type="text/javascript"
        src="${pageContext.request.contextPath}/static/lib/My97DatePicker/4.8/WdatePicker.js"></script>
<!--
<script type="text/javascript" src="lib/datatables/1.10.0/jquery.dataTables.min.js"></script> 
<script type="text/javascript" src="lib/laypage/1.2/laypage.js"></script>
-->
<script type="text/javascript">

    //全选与反选
    $("#sltall").click(function () {
        if ($(this).prop("checked")) {
            $("[name='allid']").prop("checked", true);//全选
        } else {
            $("[name='allid']").prop("checked", false);//取消全选
        }
    });

    //单个删除
    function article_del(obj, id) {
        layer.confirm('确认要删除吗？', function (index) {
            $.post("${pageContext.request.contextPath}/admin/deletenews.html", {id: id + ","}, function (data) {
                if (data.is) {
                    $(obj).parents("tr").remove();
                    layer.msg(data.msg, {icon: 1, time: 1000});
                    var counts = $("#count").html();
                    $("#count").html(counts - 1);
                } else {
                    layer.msg(data.msg, {icon: 2, time: 1000});
                }
            }, "json");
        });
    }

    //批量删除
    $("#delete").click(function () {
        //判断是否至少选择一项
        var checkedNum = $("input[name='allid']:checked").length;
        if (checkedNum == 0) {
            layer.msg("请至少选择一个！", {icon: 2, time: 1000});
            return;
        }
        var lengths = 0;
        layer.confirm('确认要删除所选项吗？', function (index) {
            var checkList = new Array();
            $("input[name='allid']:checked").each(function () {
                checkList.push($(this).val());
                var l = checkList.toString();
                lengths = l.length;
            });
            $.ajax({
                type: "POST",
                url: "${pageContext.request.contextPath}/admin/deletenews.html",
                data: {
                    "id": checkList.toString()
                },
                dataType: "json",
                success: function (ajax) {
                    if (ajax.is) {
                        window.location.href = "${pageContext.request.contextPath}/admin/newsbrand.html?page=1&rows=10";
                        layer.msg(data.msg, {icon: 1, time: 1000});
                        var counts = $("#count").html();
                        $("#count").html(counts - lengths);
                        lengths
                    } else {
                        layer.msg(data.msg, {icon: 2, time: 1000});
                    }
                }
            })
        })
    });

    function article_edit(id, type) {
        window.location.href = "newsadd.html?id=" + id + "&type=" + type;
    }

    $('.table-sort').dataTable({
        "aaSorting": [[1, "desc"]],//默认第几个排序
        "bStateSave": true,//状态保存
        "aoColumnDefs": [
            //{"bVisible": false, "aTargets": [ 3 ]} //控制列的隐藏显示
            {"orderable": false, "aTargets": [0, 6]}// 制定列不参与排序
        ]
    });


</script>
</body>
</html>
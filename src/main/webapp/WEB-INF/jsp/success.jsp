<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String base = pageContext.getSession().getServletContext().getContextPath();
	String resources = base+"/"+"static";
	request.setAttribute("base", base);
	request.setAttribute("resources", resources);
%>
<!DOCTYPE html>
<html>
<head lang="en">
    <meta charset="UTF-8">
    <title>操作返回</title>
</head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/static/admin/css/success.css"/>
<script type="text/javascript" src="${pageContext.request.contextPath}/static/admin/js/jquery-1.7.2.min.js"></script>


<script type="text/javascript">
	$(function(){
		$("#jishi").html(4);
		daojishi();
	});
	var t;
	var i = 4;
	function daojishi(){
		var url = $("#url").val();
		i--;
		$("#jishi").html(i);
		if(i<=0){
			i=4;
			window.location.href=url;
			clearTimeout(t);
			return;
		}
		t = setTimeout("daojishi()",1000);
	}
</script>

<body>
	<div style="text-align: center;">
		<input type="hidden" id="url" value="${url }"/>
        <div class="success">
            <span class="yes"></span>
            <div class="up">
	            <p>操作成功，请点击...</p>
	            <p><span id="jishi" style="color:#008DE5;font-size:20px;">3</span>&nbsp;秒后自动跳转到<a href="${url }">${title } ...</a></p>
            </div>
            <div class="down">
            	<a href="${url }">${title }</a>
                <div class="cl"></div>
            </div>
        </div>
	</div>
</body>
</html>
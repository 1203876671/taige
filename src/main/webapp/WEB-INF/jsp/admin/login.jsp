﻿<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!-- saved from url=(0064)http://www.17sucai.com/preview/137615/2015-01-15/demo/index.html -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><HTML 
xmlns="http://www.w3.org/1999/xhtml"><HEAD><META content="IE=11.0000" 
http-equiv="X-UA-Compatible">
 
<META http-equiv="Content-Type" content="text/html; charset=utf-8"> 
<title>青春梦想团</title>

<SCRIPT src="${pageContext.request.contextPath}/static/admin/login/js/jquery-1.9.1.min.js" type="text/javascript"></SCRIPT>
 
<STYLE>
body{
	background: #ebebeb;
	font-family: "Helvetica Neue","Hiragino Sans GB","Microsoft YaHei","\9ED1\4F53",Arial,sans-serif;
	color: #222;
	font-size: 12px;
}
*{padding: 0px;margin: 0px;}
.top_div{
	background: #008ead;
	width: 100%;
	height: 400px;
}
.ipt{
	border: 1px solid #d3d3d3;
	padding: 10px 10px;
	width: 290px;
	border-radius: 4px;
	padding-left: 35px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
	box-shadow: inset 0 1px 1px rgba(0,0,0,.075);
	-webkit-transition: border-color ease-in-out .15s,-webkit-box-shadow ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s;
	transition: border-color ease-in-out .15s,box-shadow ease-in-out .15s
}
.ipt:focus{
	border-color: #66afe9;
	outline: 0;
	-webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6);
	box-shadow: inset 0 1px 1px rgba(0,0,0,.075),0 0 8px rgba(102,175,233,.6)
}
.u_logo{
	background: url("${pageContext.request.contextPath}/static/admin/login/images/username.png") no-repeat;
	padding: 10px 10px;
	position: absolute;
	top: 43px;
	left: 40px;

}
.p_logo{
	background: url("${pageContext.request.contextPath}/static/admin/login/images/password.png") no-repeat;
	padding: 10px 10px;
	position: absolute;
	top: 12px;
	left: 40px;
}
a{
	text-decoration: none;
}
.tou{
	background: url("${pageContext.request.contextPath}/static/admin/login/images/tou.png") no-repeat;
	width: 97px;
	height: 92px;
	position: absolute;
	top: -87px;
	left: 140px;
}
.left_hand{
	background: url("${pageContext.request.contextPath}/static/admin/login/images/left_hand.png") no-repeat;
	width: 32px;
	height: 37px;
	position: absolute;
	top: -38px;
	left: 150px;
}
.right_hand{
	background: url("${pageContext.request.contextPath}/static/admin/login/images/right_hand.png") no-repeat;
	width: 32px;
	height: 37px;
	position: absolute;
	top: -38px;
	right: -64px;
}
.initial_left_hand{
	background: url("${pageContext.request.contextPath}/static/admin/login/images/hand.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -12px;
	left: 100px;
}
.initial_right_hand{
	background: url("${pageContext.request.contextPath}/static/admin/login/images/hand.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -12px;
	right: -112px;
}
.left_handing{
	background: url("${pageContext.request.contextPath}/static/admin/login/images/left-handing.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -24px;
	left: 139px;
}
.right_handinging{
	background: url("${pageContext.request.contextPath}/static/admin/login/images/right_handing.png") no-repeat;
	width: 30px;
	height: 20px;
	position: absolute;
	top: -21px;
	left: 210px;
}
#denglu{margin:10px;width:100px;background: rgb(0, 142, 173); padding: 7px 10px; border-radius: 4px; border: 1px solid rgb(26, 117, 152); border-image: none; color: rgb(255, 255, 255); font-weight: bold;}
#message{margin:5px;color:red;}
</STYLE>
<SCRIPT type="text/javascript">
$(function(){
	//得到焦点
	$("#password").focus(function(){
		$("#left_hand").animate({
			left: "150",
			top: " -38"
		},{step: function(){
			if(parseInt($("#left_hand").css("left"))>140){
				$("#left_hand").attr("class","left_hand");
			}
		}}, 2000);
		$("#right_hand").animate({
			right: "-64",
			top: "-38px"
		},{step: function(){
			if(parseInt($("#right_hand").css("right"))> -70){
				$("#right_hand").attr("class","right_hand");
			}
		}}, 2000);
	});
	//失去焦点
	$("#password").blur(function(){
		$("#left_hand").attr("class","initial_left_hand");
		$("#left_hand").attr("style","left:100px;top:-12px;");
		$("#right_hand").attr("class","initial_right_hand");
		$("#right_hand").attr("style","right:-112px;top:-12px");
	});
});
</SCRIPT>
  <!-- 登录的表单验证 Lock-玄清  start-->
 	<script type="text/javascript">
 		$(function(){
 			$("#loginFrm").submit(function(){
 				var user = $("#user").val();
 				var pwd = $("#password").val();
 				if(user == null || user == ""){
 					$("#message").html("* 请输入用户名！");
 					$("#user").focus();
 					return false;
 				}
 				if(pwd == null || pwd == ""){
 					$("#message").html("*　请输入密码！");
 					$("#password").focus();
 					return false;
 				}
 			});
 		});
 	</script>
 <!-- 登录的表单验证 Lock-玄清  end-->
<META name="GENERATOR" content="MSHTML 11.00.9600.17496"></HEAD> 
<BODY>
	<DIV class="top_div"></DIV>
	<form id="loginFrm" action="adminlogins.html" method="post">
		<DIV style="background: rgb(255, 255, 255); margin: -100px auto auto; border: 1px solid rgb(231, 231, 231); border-image: none; width: 400px; height: 200px; text-align: center;">
			<DIV style="width: 165px; height:100px; position: absolute;">
				<DIV class="tou"></DIV>
				<DIV class="initial_left_hand" id="left_hand"></DIV>
				<DIV class="initial_right_hand" id="right_hand"></DIV>
			</DIV>
			<P style="padding: 30px 0px 10px; position: relative;">
				<SPAN class="u_logo"></SPAN>         
				<INPUT class="ipt" type="text" id="user" name="loginname" placeholder="请输入用户名" value=""> 
		    </P>
			<P style="position: relative;">
				<SPAN class="p_logo"></SPAN>         
				<INPUT class="ipt" id="password" name="password" type="password" placeholder="请输入密码" value="">
	  		</P>
	  		<p id="message">${msg}</p>
			<DIV style="height: 50px; line-height: 50px; margin-top: 10px; border-top-color: rgb(231, 231, 231); border-top-width: 1px; border-top-style: solid;">
				<input type="submit" id="denglu" value="登录"/>
	        </DIV>
	   </DIV>
   </form>
   <div style="text-align:center;"></div>
<div style="text-align:center;margin-top:250px;">

<p>Copyright 2008 - 2016 <a href="http://www.shjieguan.com/">shjieguan</a> Inc. All rights reserved  </p>
<p>powered by <a href="http://www.shjieguan.com/">shjieguan</a></p>

</div>
</BODY>
</HTML>

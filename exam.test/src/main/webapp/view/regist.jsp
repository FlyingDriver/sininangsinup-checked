<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.servletContext.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <script src="${pageContext.servletContext.contextPath}/js/jquery-1.12.4.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/js/bootstrap.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/js/md5.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/js/jquery.validate.min.js"></script>
    <script src="${pageContext.servletContext.contextPath}/js/messages_zh.min.js"></script>

<script type="text/javascript">

$(function() {
	 $("#form").validate({
			rules:{
				username:{
					required:true
				},
				password:{
					required:true
				},
				repwd:{
					required:true,
					equalTo:"#pwd"
				}
			},
			messages:{
				username:{
					required:"用户名不能为空！"
				},
				password:{
					required:"密码不能为空！",
					equalTo:"两次输入不一"
				}
			}
	});	
});


 function checkname() {
	var user ={
			"name":$("#username")[0].value
	};
	$.ajax({
        url:"${pageContext.request.contextPath}//checkName.action",
        type:"post",
        dataType:"text",
        data:user,
        success:function(msg){
            if(msg=="error"){
            	$("#tip").text("用户名已存在");
            } else{
            	$("#tip").text('');
			}
        }
    });
} 

</script>

</head>
<body>
<form action="${pageContext.servletContext.contextPath}/user/regist.action" method="post" id="form">
用户名：<input type="text" name="username" onblur="checkname()" id="username"><br>
密码：<input type="password" name="password" id="pwd"><br>
确认密码：<input type="password" name="repwd"><br>
<input type="submit" id="regist"><br></form>
<span id="tip" style="color: red;"></span><br>
<a href="${pageContext.servletContext.contextPath}/view/login.jsp">去登录</a>
</body>
</html>
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
				}
			},
			messages:{
				username:{
					required:"用户名不能为空！"
				},
				password:{
					required:"密码不能为空！"
				}
			}
	});	
});

</script>
</head>
<body>
<form action="${pageContext.servletContext.contextPath}/user/login.action" method="post" id="form"  >
用户名：<input type="text" name="username" value="${username}"><br>
密码：<input type="password" name="password" value="${password}"><br>
<span id="tip" style="color: red;"></span><br>
<input type="submit" id="regist" ><br>
</form>
<a href="${pageContext.servletContext.contextPath}/view/regist.jsp">去注册</a>
</body>
</html>
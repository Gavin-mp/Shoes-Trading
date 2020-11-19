<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/info.css">
</head>
<body>
	<form class="form-horizontal info-form" action="<%=request.getContextPath()%>/user/userlogin" method="post">
	 	<h3 class="info-form-title">请登陆您的账号</h3>
		<div class="form-group">
        	<label for="inputAccount" class="col-sm-4 control-label">账号:</label>
        	<div class="col-sm-8">
            	<input name="userid" required="required" type="text" class="form-control" id="inputAccount"  placeholder="Account">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputPassword" class="col-sm-4 control-label">密码:</label>
        	<div class="col-sm-8">
            	<input name="userpassword" required="required" type="password" class="form-control" id="inputPassword"  placeholder="Password">
        	</div>
    	</div>
		<div class="form-group">
        	<div class="col-sm-offset-4 col-sm-8">
        		<a href="<%=request.getContextPath()%>/user/toregister">注册</a>
            	<button type="submit" class="btn btn-default btn-lg info-form-button">&nbsp;登&nbsp;陆&nbsp;</button>
            	<a href="<%=request.getContextPath()%>/admin/admintologin">管理员登陆</a>
        	</div>
    	</div>
	</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="<%=request.getContextPath()%>/resources/js/jquery-2.1.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/info.css">
</head>
<body>
	<nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="<%=request.getContextPath()%>/user/usertohome" class="navbar-brand">主页</a>
            </div>
            <div class="collapse navbar-collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="<%=request.getContextPath()%>/order/vieworder?orderuid=${user.userid}">查看订单</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">账号设置<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="<%=request.getContextPath()%>/user/usershowinfo?userid=${user.userid}">个人资料</a></li>
                            <li><a href="<%=request.getContextPath()%>/user/tochangepassword?userid=${user.userid}">更改密码</a></li>
                            <li><a href="<%=request.getContextPath()%>/user/userlogout">注销</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
	<div>
		<form class="form-horizontal info-form" action="<%=request.getContextPath()%>/user/userchangepassword?userid=${user.userid}"  method="post">
			<h3 class="info-form-title">&nbsp;&nbsp;&nbsp;&nbsp;修改密码</h3>
    		<div class="form-group">
        		<label for="inputPassword" class="col-sm-4 control-label">原密码:</label>
        		<div class="col-sm-8">
            		<input name="userpassword" required="required" type="text" class="form-control" id="inputPassword"  placeholder="Password">
        		</div>
    		</div>
    		<div class="form-group">
        		<label for="inputNewPassword" class="col-sm-4 control-label">新密码:</label>
        		<div class="col-sm-8">
            		<input name="newpassword" required="required" type="text" class="form-control" id="inputNewPassword"  placeholder="NewPassword">
        		</div>
    		</div>
    		<div class="form-group">
        		<label for="inputRepeatPassword" class="col-sm-4 control-label">重复密码:</label>
        		<div class="col-sm-8">
            		<input name="repeatpassword" required="required" type="text" class="form-control" id="inputRepeatPassword"  placeholder="RepeatPassword">
        		</div>
    		</div>
			<div class="form-group">
        		<div class="col-sm-offset-5 col-sm-7">
            		<button type="submit" class="btn btn-default btn-lg info-form-button">&nbsp;提&nbsp;交&nbsp;</button>
        		</div>
    		</div>
		</form>
	</div>
</body>
</html>
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
		<form class="form-horizontal info-form" action="<%=request.getContextPath()%>/user/usermodifyinfo" method="post">
			<h3 class="info-form-title">请更改您的信息</h3>
    		<div class="form-group">
        		<label for="inputAccount" class="col-sm-4 control-label">账号:</label>
        		<div class="col-sm-8">
            		<input name="userid" value="${user.userid}" type="hidden" class="form-control" id="inputAccount">
            		<p class="form-control-static">${user.userid}</p>
        		</div>
    		</div>
    		<div class="form-group">
        		<label for="inputPhone" class="col-sm-4 control-label">手机号码:</label>
        		<div class="col-sm-8">
            		<p class="form-control-static">${user.usertel}</p>
        		</div>
    		</div>
    		<div class="form-group">
        		<label for="inputName" class="col-sm-4 control-label">用户名:</label>
        		<div class="col-sm-8">
            		<input name="username" value="${user.username}" required="required" type="text" class="form-control" id="inputName">
        		</div>
    		</div>
    		<div class="form-group">
        		<label for="inputGender" class="col-sm-4 control-label">性别:</label>
        		<div class="col-sm-8">
            		<input name="usergender" value="${user.usergender}" required="required" type="text" class="form-control" id="inputGender">
        		</div>
    		</div>
    		<div class="form-group">
        		<label for="inputSize" class="col-sm-4 control-label">尺码号:</label>
        		<div class="col-sm-8">
            		<input name="usershsize" value="${user.usershsize}" required="required" type="text" class="form-control" id="inputSize">
        		</div>
    		</div>
    		<div class="form-group">
        		<label for="inputAddress" class="col-sm-4 control-label">收货地址:</label>
        		<div class="col-sm-8">
            		<input name="useraddress" value="${user.useraddress}" required="required" type="text" class="form-control" id="inputAddress">
        		</div>
    		</div>
			<div class="form-group">
        		<div class="col-sm-offset-6 col-sm-6">
            		<button type="submit" class="btn btn-default btn-lg">&nbsp;提&nbsp;交&nbsp;</button>
        		</div>
    		</div>
		</form>
	</div>
</body>
</html>
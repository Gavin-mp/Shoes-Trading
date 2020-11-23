<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/info.css">
</head>
<body>
	<nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="<%=request.getContextPath()%>/admin/admintoasp" class="navbar-brand">管理员主页</a>
            </div>
            <div class="collapse navbar-collapse">
            	<ul class="nav navbar-nav">
                    <li class="active"><a href="<%=request.getContextPath()%>/admin/admintoasp">用户管理</a></li>
                    <li><a href="<%=request.getContextPath()%>/shoes/shoestoadd">添加商品</a></li>
                    <li><a href="<%=request.getContextPath()%>/shoes/shoesviewall">管理商品</a></li>
                    <li><a href="<%=request.getContextPath()%>/shoes/shoesclassview">商品分类</a></li>
                    <li><a href="<%=request.getContextPath()%>/order/viewallorder">订单管理</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="<%=request.getContextPath()%>/admin/adminlogout">注销</a></li>
                </ul>
            </div>
        </div>
    </nav>
	<div>
		<form class="form-horizontal info-form" action="<%=request.getContextPath()%>/admin/adminfinduser">
			<div class="form-group">
        		<div class="col-sm-9">
        			<input name="userfind" type="text" class="form-control"  placeholder="搜索用户名或用户账号">
        		</div>
        		<div class="col-sm-3">
            		<button type="submit" class="btn btn-default">&nbsp;搜&nbsp;索&nbsp;</button>
        		</div>
    		</div>
		</form>
	</div>
	<div>
		<table class="table table-hover table-striped" style="width: 1200px; margin-left: 200px;">
			<tr>
				<td class="col-sm-2">用户账号</td>
				<td class="col-sm-2">用户名</td>
				<td class="col-sm-1">用户性别</td>
				<td class="col-sm-2">用户手机号</td>
				<td class="col-sm-1">用户尺码</td>
				<td class="col-sm-3">用户地址</td>
				<td class="col-sm-1">用户状态</td>
			</tr>
			<c:forEach items="${userlist}" var="userlist">
				<tr>
					<td class="col-sm-2">${userlist.userid}</td>
					<td class="col-sm-2">${userlist.username}</td>
					<td class="col-sm-1">${userlist.usergender}</td>
					<td class="col-sm-2">${userlist.usertel}</td>
					<td class="col-sm-1">${userlist.usershsize}</td>
					<td class="col-sm-3">${userlist.useraddress}</td>
					<td class="col-sm-1"><a href="<%=request.getContextPath()%>/admin/adminunsealuser?userid=${userlist.userid}">${userlist.userstate}</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
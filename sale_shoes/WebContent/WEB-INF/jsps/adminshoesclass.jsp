<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-default" role="navigation">
        <div class="container-fluid">
            <div class="navbar-header">
                <a href="<%=request.getContextPath()%>/admin/admintoasp" class="navbar-brand">管理员主页</a>
            </div>
            <div class="collapse navbar-collapse">
            	<ul class="nav navbar-nav">
                    <li><a href="<%=request.getContextPath()%>/admin/admintoasp">用户管理</a></li>
                    <li><a href="<%=request.getContextPath()%>/shoes/shoestoadd">添加商品</a></li>
                    <li><a href="<%=request.getContextPath()%>/shoes/shoesviewall">管理商品</a></li>
                    <li class="active"><a href="<%=request.getContextPath()%>/shoes/shoesclassview">商品分类</a></li>
                    <li><a href="<%=request.getContextPath()%>/order/viewallorder">订单管理</a></li>
                </ul>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="<%=request.getContextPath()%>/admin/adminlogout">注销</a></li>
                </ul>
            </div>
        </div>
    </nav>
	<table class="table table-hover table-striped" style="width: 500px; margin-left: 500px; margin-top:50px; text-align: center;">
		<tr>
			<td>款式</td>
		</tr>
		<c:forEach items="${shclasslist }" var="shclasslist">
			<tr>
				<td>${shclasslist }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>
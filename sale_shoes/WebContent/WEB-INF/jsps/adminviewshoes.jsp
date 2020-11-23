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
                    <li><a href="<%=request.getContextPath()%>/admin/admintoasp">用户管理</a></li>
                    <li><a href="<%=request.getContextPath()%>/shoes/shoestoadd">添加商品</a></li>
                    <li class="active"><a href="<%=request.getContextPath()%>/shoes/shoesviewall">管理商品</a></li>
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
		<form class="form-horizontal info-form" action="<%=request.getContextPath()%>/shoes/shoesfind">
			<div class="form-group">
        		<div class="col-sm-9">
        			<input name="fshoesname" type="text" class="form-control"  placeholder="Search">
        		</div>
        		<div class="col-sm-3">
            		<button type="submit" class="btn btn-default">&nbsp;搜&nbsp;索&nbsp;</button>
        		</div>
    		</div>
		</form>
	</div>
	<div>
		<table class="table table-hover table-striped">
			<tr>
				<td>鞋名</td>
				<td>款式</td>
				<td>40号数量</td>
				<td>41号数量</td>
				<td>42号数量</td>
				<td>43号数量</td>
				<td>44号数量</td>
				<td>45号数量</td>
				<td>46号数量</td>
				<td>价格</td>
				<td>商品图片</td>
				<td>更改信息</td>
				<td>删除商品</td>
			</tr>
			<c:forEach items="${shoeslist}" var="shoeslist">
				<tr>
					<td>${shoeslist.shoesname}</td>
					<td>${shoeslist.shoesclass}</td>
					<td>${shoeslist.s40}</td>
					<td>${shoeslist.s41}</td>
					<td>${shoeslist.s42}</td>
					<td>${shoeslist.s43}</td>
					<td>${shoeslist.s44}</td>
					<td>${shoeslist.s45}</td>
					<td>${shoeslist.s46}</td>
					<td>${shoeslist.shoesprice}</td>
					<td><img src="<%=request.getContextPath()%>/${shoeslist.shoesimg}" style="width: 200px;"></td>
					<td><a href="<%=request.getContextPath()%>/shoes/shoestochange?shoesid=${shoeslist.shoesid}">更改</a></td>
					<td><a href="<%=request.getContextPath()%>/shoes/shoesdeleteone?shoesid=${shoeslist.shoesid}">删除</a></td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
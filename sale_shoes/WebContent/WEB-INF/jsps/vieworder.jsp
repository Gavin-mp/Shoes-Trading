<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
<script src="<%=request.getContextPath()%>/resources/js/jquery-2.1.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
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
		<form class="form-horizontal info-form" action="<%=request.getContextPath()%>/order/finduserorder">
			<input name="orderuid" type="hidden" value="${user.userid }">
			<div class="form-group">
        		<div class="col-sm-9">
        			<input name="orderfind" type="text" class="form-control"  placeholder="搜索订单号或商品名">
        		</div>
        		<div class="col-sm-3">
            		<button type="submit" class="btn btn-default">&nbsp;搜&nbsp;索&nbsp;</button>
        		</div>
    		</div>
		</form>
	</div>
	<div>
		<table class="table table-hover table-striped"  style="width: 1200px; margin-left: 200px;">
			<tr>
				<td class="col-sm-1">订单号</td>
				<td class="col-sm-3">商品图片</td>
				<td class="col-sm-5">商品名</td>
				<td class="col-sm-1">尺寸</td>
				<td class="col-sm-1">数量</td>
				<td class="col-sm-1">价格</td>
			</tr>
			<c:forEach items="${orderlist}" var="orderlist">
				<tr>
					<td class="col-sm-1">${orderlist.orderid}</td>
					<td class="col-sm-3"><img src="<%=request.getContextPath()%>/${orderlist.ordersimg}" style="width: 200px;"></td>
					<td class="col-sm-5">${orderlist.ordersname}</td>
					<td class="col-sm-1">${orderlist.orderssize}</td>
					<td class="col-sm-1">${orderlist.ordersnum}</td>
					<td class="col-sm-1">￥${orderlist.ordersprice}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
<script src="<%=request.getContextPath()%>/resources/js/jquery-2.1.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/new.css">
	<style type="text/css">
		.my-float{
			float: left;
			margin-right: 5px;
		}
		.my-font-change{
			margin-left: 25px; 
			margin-top: -45px;
			font-size: 25px; 
			font-weight: lighter;
		}
	</style>
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
	<div style="margin-left: 200px;">
		<div class="my-float">
			<img src="<%=request.getContextPath()%>/${shoes.shoesimg}" style="width: 600px;">
		</div>
		<div class="my-float" style="width: 500px;">
			<br><br>
			<h2>${shoes.shoesname}</h2>
			<br><br>
			<h1>￥${shoes.shoesprice}</h1>
			<br><br>
			<form action="<%=request.getContextPath()%>/order/orderadd">
				<input type="hidden" name="orderuid" value="${user.userid}">
				<input type="hidden" name="ordersimg" value="${shoes.shoesimg}">
				<div  class="my-float">
					<input type="radio" name="orderssize" value="40" id="s40">
					<label for="s40"><p class="my-font-change">40</p></label>
				</div>
				<div class="my-float">
					<input type="radio" name="orderssize" value="41" id="s41">
					<label for="s41"><p class="my-font-change">41</p></label>
				</div>
				<div class="my-float">
					<input type="radio" name="orderssize" value="42" id="s42">
					<label for="s42"><p class="my-font-change">42</p></label>
				</div>
				<div class="my-float">
					<input type="radio" name="orderssize" value="43" id="s43">
					<label for="s43"><p class="my-font-change">43</p></label>
				</div>
				<div class="my-float">
					<input type="radio" name="orderssize" value="44" id="s44">
					<label for="s44"><p class="my-font-change">44</p></label>
				</div>
				<div class="my-float">
					<input type="radio" name="orderssize" value="45" id="s45">
					<label for="s45"><p class="my-font-change">45</p></label>
				</div>
				<div class="my-float">
					<input type="radio" name="orderssize" value="46" id="s46">
					<label for="s46"><p class="my-font-change">46</p></label>
				</div>
				<br><br><br><br><br><br><br>
				<div class="form-group" style="text-align: center;">
					<input type="text" class="form-control" style="width: 80px;text-align: center;" name="ordersnum" value="1">
				</div>
				<div class="form-group">
        			<div class="col-sm-offset-6 col-sm-6">
            			<button type="submit" class="btn btn-default btn-lg">&nbsp;购&nbsp;买&nbsp;</button>
        			</div>
    			</div>
			</form>
		</div>
	</div>
</body>
</html>
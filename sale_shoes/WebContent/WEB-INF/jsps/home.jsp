<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/bootstrap2.min.css">
<script src="<%=request.getContextPath()%>/resources/js/jquery-2.1.1.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap2.min.js"></script>
<script src="<%=request.getContextPath()%>/resources/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/css/info.css">
<meta charset="UTF-8">
<title>Insert title here</title>
	<style>
        .my-all-shoes{
            margin-left: 130px;
            width: 1300px;
        }
        .my-shoes{
            height:400px;
            width:300px;
            float:left;
            margin:5px;
        }
        .my-shoes-img{
        	width:100%;
        }
        #myCarousel{
            width: 800px;
            margin-left: 330px;
            margin-top:20px;
            margin-bottom: 20px;
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
	<div>
		<form class="form-horizontal info-form" action="<%=request.getContextPath()%>/user/userfindshoes">
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
	<div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval="2000">
    	<ol class="carousel-indicators">
        	<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        	<li data-target="#myCarousel" data-slide-to="1"></li>
    	</ol>
    	<div class="carousel-inner">
        	<div class="item active">
            	<img src="<%=request.getContextPath()%>/resources/img/jordan2.jpg" alt="First slide">
        	</div>
        	<div class="item">
            	<img src="<%=request.getContextPath()%>/resources/img/jordan.jpg" alt="Second slide">
        	</div>
    	</div>
	</div>
	<div class="my-all-shoes">
		<c:forEach items="${shoeslist}" var="shoeslist">
			<div class="my-shoes">
				<a href="<%=request.getContextPath()%>/user/userbuyshoes?shoesid=${shoeslist.shoesid}&userid=${user.userid}"><img class="my-shoes-img" src="<%=request.getContextPath()%>/${shoeslist.shoesimg}"></a>
				<h4>${shoeslist.shoesname}</h4>
				<h4>￥${shoeslist.shoesprice}</h4>
			</div>
		</c:forEach>
	</div>
</body>
</html>
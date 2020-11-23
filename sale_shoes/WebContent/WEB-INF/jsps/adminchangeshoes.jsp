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
	<form class="form-horizontal info-form" action="<%=request.getContextPath()%>/shoes/shoeschange">
		<h3 class="info-form-title">&nbsp;&nbsp;更改商品信息</h3>
		<div class="form-group">
        	<label class="col-sm-4 control-label">鞋名:</label>
        	<div class="col-sm-8">
            	<p class="form-control-static">${shoes.shoesname}</p>
        	</div>
    	</div>
    	<div class="form-group">
        	<label class="col-sm-4 control-label">款式:</label>
        	<div class="col-sm-8">
            	<p class="form-control-static">${shoes.shoesclass}</p>
        	</div>
    	</div>
    	<div class="form-group">
    		<img src="<%=request.getContextPath()%>/${shoes.shoesimg}" style="width: 200px; margin-left: 200px;">
    		<input name="shoesimg"  type="hidden" value="${shoes.shoesimg}">
    	</div>
    	<div class="form-group">
        	<label for="inputNum40" class="col-sm-4 control-label">40号数量:</label>
        	<div class="col-sm-8">
            	<input name="s40" required="required" type="text" class="form-control" id="inputNum40" value="${shoes.s40}">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputNum41" class="col-sm-4 control-label">41号数量:</label>
        	<div class="col-sm-8">
            	<input name="s41" required="required" type="text" class="form-control" id="inputNum41" value="${shoes.s41}">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputNum42" class="col-sm-4 control-label">42号数量:</label>
        	<div class="col-sm-8">
            	<input name="s42" required="required" type="text" class="form-control" id="inputNum42" value="${shoes.s42}">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputNum43" class="col-sm-4 control-label">43号数量:</label>
        	<div class="col-sm-8">
            	<input name="s43" required="required" type="text" class="form-control" id="inputNum43" value="${shoes.s43}">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputNum44" class="col-sm-4 control-label">44号数量:</label>
        	<div class="col-sm-8">
            	<input name="s44" required="required" type="text" class="form-control" id="inputNum44" value="${shoes.s44}">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputNum45" class="col-sm-4 control-label">45号数量:</label>
        	<div class="col-sm-8">
            	<input name="s45" required="required" type="text" class="form-control" id="inputNum45" value="${shoes.s45}">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputNum46" class="col-sm-4 control-label">46号数量:</label>
        	<div class="col-sm-8">
            	<input name="s46" required="required" type="text" class="form-control" id="inputNum46" value="${shoes.s46}">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputPrice" class="col-sm-4 control-label">价格:</label>
        	<div class="col-sm-8">
            	<input name="shoesprice" required="required" type="text" class="form-control" id="inputPrice" value="${shoes.shoesprice}">
        	</div>
    	</div>
    	<div class="form-group">
        	<div class="col-sm-offset-6 col-sm-6">
            	<button type="submit" class="btn btn-default btn-lg">&nbsp;提&nbsp;交&nbsp;</button>
        	</div>
    	</div>
	</form>
</body>
</html>
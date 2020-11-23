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
                    <li class="active"><a href="<%=request.getContextPath()%>/shoes/shoestoadd">添加商品</a></li>
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
	<form class="form-horizontal info-form" action="<%=request.getContextPath()%>/shoes/shoesadd" enctype="multipart/form-data" method="post">
		<h3 class="info-form-title">&nbsp;&nbsp;添加商品</h3>
		<div class="form-group">
        	<label for="inputName" class="col-sm-4 control-label">鞋名:</label>
        	<div class="col-sm-8">
            	<input name="shoesname" required="required" type="text" class="form-control" id="inputName"  placeholder="Name">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputClass" class="col-sm-4 control-label">款式:</label>
        	<div class="col-sm-8">
            	<input name="shoesclass" required="required" type="text" class="form-control" id="inputClass"  placeholder="Class">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputNum40" class="col-sm-4 control-label">40号数量:</label>
        	<div class="col-sm-8">
            	<input name="s40" required="required" type="text" class="form-control" id="inputNum40"  placeholder="Num40">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputNum41" class="col-sm-4 control-label">41号数量:</label>
        	<div class="col-sm-8">
            	<input name="s41" required="required" type="text" class="form-control" id="inputNum41"  placeholder="Num41">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputNum42" class="col-sm-4 control-label">42号数量:</label>
        	<div class="col-sm-8">
            	<input name="s42" required="required" type="text" class="form-control" id="inputNum42"  placeholder="Num42">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputNum43" class="col-sm-4 control-label">43号数量:</label>
        	<div class="col-sm-8">
            	<input name="s43" required="required" type="text" class="form-control" id="inputNum43"  placeholder="Num43">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputNum44" class="col-sm-4 control-label">44号数量:</label>
        	<div class="col-sm-8">
            	<input name="s44" required="required" type="text" class="form-control" id="inputNum44"  placeholder="Num44">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputNum45" class="col-sm-4 control-label">45号数量:</label>
        	<div class="col-sm-8">
            	<input name="s45" required="required" type="text" class="form-control" id="inputNum45"  placeholder="Num45">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputNum46" class="col-sm-4 control-label">46号数量:</label>
        	<div class="col-sm-8">
            	<input name="s46" required="required" type="text" class="form-control" id="inputNum46"  placeholder="Num46">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputPrice" class="col-sm-4 control-label">价格:</label>
        	<div class="col-sm-8">
            	<input name="shoesprice" required="required" type="text" class="form-control" id="inputPrice"  placeholder="Price">
        	</div>
    	</div>
    	<div class="form-group">
        	<label for="inputPhoto" class="col-sm-4 control-label">商品图片:</label>
        	<div class="col-sm-8">
            	<input name="file" type="file" multiple="multiple" style="font-size: 15px; margin:5px;">
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
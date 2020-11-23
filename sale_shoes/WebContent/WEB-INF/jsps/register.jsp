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
<form class="form-horizontal info-form" action="<%=request.getContextPath()%>/user/userregister" method="post">
    <h3 class="info-form-title">请注册您的账号</h3>
    <div class="form-group">
        <label for="inputAccount" class="col-sm-4 control-label">账号:</label>
        <div class="col-sm-8">
            <input name="userid" required="required" type="text" class="form-control" id="inputAccount"  placeholder="Account">
        </div>
    </div>
    <div class="form-group">
        <label for="inputEmail" class="col-sm-4 control-label">邮箱:</label>
        <div class="col-sm-8">
            <input name="useremail" required="required" type="text" class="form-control" id="inputEmail"  placeholder="Email">
        </div>
    </div>
    <div class="form-group">
        <label for="inputPassword" class="col-sm-4 control-label">密码:</label>
        <div class="col-sm-8">
            <input name="userpassword" required="required" type="text" class="form-control" id="inputPassword"  placeholder="Password">
        </div>
    </div>
    <div class="form-group">
        <label for="inputName" class="col-sm-4 control-label">用户名:</label>
        <div class="col-sm-8">
            <input name="username" required="required" type="text" class="form-control" id="inputName"  placeholder="Name">
        </div>
    </div>
    <div class="form-group">
        <label for="inputGender" class="col-sm-4 control-label">性别:</label>
        <div class="col-sm-8">
            <input name="usergender" required="required" type="text" class="form-control" id="inputGender"  placeholder="Gender">
        </div>
    </div>
    <div class="form-group">
        <label for="inputPhone" class="col-sm-4 control-label">手机号码:</label>
        <div class="col-sm-8">
            <input name="usertel" required="required" type="text" class="form-control" id="inputPhone"  placeholder="Phone">
        </div>
    </div>
    <div class="form-group">
        <label for="inputSize" class="col-sm-4 control-label">尺码号:</label>
        <div class="col-sm-8">
            <input name="usershsize" required="required" type="text" class="form-control" id="inputSize"  placeholder="Size">
        </div>
    </div>
    <div class="form-group">
        <label for="inputAddress" class="col-sm-4 control-label">收货地址:</label>
        <div class="col-sm-8">
            <input name="useraddress" required="required" type="text" class="form-control" id="inputAddress"  placeholder="Address">
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
<%--
  Created by IntelliJ IDEA.
  User: muggle
  Date: 2024/7/11
  Time: 14:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
%>
<!DOCTYPE html>
<html lang="zh-cn">
<base href="<%=basePath%>">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title>注册界面</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Style CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:300,300i,400,400i,700,700i,800,800i|Merriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <!-- Datepick -->
    <link rel="stylesheet" href="css/jquery-ui.css" type="text/css">
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" type="text/css" href="css/fontello.css">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <script>
        function check() {
            var phone = document.getElementById("phone").value;
            var name =  document.getElementById("name").value;
            var password = document.getElementById("password").value;
            var passwordagain = document.getElementById("passwordagain").value;
            if(phone=="") {alert("手机号不能为空"); return false}
            if(name=="") {alert("姓名不能为空"); return false}
            if(password=="") {alert("密码不能为空"); return false}
            if(passwordagain=="") {alert("再次输入的密码不能为空"); return false}
            return true;
        }
    </script>

</head>
<body>

<%--<div class="container">--%>
    <div style="width: 1100px;padding-left: 500px;margin-top: 200px">
        <div class="widget mb30">
            <h2 class="text-center mb20">注册</h2>
            <h4 style="color: red">${param.flag=="f"?"第二次输入的密码不一致":""}</h4>
            <h4 style="color: red">${param.CHECK=="f"?"该手机号已经注册":""}</h4>
            <form action="${pageContext.request.contextPath}/Register" method="post" onsubmit=" return check()">
                <div class="form-group">
                    <input id="phone" name="phone" type="text" placeholder="请输入手机号" class="form-control">
                </div>
                <div class="form-group">
                    <input id="name" name="name" type="text" placeholder="请输入你的姓名" class="form-control">
                </div>
                <div class="form-group">
                    <input id="password" name="password" type="password" placeholder="请输入密码" class="form-control">
                </div>
                <div class="form-group">
                    <input id="passwordagain" name="passwordagain" type="password" placeholder="请再次输入密码" class="form-control">
                </div>
                <button type="submit" class="btn btn-primary btn-block">注册</button>
            </form>
        </div>
    </div>
</body>
</html>

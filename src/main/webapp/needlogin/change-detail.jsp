<%--
  Created by IntelliJ IDEA.
  User: muggle
  Date: 2024/7/17
  Time: 19:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title>个人信息</title>
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:300,300i,400,400i,700,700i,800,800i|Merriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/owl.carousel.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/owl.theme.default.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fontello.css">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
        }
        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .form-group {
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        input[type="text"], input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 3px;
            box-sizing: border-box;
        }
        button {
            padding: 10px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
        }
        button:hover {
            background-color: #0056b3;
        }
        a button {
            padding: 10px 20px;
            background-color: #28a745;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
            text-decoration: none;
        }
        a button:hover {
            background-color: #218838;
        }
        .button-container {
            text-align: center;
            margin-top: 20px;
        }
    </style>
</head>
<body>


<div class="container">
    <h2 style="text-align: center;">个人信息修改</h2>
    <form action="${pageContext.request.contextPath}/needlogin/updatedetail" method="post" onsubmit="return check()">
        <div class="form-group">
            <label for="pname">姓名：</label>
            <input type="text" name="pname" id="pname" value="${patients.name}">
        </div>
        <div class="form-group">
            <label for="phone">手机号：</label>
            <input type="text" name="phone" id="phone" value="${patients.phone}">
        </div>
        <div class="form-group">
            <label for="password">密码：</label>
            <input type="password" name="password" id="password" value="${patients.password}">
        </div>
        <div class="form-group">
            <label for="idcard">身份证号：</label>
            <input type="text" name="idcard" id="idcard" value="${patients.idCardNumber}">
        </div>
        <div class="form-group">
            <label for="email">邮箱：</label>
            <input type="text" name="email" id="email" value="${patients.email}">
        </div>
        <input type="hidden" name="patientId" id="patientId" value="${patients.patientId}">
        <div class="button-container">
            <button type="submit">提交</button>
        </div>
    </form>
</div>

</body>
</html>

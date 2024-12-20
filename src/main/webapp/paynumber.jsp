<%--
  Created by IntelliJ IDEA.
  User: muggle
  Date: 2024/7/18
  Time: 15:39
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
    <title>账户充值</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            width: 500px; /* Increased width for a larger container */
            padding: 30px; /* Increased padding for better spacing */
            background-color: #fff;
            border: 1px solid #ccc;
            border-radius: 12px; /* Increased border radius for smoother corners */
            box-shadow: 0 0 20px rgba(0,0,0,0.2); /* Increased box shadow for depth */
            text-align: center;
        }
        .form-group {
            margin-bottom: 30px; /* Increased margin bottom for spacing */
            text-align: left;
        }
        label {
            display: block;
            font-weight: bold;
            margin-bottom: 10px; /* Increased margin bottom for spacing */
            font-size: 18px; /* Increased font size for better readability */
        }
        input[type="text"] {
            width: calc(100% - 20px);
            padding: 14px; /* Increased padding for larger input field */
            border: 2px solid #ccc; /* Increased border thickness */
            border-radius: 5px; /* Increased border radius for smoother input */
            box-sizing: border-box;
            font-size: 16px; /* Increased font size for better readability */
        }
        button {
            padding: 14px 28px; /* Increased padding for larger button */
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px; /* Increased font size for better readability */
        }
        button:hover {
            background-color: #0056b3;
        }
    </style>
    <script>
        function check() {
            var m = document.getElementById("money").value;
            if (m === "") {
                alert("金额不能为空");
                return false;
            }
            return true;
        }
    </script>
</head>
<body>

<div class="container">
    <h2>账户充值</h2>
    <form action="${pageContext.request.contextPath}/pay" method="post" onsubmit="return check()">
        <div class="form-group">
            <label for="money">请输入充值金额：</label>
            <input type="text" name="money" id="money" placeholder="请输入充值金额">
        </div>
        <button type="submit">提交</button>
    </form>
</div>

</body>
</html>

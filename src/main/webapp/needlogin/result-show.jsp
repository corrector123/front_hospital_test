<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>预约结果</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        .container {
            max-width: 800px;
            margin: 50px auto;
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1 {
            font-size: 24px;
            margin-bottom: 20px;
            text-align: center;
        }
        h5 {
            font-size: 18px;
            text-align: center;
            color: #888;
        }
        button {
            display: block;
            margin: 20px auto;
            padding: 10px 20px;
            font-size: 16px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
        }
        button:hover {
            background-color: #0056b3;
        }
        a {
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="container">
        <h1>${param.flag1=="f"?"预约成功":""}</h1>
        <h1> ${param.flag2=="f"?"预约失败，该时间段订单已有订单":""}</h1>
        <h1>${param.flag3=="f"?"预约失败，该时间段订单过多":""}</h1>
        <h1>${param.flag4=="f"?"余额不足，无法预约，请求充值":""}</h1>
        <h5>${param.flag5=="f"?"你的余额不足以支付系统自动分配的医生的挂号费用，请充值或者自行选择医生预约":""}</h5>
    <a href="${pageContext.request.contextPath}/needlogin/querypersonappoint"><button>查看订单</button></a>
    <a href="${pageContext.request.contextPath}/needlogin/queryperson"><button>去充值</button></a>
</div>

</body>
</html>

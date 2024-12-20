<%--
  Created by IntelliJ IDEA.
  User: muggle
  Date: 2024/7/15
  Time: 21:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
%>
<!DOCTYPE html>
<html lang="zh-CN">
<base href="<%=basePath%>">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title>个人中心</title>
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
    <!-- Style CSS -->
    <link href="${pageContext.request.contextPath}/css/style.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:300,300i,400,400i,700,700i,800,800i|Merriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/owl.carousel.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/css/owl.theme.default.css" rel="stylesheet">
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/fontello.css">
    <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script>
        function Getpage(page) {

            document.getElementById("pages").value=page;
            document.getElementById("FORM").submit();

        }


    </script>


</head>
<body>
<div class="top-bar">
    <div class="container">
        <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-6 col-xs-12">
                <a href="index.jsp"><img src="images/logo.png" alt=""></a>
            </div>
            <div class="col-lg-3 hidden-md hidden-sm hidden-xs">
                <div class="call-info">
                    <p><span class="call-icon"><i class="icon-location"></i></span><span class="call-text">4499 Patton Lane
Raleigh, NC 7603</span></p>
                </div>
            </div>
            <div class="col-lg-3 hidden-md col-sm-6 hidden-xs "> <div class="call-info">
                <p> <span class="call-icon"><i class=" icon-phone-call"></i></span><span class="call-text">+1800-123-4567 <br>+1800-123-8910</span></p>
            </div>
            </div>
            <div class="col-lg-2 col-md-8 hidden-sm hidden-xs">
                <div class="header-btn"><a href="#" class="btn btn-primary btn-sm">预约 </a></div>
            </div>
        </div>
    </div>
</div>
<div class="header-wrapper">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="navigation">
                    <div id="navigation">
                        <ul>
                            <li class="active"><a href="index.jsp" title="Home">首页</a></li>
                            <li><a href="about.html" title="About us">关于我们</a> </li>
                            <li class="has-sub"><a href="#" title="Services">预约服务</a>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/QueryDepartment" title="service-list">按科室预约</a></li>
                                    <li><a href="${pageContext.request.contextPath}/doctor/querydoctor" title="service-single">按医生预约</a></li>
                                </ul>
                            </li>
                            <li class="has-sub"><a href="blog-default.html" title="Blog ">博客</a>
                                <ul>
                                    <li><a href="blog-default.html" title="Blog">默认博客</a></li>
                                    <li><a href="blog-single.html" title="Blog Single ">单个博客</a></li>
                                </ul>
                            </li>
                            <li class="has-sub"><a href="javascript:void(0)" title="Features ">公告</a>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=新闻报道">新闻报道</a></li>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=重要通知">重要通知</a></li>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=人事招聘">人事招聘</a></li>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=健康科普">健康科普</a></li>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=假期安排">假期安排</a></li>
                                </ul>
                            </li>
                            <li class="has-sub"><a href="#" title="Features ">个人中心</a>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/needlogin/querypersonappoint" title="Testimonials">预约订单</a></li>
                                    <li><a href="${pageContext.request.contextPath}/needlogin/querypersonconsul" title="404-error">诊断病单</a> </li>
                                    <li><a href="${pageContext.request.contextPath}/needlogin/querypersonhospitalization" title="Styleguide">住院单</a> </li>
                                    <li><a href="${pageContext.request.contextPath}/needlogin/queryperson" title="Testimonials">个人信息</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div style="width:100%; display: flex;">
    <h2 style="margin-left: 250px;margin-top: 50px">搜索条件</h2>
    <form name="FORM" id="FORM" style="display: flex" action="${pageContext.request.contextPath}/needlogin/querypersonhospitalization" method="post">
        <div class="form-group">
            <select  style="width: 200px;margin-top: 40px;margin-left: 50px" id="2" name="pstatus" type="text" class="form-control">
                <option></option>
                <option value="paid" ${pstatus=="paid"?"selected":""}>已支付</option>
                <option value="unpaid" ${pstatus=="unpaid"?"selected":""}>未支付</option>
                <option value="partially_paid" ${pstatus=="partially_paid"?"selected":""}>部分支付</option>
            </select>
        </div>
        <div class="form-group">
            <select  style="width: 200px;margin-top: 40px;margin-left: 50px" id="3" name="hstatus" type="text" class="form-control">
                <option></option>
                <option value="admitted" ${hstatus=="admitted"?"selected":""}>已入院</option>
                <option value="discharged" ${hstatus=="discharged"?"selected":""}>已出院</option>
                <option value="in_progress" ${hstatus=="in_progress"?"selected":""}>进行中</option>
            </select>
        </div>
        <input hidden="hidden" id="pages" name="pages" value="1">
        <button  type="submit" style="background-color: #25aae1;margin-left: 50px;width: 250px;height: 50px;margin-top: 40px;color: white" >搜索</button>
    </form>
</div>

<div style="display: flex;margin-left: 100px;margin-top: 50px">
    <c:forEach items="${pageInfo.list}" var="a">
        <div class=" widget widget-categories" style="width: 600px;margin-left: 100px">
            <h2 style="text-align: center" class="widget-title">住院单</h2>
            <ul>
                <li>住院编号：${a.hospitalizationId}</li>
                <li>患者姓名：${patients.name}</li>
                <li>病房号：${a.roomNumber}</li>
                <li>住院费用：${a.cost}</li>
                <li>支付状态：${a.paymentStatus}</li>
                <li>是否有保险：${a.isInsured}</li>
                <li>住院状态：${a.hospitalizationStatus}</li>
            </ul>
        </div>
    </c:forEach>
</div>

<div style="margin-left: 700px">
    <div class="pagelist">
        <a style="margin-right: 10px" onclick="Getpage(${pageInfo.prePage})">上一页</a>
        <c:forEach items="${pageInfo.navigatepageNums}" var="num">
            <c:choose>
                <c:when test="${num == pageInfo.pageNum}"><span onclick="Getpage(${num})" class="current">${num}</span></c:when>
                <c:otherwise><a onclick="Getpage(${num})"  style="margin-left: 5px">${num}</a></c:otherwise>
            </c:choose>
        </c:forEach>
        <a onclick="Getpage(${pageInfo.nextPage})" style="margin-right: 10px;margin-left: 10px">下一页</a>
        <a onclick="Getpage(${pageInfo.pages})">尾页</a>
    </div>
</div>

</body>
</html>

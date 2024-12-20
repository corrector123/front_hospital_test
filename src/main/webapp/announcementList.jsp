<%--
  Created by IntelliJ IDEA.
  User: corrector
  Date: 2024/7/18
  Time: 14:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%--图片样式加载失败，使用此方法--%>
<%
    String contextPath = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + contextPath + "/";
%>
<html lang="en">
<%--图片样式加载失败，使用此方法--%>
<base href="<%=basePath%>>">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="keywords" content="">
    <title>北科一院</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <!-- Style CSS -->
    <link href="css/style.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Merriweather+Sans:300,300i,400,400i,700,700i,800,800i|Merriweather:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">
    <link href="css/owl.carousel.min.css" rel="stylesheet">
    <link href="css/owl.theme.default.css" rel="stylesheet">
    <!-- FontAwesome CSS -->
    <link rel="stylesheet" type="text/css" href="css/fontello.css">
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <script src="js/jquery.js"></script>
    <script src="js/pintuer.js"></script>
    <![endif]-->
    <script>
        function submitFormData(){
            //获取表单对象
            $("#listform").submit();
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
                    <p><span class="call-icon"><i class="icon-location"></i></span><span class="call-text">北京科技大学</span></p>
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
                            <li class="has-sub"><a href="javascript:void(0)" title="Features ">公告</a>
                                <ul>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=新闻报道">新闻报道</a></li>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=重要通知">重要通知</a></li>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=人事招聘">人事招聘</a></li>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=健康科普">健康科普</a></li>
                                    <li><a href="${pageContext.request.contextPath}/announce/getAnnounceList?type=假期安排">假期安排</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<form method="post" action="${pageContext.request.contextPath}/announce/getAnnounceList" id="listform">
    <div class="space-small">
        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <h1 class="mb30">${announcements.type}</h1>
            <ul class="search" style="padding-left:10px;">
                <li>
                    <%--设置用户请求的当前页，value动态变化--%>
                    <input type="hidden" name="page" id="page" value="1">
                    <input type="hidden" name="type" value="${announcements.type}">
                </li>
                <li>
                    <input type="text" placeholder="请输入标题" value="${announcements.title}" name="title" class="form-control" />
                </li>
                <li>
                    <input type="date" placeholder="请输入日期" class="form-control" name="creationTime" value="${announcements.creationTime}" />
                    <a href="javascript:void(0)" class="btn btn-default mb20" onclick="submitFormData()" >搜索</a>
                </li>
            </ul>
        </div>
    </div>
</form>
<div class="row center-block">
    <div class="col-md-6 col-sm-6 col-xs-12" style="width: 95%">
        <table class="table table-striped " width="100%">
            <tr>
                <th>标题</th>
                <th>图片</th>
                <th>撰写人</th>
                <th>内容</th>
                <th style="width: 15%">发布时间</th>
                <th>操作</th>
            </tr>
            <volist name="list" id="vo">
                <c:forEach items="${pageInfo.list}" var="announce">
                <tr>
                    <td>${announce.title}</td>
                    <td><img src="http://121.36.4.88:8081/taichi/upload/${announce.avatar}" alt="加载失败" width="20" height="20" /></td>
                    <td>${announce.creator}</td>
                    <td>${announce.content}</td>
                    <td>${announce.creationTime}</td>
                    <td>
                        <div>
                            <a href="${pageContext.request.contextPath}/announce/readAnnounce?id=${announce.announcementId}" class="btn btn-default mb20">查看详情</a>
                        </div>
                    </td>
                </tr>
                </c:forEach>
                <tr>
                    <td colspan="8">
                        <div class="row">
                            <span class="btn btn-default mb20">总记录数：${pageInfo.total}</span>
                            <a href="${pageContext.request.contextPath}/announce/getAnnounceList?page=${pageInfo.prePage}&type=${announcements.type}" class="btn btn-default mb20">上一页</a>
                            <c:forEach items="${pageInfo.navigatepageNums}" var="num">
                                <c:choose>
                                    <c:when test="${num==pageInfo.pageNum}">
                                        <span class="btn btn-default mb20">${num}</span>
                                    </c:when>
                                    <c:otherwise>
                                        <a href="${pageContext.request.contextPath}/announce/getAnnounceList?page=${num}&type=${announcements.type}" class="btn btn-default mb20">${num}</a>
                                    </c:otherwise>
                                </c:choose>
                            </c:forEach>
                            <a href="${pageContext.request.contextPath}/announce/getAnnounceList?page=${pageInfo.nextPage}&type=${announcements.type}" class="btn btn-default mb20">下一页</a>
                            <a href="${pageContext.request.contextPath}/announce/getAnnounceList?page=${pageInfo.pages}&type=${announcements.type}" class="btn btn-default mb20">尾页</a>
                        </div>
                    </td>
                </tr>
        </table>
    </div>
</div>
</body>
</html>

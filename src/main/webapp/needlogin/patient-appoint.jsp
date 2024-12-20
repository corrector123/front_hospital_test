<%--
  Created by IntelliJ IDEA.
  User: muggle
  Date: 2024/7/12
  Time: 21:58
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
        function cancell(date,time,aid,free) {
           if(confirm("你确定要取消 "+date+" "+time+"的预约吗？"))
           {
               window.location.href="${pageContext.request.contextPath}/doctorappointdesc?aid="+ aid + "&free="+free;
           }
        }
        function consultationdetail(aid) {
            window.location.href="${pageContext.request.contextPath}/needlogin/querypersonconsul?aid="+aid;
        }
    </script>

    <script>
        function Getpage(page) {
        document.getElementById("pages").value=page;
        document.getElementById("FORM").submit();
        }
    </script>

    <script>
        $(function () {
            //禁用“确认重新提交表单”
            window.history.replaceState(null, null, window.location.href);
        })
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
    <form name="FORM" id="FORM" style="display: flex" action="${pageContext.request.contextPath}/needlogin/querypersonappoint" method="post">
        <div class="form-group">
            <select style="width: 200px;margin-top: 40px;margin-left: 50px" id="1" name="departname"  type="text" class="form-control">
                <option></option>
                <c:forEach items="${departmentsList}" var="d">
                    <option ${d.departmentName==departname?"selected":""}>${d.departmentName}</option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <select  style="width: 200px;margin-top: 40px;margin-left: 50px" id="2" name="status" type="text" class="form-control">
                <option></option>
                <option value="booked"  ${status=='booked'?"selected":""}>预约中</option>
                <option value="completed" ${status=='completed'?"selected":""}>已完成</option>
                <option value="cancelled" ${status=='cancelled'?"selected":""}>已取消</option>
            </select>
        </div>
        <input hidden="hidden" id="pages" name="pages" value="1">
        <input name="doctorname" value="${doctorname}" style="margin-left: 50px;margin-top: 40px" type="text" placeholder="请输入医生名字" class="form-control">
        <button  type="submit" style="background-color: #25aae1;margin-left: 50px;width: 250px;height: 50px;margin-top: 40px;color: white" >搜索</button>
    </form>
</div>



<div style="display: flex;margin-left: 100px;margin-top: 50px">
    <c:forEach items="${pageInfo.list}" var="a">
        <div class=" widget widget-categories" style="width: 600px;margin-left: 100px">
            <h2 style="text-align: center" class="widget-title">预约订单</h2>
            <ul>
                <li>预约编号：${a.appointmentId}</li>
                <li>患者编号：${a.patientId}</li>
                <li>患者姓名：${patients.name}</li>
                <li>医生姓名：${a.doctors.name}</li>
                <li>医生职位：${a.doctors.professionalTitle.titleName}</li>
                <li>预约科室：${a.doctors.department.departmentName}</li>
                <li>预约日期：${a.appointmentDate}</li>
                <li>预约时间：${a.appointmentTime}</li>
                <li>预约费用：${a.doctors.registrationFee}</li>
                <c:choose>
                    <c:when test="${a.status=='booked'}">
                        <li>预约状态：预约中</li>
                    </c:when>
                    <c:when test="${a.status=='completed'}">
                        <li>预约状态：已完成</li>
                    </c:when>
                    <c:otherwise>
                        <li>预约状态：已取消</li>
                    </c:otherwise>
                </c:choose>
                <c:choose>
                    <c:when test="${a.status=='booked'}">
                        <li><button onclick="cancell('${a.appointmentDate}','${a.appointmentTime}','${a.appointmentId}','${a.doctors.registrationFee}')" style="margin-left: 220px">取消订单</button></li>
                    </c:when>
                    <c:when test="${a.status=='completed'}">
                        <li><button onclick="consultationdetail(${a.appointmentId})" style="margin-left: 220px">查看诊断</button></li>
                    </c:when>
                </c:choose>
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

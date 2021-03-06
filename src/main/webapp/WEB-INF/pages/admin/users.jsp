<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%--
  Created by IntelliJ IDEA.
  User: Qiaoyy
  Date: 2017/4/6
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Simple Responsive Admin</title>
    <!-- BOOTSTRAP STYLES-->
    <link href="/assets/css/bootstrap.css" rel="stylesheet" />
    <!-- FONTAWESOME STYLES-->
    <link href="/assets/css/font-awesome.css" rel="stylesheet" />
    <!-- CUSTOM STYLES-->
    <link href="/assets/css/custom.css" rel="stylesheet" />
    <!-- GOOGLE FONTS-->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
</head>
<body>



<div id="wrapper">
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="adjust-nav">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">
                    <img class="logo-img" src="/assets/img/logo.png" />
                </a>
            </div>

            <span class="logout-spn" >
                  <a href="#" style="color:#fff;">LOGOUT</a>

                </span>
        </div>
    </div>
    <!-- /. NAV TOP  -->
    <nav class="navbar-default navbar-side" role="navigation">
        <div class="sidebar-collapse">
            <ul class="nav" id="main-menu">


                <li >
                    <a href="index.html" ><i class="fa fa-desktop "></i>Dashboard <span class="badge">Included</span></a>
                </li>


                <li>
                    <a href="ui.html"><i class="fa fa-table "></i>UI Elements  <span class="badge">Included</span></a>
                </li>
                <li class="active-link">
                    <a href="blank.html"><i class="fa fa-edit "></i>Blank Page  <span class="badge">Included</span></a>
                </li>



                <li>
                    <a href="#"><i class="fa fa-qrcode "></i>My Link One</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-bar-chart-o"></i>My Link Two</a>
                </li>

                <li>
                    <a href="#"><i class="fa fa-edit "></i>My Link Three </a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-table "></i>My Link Four</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-edit "></i>My Link Five </a>
                </li>
            </ul>
        </div>

    </nav>
    <!-- /. NAV SIDE  -->
    <div id="page-wrapper" >
        <div id="page-inner">
            <%--<div class="row">--%>
                <%--<div class="col-md-12">--%>
                    <%--<h2> </h2>--%>
                <%--</div>--%>
            <%--</div>--%>
            <div class="">
                <h1>用户管理</h1>
                <hr/>

                <h3>所有用户 <a href="/admin/users/add" type="button" class="btn btn-primary btn-sm">添加</a></h3>

                <!-- 如果用户列表为空 -->
                <c:if test="${empty userList}">
                    <div class="alert alert-warning" role="alert">
                        <span class="glyphicon glyphicon-info-sign" aria-hidden="true"></span>User表为空，请<a href="/admin/users/add" type="button" class="btn btn-primary btn-sm">添加</a>
                    </div>
                </c:if>

                <!-- 如果用户列表非空 -->
                <c:if test="${!empty userList}">
                    <table class="table table-bordered table-striped">
                        <tr>
                            <th>ID</th>
                            <th>用户名</th>
                            <th>密码</th>
                            <td>用户角色</td>
                            <td>姓名</td>
                            <td>操作</td>

                        </tr>

                        <c:forEach items="${userList}" var="user">
                            <tr>
                                <td>${user.userId}</td>
                                <td>${user.userName}</td>
                                <td>${user.userPassword}</td>
                                <td>${user.roleByRoleId.roleName}</td>
                                <td>${user.employeeByEmployeeId.employeeName}</td>

                                <td>
                                    <a href="/admin/users/show/${user.userId}" type="button" class="btn btn-sm btn-success">详情</a>
                                    <a href="/admin/users/update/${user.userId}" type="button" class="btn btn-sm btn-warning">修改</a>
                                    <a href="/admin/users/delete/${user.userId}" type="button" class="btn btn-sm btn-danger">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </c:if>
            </div>
            <!-- /. ROW  -->
            <hr />

            <!-- /. ROW  -->
        </div>
        <!-- /. PAGE INNER  -->
    </div>
    <!-- /. PAGE WRAPPER  -->
</div>
<div class="footer">


    <div class="row">
        <div class="col-lg-12" >
            &copy;  2014 yourdomain.com | Design More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a>
        </div>
    </div>

</div>


<!-- /. WRAPPER  -->
<!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
<!-- JQUERY SCRIPTS -->
<script src="/assets/js/jquery-1.10.2.js"></script>
<!-- BOOTSTRAP SCRIPTS -->
<script src="/assets/js/bootstrap.min.js"></script>
<!-- CUSTOM SCRIPTS -->
<script src="/assets/js/custom.js"></script>


</body>
</html>

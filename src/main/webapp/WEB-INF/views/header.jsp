<%--
  Created by IntelliJ IDEA.
  User: tomek
  Date: 2016-10-29
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Sergey Pozhilov (GetTemplate.com)">
    <title>Usugy</title>
    <link rel="shortcut icon" href="assets/images/gt_favicon.png">

    <link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/pushy.css">
    <!-- Custom styles for our template -->
    <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
    <link rel="stylesheet" href="assets/css/main.css">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media
    queries -->
    <!--[if lt IE 9]>
    <script src="assets/js/html5shiv.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
</head>

<body class="home">

<!-- Fixed navbar -->
<div class="navbar navbar-inverse navbar-fixed-top headroom">
    <div class="container">
        <div class="navbar-header">
            <!-- Button for smallest screens -->
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.html"><img src="assets/images/logo.png" alt="Progressus HTML5 template"></a>
        </div>

        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav pull-right">
                <c:choose>


                    <c:when test="${pageContext.request.userPrincipal.authenticated}">
                        <li><a href="index.php">Home</a></li>
                        <li><a href="about.php">About</a></li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">More Pages <b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="sidebar-left.html">Left Sidebar</a>
                                </li>
                                <li>
                                    <a href="sidebar-right.html">Right Sidebar</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="#">Blog</a></li>
                        <c:url value="j_spring_security_logout" var="logoutUrl" />
                        <form id="logout" action="${logoutUrl}" method="post" >
                                <%--<input class="btn" type="submit" value="WYLOGUJ"/>--%>
                            <li><a class="btn" >WYLOGUJ</a></li>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
                        </form>
                    </c:when>

                    <c:otherwise><li><a class="btn" href="/signin">SIGN IN / SIGN UP</a></li></c:otherwise>
                </c:choose>
                <%--<a class="btn" href="/signin">SIGN IN / SIGN UP</a>--%>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</div>
<!-- Pushy Menu -->
<nav class="pushy pushy-left">
    <ul>
        <!-- Submenu -->
        <li class="pushy-submenu">
            <a href="#">Submenu</a>
            <ul>
                <li class="pushy-link"><a href="#">Item 1</a></li>
                <li class="pushy-link"><a href="#">Item 2</a></li>
                <li class="pushy-link"><a href="#">Item 3</a></li>
            </ul>
        </li>
        <li class="pushy-link"><a href="#">Item 1</a></li>
        <li class="pushy-link"><a href="#">Item 2</a></li>
    </ul>
</nav>
<!-- /.navbar -->

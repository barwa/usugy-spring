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
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- Custom styles for our template -->
    <link rel="stylesheet" href="assets/css/bootstrap-theme.css" media="screen">
    <link rel="stylesheet" href="assets/css/main.css">


    <%--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>--%>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media
    queries -->

    <!--[if lt IE 9]>
    <script src="assets/js/html5shiv.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->

    <%-- FILE UPLOADER --%>

    <link href="assets/css/fileinput.min.css" media="all" rel="stylesheet" type="text/css" />
    <!-- canvas-to-blob.min.js is only needed if you wish to resize images before upload.
      This must be loaded before fileinput.min.js -->
    <script src="assets/js/plugins/canvas-to-blob.min.js" type="text/javascript"></script>
    <!-- sortable.min.js is only needed if you wish to sort / rearrange files in initial preview.
         This must be loaded before fileinput.min.js -->
    <script src="assets/js/plugins/sortable.min.js" type="text/javascript"></script>
    <!-- purify.min.js is only needed if you wish to purify HTML content in your preview for HTML files.
         This must be loaded before fileinput.min.js -->
    <script src="assets/js/plugins/purify.min.js" type="text/javascript"></script>
    <!-- the main fileinput plugin file -->
    <script src="assets/js/fileinput.min.js"></script>
    <!-- bootstrap.js below is needed if you wish to zoom and view file content
         in a larger detailed modal dialog -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- optionally if you need a theme like font awesome theme you can include
        it as mentioned below -->
    <script src="assets/themes/fa/theme.js"></script>
    <!-- optionally if you need translation for your language then include
        locale file as mentioned below -->
    <script src="assets/js/locales/pl.js"></script>

    <%-- END --%>


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
                        <li><a href ="#" class="menu-btn"><span class="fa fa-2x fa-bars fa-fw text-inverse"></span></a></li>
                        <c:url value="j_spring_security_logout" var="logoutUrl" />
                    </c:when>

                    <c:otherwise><li><a class="btn" href="/signin">Logowanie / Rejestracja</a></li></c:otherwise>
                </c:choose>
                <%--<a class="btn" href="/signin">SIGN IN / SIGN UP</a>--%>
            </ul>
        </div>
        <!--/.nav-collapse -->
    </div>
</div>
<!-- Pushy Menu -->
<nav class="pushy pushy-right">

    <p><img src="https://lh3.googleusercontent.com/-KJvY7t5ArQ0/AAAAAAAAAAI/AAAAAAAAAAA/WHtSXc4uYQQ/photo.jpg" width="50" height="50" class="center-block img-responsive"></p>
    <p align="center" class="white">MENU</p>
    <a align="right" class="pushy-link" href="#">Ulubione</a>
    <ul>
        <%--<li class="pushy-link"><a class="pushy-link" href="#">Ulubione</a></li>--%>
        <li class="pushy-link"><a href="#">Wiadomosci <span class="badge">4</span></a></li>
        <!-- Submenu -->
        <li class="pushy-submenu">
            <a href="#">Moje konto</a>
            <ul>
                <li class="pushy-link"><a href="#">Moje oferty</a></li>
                <li class="pushy-link"><a href="#">Historia</a></li>
                <li class="pushy-link"><a href="#">Ustawienia</a></li>
            </ul>
        </li>
        <li class="pushy-link">
            <form id="logout" action="${logoutUrl}" method="post" >
            <%--<input class="btn" type="submit" value="WYLOGUJ"/>--%>
                <li><a class="btn" >Wyloguj</a></li>
                <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
             </form>
        </li>
    </ul>
</nav>

<div class="site-overlay"></div>


<!-- /.navbar -->

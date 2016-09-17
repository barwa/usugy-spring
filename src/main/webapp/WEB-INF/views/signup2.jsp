<%--
  Created by IntelliJ IDEA.
  User: tomek
  Date: 2016-09-17
  Time: 22:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>


<html><head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
</head><body>
<div class="navbar">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand"><img height="30" alt="Brand" src="/assets/images/free_logo.jpg"></a>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav navbar-right"></ul>
            <ul class="nav pull-right">
                <li class="divider-vertical"></li>
                <li class="dropdown">
                    <a class="btn btn-default btn-lg navbar-btn navbar-right" data-toggle="dropdown" >Zaloguj się</a>
                    <div class="dropdown-menu" style="padding: 15px; padding-bottom: 0px;">
                        <form method="post" action="login" accept-charset="UTF-8">
                            <input style="margin-bottom: 15px;" type="text" placeholder="Username" id="username" name="username">
                            <input style="margin-bottom: 15px;" type="password" placeholder="Password" id="password" name="password">
                            <input style="float: left; margin-right: 10px;" type="checkbox" name="remember-me" id="remember-me" value="1">
                            <label class="string optional" for="user_remember_me"> Remember me</label>
                            <input class="btn btn-primary btn-block" type="submit" id="sign-in" value="Sign In">
                            <label style="text-align:center;margin-top:5px">or</label>

                            <input class="btn btn-primary btn-block" type="button" id="sign-in-google" value="Sign In with Google">
                            <input class="btn btn-primary btn-block" type="button" id="sign-in-twitter" value="Sign In with Facebook">
                        </form>
                    </div>
                </li>
            </ul>


        </div>


    </div>
</div>
<div class="cover">
    <div class="background-image-fixed cover-image" style="background-image : url('https://ununsplash.imgix.net/photo-1417024321782-1375735f8987?w=1024&amp;q=50&amp;fm=jpg&amp;s=7af3f809a9c1b90b7fcbd71655b661bc')"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-8 text-center">
                <h1 class="text-inverse">Wszystkie usługi&nbsp;
                    <br>w jednym miejscu.</h1>
                <p class="text-inverse">Usugy to rewolucja na rynku usług.&nbsp;</p>
                <br>
                <br>
                <a class="btn btn-lg btn-primary">Dowiedz się jak to działa</a>
            </div>
            <div class="col-md-4">
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <p class="text-inverse">Bezpłatna rejestracja&nbsp;</p>
                    </div>
                </div>

                <form:form commandName="account" class="form-horizontal">
                  <form:errors path="*" element="div"></form:errors>
                  <form:errors path="email" class="text-warning"></form:errors>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-4">
                            <form:input path="firstname" placeholder="Imie"></form:input>
                        </div>
                        <div class="col-sm-offset-1 col-sm-4">
                            <form:input path="lastname" placeholder="Nazwisko"></form:input>
                        </div>

                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">

                            <form:input path="email" placeholder="Email"></form:input>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <form:input path="password" placeholder="haslo"></form:input>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-default">Sign in</button>
                        </div>
                    </div>

                </form:form>
            </div>
        </div>
    </div>
</div>
<footer class="section section-primary">
    <div class="container">
        <div class="row">
            <div class="col-sm-6">
                <h1>Footer header</h1>
                <p>Lorem ipsum dolor sit amet, consectetur adipisici elit,
                    <br>sed eiusmod tempor incidunt ut labore et dolore magna aliqua.
                    <br>Ut enim ad minim veniam, quis nostrud</p>
            </div>
            <div class="col-sm-6">
                <p class="text-info text-right">
                    <br>
                    <br>
                </p>
                <div class="row">
                    <div class="col-md-12 hidden-lg hidden-md hidden-sm text-left">
                        <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                        <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                        <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                        <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12 hidden-xs text-right">
                        <a href="#"><i class="fa fa-3x fa-fw fa-instagram text-inverse"></i></a>
                        <a href="#"><i class="fa fa-3x fa-fw fa-twitter text-inverse"></i></a>
                        <a href="#"><i class="fa fa-3x fa-fw fa-facebook text-inverse"></i></a>
                        <a href="#"><i class="fa fa-3x fa-fw fa-github text-inverse"></i></a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
</body></html>
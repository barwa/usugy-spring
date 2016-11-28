
<%--
  Created by IntelliJ IDEA.
  User: tomek
  Date: 2016-09-18
  Time: 22:24
  To change this template use File | Settings | File Templates.
--%>

<%@include file="header.jsp" %>

<body onload='document.f.j_username.focus();'>
<header id="head" class="secondary"></header>
<!-- container -->
<div class="container">
    <ol class="breadcrumb">
        <li>
            <a href="/">Home</a>
        </li>
        <li class="active">Logowanie</li>
    </ol>
    <div class="row">
        <!-- Article main content -->
        <article class="col-xs-12 maincontent">
            <header class="page-header">
                <h1 class="page-title">Logowanie</h1>
            </header>
            <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <h3 class="thin text-center">Zaloguj się</h3>
                        <p class="text-center text-muted">Nie masz jeszcze konta?
                            <a href="/signup">Zarejestruj się</a></p>
                        <hr>
                        <c:choose>
                            <c:when test="${error.equals('loginfailed')}">

                            <div>
                                <spring:message code="login.incorrect"/> <br>
                            </div>
                            </c:when>
                            <c:when test="${error.equals('logout')}">

                                <div>
                                    <spring:message code="logout.success"/>

                                </div>
                            </c:when>
                        <%--</c:if>--%>
                        </c:choose>
                        <form action="<c:url value='j_spring_security_check' />" name="f" method="post">
                            <div class="top-margin">
                                <label><spring:message code="account.email"/>
                                    <span class="text-danger">*</span>
                                </label>
                                <input type="text" name="j_username" value="" class="form-control">
                            </div>
                            <div class="top-margin">
                                <label><spring:message code="account.password"/>
                                    <span class="text-danger">*</span>
                                </label>
                                <input type="password" name="j_password" class="form-control">
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-lg-8">
                                    <b>
                                        <a href="">Zapomniałeś hasła?</a>
                                    </b>
                                </div>
                                <div class="col-lg-4 text-right">
                                    <button class="btn btn-action" type="submit">Zaloguj się</button>
                                </div>
                            </div>
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                        </form>
                    </div>
                </div>
            </div>
        </article>
        <!-- /Article -->
    </div>
</div>
<!-- /container -->


<%@include file="footer.jsp" %>
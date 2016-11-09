<%--
  Created by IntelliJ IDEA.
  User: tomek
  Date: 2016-09-18
  Time: 22:37
  To change this template use File | Settings | File Templates.
--%>

<%@include file="header.jsp" %>


<header id="head" class="secondary"></header>
<!-- container -->
<div class="container">
    <ol class="breadcrumb">
        <li>
            <a href="/">Home</a>
        </li>
        <li class="active">Rejestracja</li>
    </ol>
    <div class="row">
        <!-- Article main content -->
        <article class="col-xs-12 maincontent">
            <header class="page-header">
                <h1 class="page-title">Rejestracja</h1>
            </header>
            <div class="col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-default">
                    <div class="panel-body">
                        <h3 class="thin text-center">Utwórz nowe konto</h3>
                        <p class="text-center text-muted">Konto umożliwia dostęp do szerszej funkcjonalności serwisu.</p>
                        <hr>
                        <form:form commandName="account">
                            <div class="top-margin">
                                <label><spring:message code="account.firstname"/></label>
                                <form:input path="firstname"  class="form-control"/>
                                <span class="text-danger"><form:errors path="firstname" element="div"></form:errors></span>
                            </div>
                            <div class="top-margin">
                                <label><spring:message code="account.lastname"/></label>
                                <form:input path="lastname" class="form-control" />
                                <span class="text-danger"><form:errors path="lastname" element="div"></form:errors></span>
                            </div>
                            <div class="top-margin">
                                <label><spring:message code="account.email"/>
                                </label>
                                <form:input path="email" class="form-control"/>
                                <span class="text-danger">
                                    <form:errors path="email" element="div"></form:errors>
                                </span>
                            </div>
                            <div class="top-margin">
                                    <label><spring:message code="account.password"/>
                                    </label>
                                    <form:input path="password"  class="form-control"/>
                                    <span class="text-danger"><form:errors path="password" element="div"></form:errors></span>
                            </div>
                            <hr>
                            <div class="row">
                                <div class="col-lg-8">
                                    <label class="checkbox">
                                        <input type="checkbox"> Oświadczam, że zapoznałem się i akceptuję <a href="page_terms.html">Regulamin</a> serwisu usugy.pl
                                        <%--Wyrażam zgodę na przetwarzanie moich danych osobowych przez Usugy--%>
                                        <%--z siedzibą we Wrocławiu, Adres w celu świadczenia przez Usugy--%>
                                        <%--usług w ramach serwisu.--%>
                                    </label>
                                </div>
                                <div class="col-lg-4 text-right">
                                    <button class="btn btn-action" type="submit"><spring:message code="account.register"/></button>
                                </div>
                            </div>
                        </form:form>
                    </div>
                </div>
            </div>
        </article>
        <!-- /Article -->
    </div>
</div>
<!-- /container -->

<%@include file="footer.jsp" %>
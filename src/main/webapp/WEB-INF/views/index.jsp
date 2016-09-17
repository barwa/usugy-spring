<%--
  Created by IntelliJ IDEA.
  User: tomek
  Date: 2016-09-03
  Time: 22:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>
    czesc <sec:authentication property="name"></sec:authentication>
</h1>

<form:form commandName="account">
    <form:errors path="*" element="div"></form:errors>
    <table>
        <tr>
                <%--<td><spring:message code="goal.text"></spring:message> </td>--%>
                <%--path odnosi sie do pola w obiekcie w tym przypadku pole to m inutes--%>
            <td><form:input path="email" placeholder="podaj email do sprawdzenia"></form:input></td>
            <td><form:errors path="email"></form:errors></td>
        </tr>
        <tr>
            <td colspan="3">
                <input type="submit" value="Sprawdz czy istnieje w bazie"/>
            </td>
        </tr>
    </table>
</form:form>

<c:url value="j_spring_security_logout" var="logoutUrl" />
<form id="logout" action="${logoutUrl}" method="post" >
    <input type="submit" value="Logout"/>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

</form>
<%--<c:if test="${pageContext.request.userPrincipal.name != null}">--%>
    <%--<a href="javascript:document.getElementById('logout').submit()">Logout</a>--%>
<%--</c:if>--%>

</body>
</html>

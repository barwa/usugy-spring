<%--
  Created by IntelliJ IDEA.
  User: tomek
  Date: 2016-09-08
  Time: 22:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Sign in page</title>
</head>
<body onload='document.f.j_username.focus();'>
<h3>Custom login page</h3>
<c:if test="$(not empty error)">
    <div>
        Your login was unsuccessful <br>
        Caused: ${sessionScope["SPRING_SECURITY_LAST_EXCEPTION"].message}
    </div>
</c:if>
<form action="<c:url value='j_spring_security_check' />" name="f" method="post">

    <table>
        <tr>
            <td>User:</td>
            <td><input type="text" name="j_username" value=""> </td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input type="password" name="j_password" > </td>
        </tr>
        <tr>
            <td colspan="2"><input type="submit" name="Submit" value="Submit"></td>
        </tr>
    </table>
    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
</body>
</html>

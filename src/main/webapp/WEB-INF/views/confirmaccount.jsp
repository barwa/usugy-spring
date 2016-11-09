<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: tomek
  Date: 2016-11-06
  Time: 23:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:choose>

    <c:when test="${validation}">
        <spring:message code="account.confirm.ok"/>
    </c:when>
    <c:otherwise>
        <spring:message code="account.confirm.bad"/>
    </c:otherwise>
</c:choose>

</body>
</html>

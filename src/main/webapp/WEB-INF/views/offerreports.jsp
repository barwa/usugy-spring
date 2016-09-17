<%--
  Created by IntelliJ IDEA.
  User: tomek
  Date: 2016-08-31
  Time: 21:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<table>
    <tr>
        <th>Tytul oferty</th><th>Opis oferty</th><th>Imie</th><th>Nazwisko</th>
    </tr>
    <c:forEach items="${offerReports}" var="offerreport">
        <tr>
            <td>${offerreport.offerTitle}</td> <td>${offerreport.offerDescription}</td><td>${offerreport.accountFirstname}</td><td>${offerreport.accountLastname}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

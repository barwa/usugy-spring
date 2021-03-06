<%--
  Created by IntelliJ IDEA.
  User: tomek
  Date: 2016-08-30
  Time: 21:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Obecnie dostepne sa nastepujace oferty</title>
    <link rel="stylesheet" href="assets/css/pushy.css">
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
</head>
<body>


<table>
    <tr>
        <th>Tytul oferty</th><th>Opis oferty</th><th>Imie</th><th>Nazwisko</th>
    </tr>
    <c:forEach items="${offers}" var="offer">
        <tr>
            <td>${offer.title}</td> <td>${offer.description}</td><td>${offer.account.firstname}</td><td>${offer.account.lastname}</td>
        </tr>
    </c:forEach>
</table>
<script src="assets/js/pushy.min.js"></script>
</body>
</html>

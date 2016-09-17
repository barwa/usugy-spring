<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%--
  Created by IntelliJ IDEA.
  User: tomek
  Date: 2016-08-30
  Time: 21:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add an offer</title>
</head>
<body>
<form:form commandName="offer">
    <form:errors path="*" element="div"></form:errors>
    <table>
        <tr>
                <%--<td><spring:message code="goal.text"></spring:message> </td>--%>
                <%--path odnosi sie do pola w obiekcie w tym przypadku pole to m inutes--%>
            <td><form:input path="title" placeholder="tytul oferty"></form:input></td>
            <td><form:input path="description" placeholder="opis oferty"></form:input></td>

            <td><form:errors path="title"></form:errors></td>
        </tr>
        <tr>
            <td colspan="3">
                <input type="submit" value="Add offer"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>

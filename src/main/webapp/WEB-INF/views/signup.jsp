<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<html>
<head>
    <title>Rejestracja</title>
</head>
<body>
<%--commandName odnosi sie do obiektu ktory bedzie mapowany na formularz--%>
<form:form commandName="account">
    <form:errors path="*" element="div"></form:errors>
    <table>
        <tr>
                <%--<td><spring:message code="goal.text"></spring:message> </td>--%>
                <%--path odnosi sie do pola w obiekcie w tym przypadku pole to m inutes--%>
            <td><form:input path="firstname" placeholder="imie"></form:input></td>
            <td><form:input path="lastname" placeholder="nazwisko"></form:input></td>
            <td><form:input path="email" placeholder="email"></form:input></td>
            <td><form:input path="password" placeholder="haslo"></form:input></td>


            <td><form:errors path="email"></form:errors></td>
        </tr>
        <tr>
            <td colspan="3">
                <input type="submit" value="Zarejestruj"/>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: vuanh
  Date: 2/2/21
  Time: 15:42
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách</title>
</head>
<body>
<h1>Danh sach khach hang</h1>
<table style="border: black solid">
    <tr>
        <td>Name</td>
        <td>Mail</td>
        <td>Add</td>
    </tr>
    <c:forEach items="${ds}" var="customer">
        <tr>
            <td><a href="/customers?action=detail&id=${customer.getId()}">${customer.getName()}</a></td>
            <td>${customer.getEmail()}</td>
            <td>${customer.getAddress()}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>

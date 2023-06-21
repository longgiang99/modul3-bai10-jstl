<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page import="model.Customer" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("giang", "ha noi", "1/1/1111", "abc.img"));
    customers.add(new Customer("giang2", "ha noi", "1/1/2222", "abc.img"));
    customers.add(new Customer("giang3", "ha noi", "1/1/3333", "abc.img"));
    customers.add(new Customer("giang4", "ha noi", "1/1/4444", "abc.img"));
// luư lại danh sách để dùng trong trang jsp
    request.setAttribute("customers", customers);
%>
<table border="1" bgcolor="olive">
    <tr bgcolor="blue">
        <th>Name</th>
        <th>Birth Date</th>
        <th>Address</th>
        <th>Image</th>
    </tr>
    <c:forEach var="customer" items="${customers}">
        <tr>
            <td>${customer.name}</td>
            <td>${customer.address}</td>
            <td>${customer.birthday}</td>
            <td><img src="${customer.img}" alt="${customer.img}"/></td>
        </tr>
    </c:forEach>
</table>


<%--<table border="1" bgcolor="#ffebcd">--%>
<%--    <tr>--%>
<%--        <th>tên</th>--%>
<%--        <th>địa chỉ</th>--%>
<%--        <th>ngày sinh</th>--%>
<%--        <th>hình ảnh</th>--%>
<%--    </tr>--%>

<%--    <c:forEach var="customer" items="${customers}">--%>
<%--    <tr>--%>
<%--        <td>${customer.name}</td>--%>
<%--        <td>${customer.address}</td>--%>
<%--        <td>${customer.birthday}</td>--%>
<%--        <td><img src="${customer.img}" alt="${customer.img}"></td>--%>
<%--    </tr>--%>
<%--    </c:forEach>--%>

<%--</table>--%>
</body>
</html>
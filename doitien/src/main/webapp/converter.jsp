<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>

</head>
<body>
<%
    float rate = Float.parseFloat(request.getParameter("rate"));
    float usd = Float.parseFloat(request.getParameter("usd"));
    float vnd = rate * usd;
%>
<h1>rate: <%= rate%></h1>
<h1>usd:<%=usd%> </h1>
<h1>vnd: <%=vnd%></h1>
</body>
</html>

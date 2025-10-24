<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: kosmo
  Date: 25. 10. 24.
  Time: 오후 12:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>유저이름 조회</title>
</head>
<body>
    <%
        Object namesObj=request.getAttribute("names");
        List<String> names=(List<String>) namesObj;
        //out.println(names); //확인 완료
    %>
    <h1>유저이름 조회</h1>
    <hr>
    <ul>
        <%for(String name: names){%>
            <li>이름은 <%=name%></li>
        <%}%>
    </ul>
</body>
</html>

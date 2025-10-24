<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %><%--
  Created by IntelliJ IDEA.
  User: kosmo
  Date: 25. 10. 24.
  Time: 오후 12:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>users</title>
</head>
<body>
    <%
        Object usersObj=request.getAttribute("users");
        //out.println(usersObj); //확인 완료
        List<Map<String, Object>> users=(List<Map<String, Object>>) usersObj;
    %>
    <h1>조회한 유저 내역</h1>
    <hr>
    <table border="1">
        <thead>
            <tr>
                <th>이름</th>
                <th>나이</th>
                <th>결혼</th>
            </tr>
        </thead>
        <tbody>
            <% for (Map<String, Object> user: users){%>
                <tr>
                    <td><%=user.get("name")%></td>
                    <td><%=user.get("age")%></td>
<%--                    <td><%=user.get("isMarried")%></td>--%>
                    <td><%=(boolean) user.get("isMarried") ? "기혼":"미혼"%></td> <!--boolean으로 형변환 필요~-->
                </tr>
            <%}%>
        </tbody>
    </table>
</body>
</html>

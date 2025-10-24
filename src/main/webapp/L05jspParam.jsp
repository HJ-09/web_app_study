<%--
  Created by IntelliJ IDEA.
  User: kosmo
  Date: 25. 10. 24.
  Time: 오전 10:43
  To change this template use File | Settings | File Templates.
--%>
<%--response.setContetnType("text/html;charset=UTF-8")--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--jsp 주석--%>
<%--out.print("html")--%>


<%!
    //class L05jspParam extends HttpServlet{
    // 전역
    // }
    private int a=10;
    private final String name="홍설";
%>
<html>
<head>
    <title>jsp 문서에서 파라미터를 받아서 처리</title>
</head>
<body>
    <h1>jsp 문서에서 파라미터를 받아서 처리</h1>
    <% //doGet(HttpServletRequest request, HttpServletResponse) response
        //Get인지 Post인지 어떻게 알아유? ⇒ doGet이거나 doPost(){doGet()}이어서 그냥 doGet으로 보면 댐.
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        //우리 눈엔 안 보이지만 PrintWriter out=response.getWriter()
        out.println("<p> id: "+id+"</p>");
        out.println("<p> name: "+name+"</p>");
    %>
</body>
</html>

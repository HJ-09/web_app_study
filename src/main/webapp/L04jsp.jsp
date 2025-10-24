
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JSP</title>
</head>
<body>
    <h1>jsp 동적페이지</h1>
<%--    <% ... %> : 자바 코드 블록 (변수 선언, 제어문 등)--%>
<%--    <%= ... %> : 표현식(Expression), 값을 HTML로 바로 출력--%>
<%--    <%@ ... %> : 지시자(Directive), 페이지 설정 (예: 인코딩, 임포트)--%>
<%--    <%! ... %> : 선언부(Declaration), 멤버 변수나 메서드 선언 시 사용--%>
    <p><% //서블릿의 doGet()함수 내부
        int a=10;
        int b=20;
        //response.getWriter().println(a+b);
    %></p>
    <p><%=a+b%></p> <!--출력위치 정하기-->

</body>
</html>

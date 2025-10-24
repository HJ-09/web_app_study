<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<p>톰캣서버 서비스 등록수업 _251023</p>

<br/>
<a href="hello-servlet">안녕하세요 웹어플리케이션입니다 :)</a>

<br>
<%--localhost:8080/L01_web_app_war(컨텍스트패스: 톰캣이 여러 웹앱을 실행할 수 있는데 구분하려고 붙임)--%>
<%--/L01servlet.do ⇒ localhost:8080/L01_servlet.do/--%>
<%--./L01servlet.do ⇒ localhost:8080/L01_web_app_war/L01_servlet.do/--%>
<a href="./L01servlet.do">서블릿 생성 ~_~</a> <!-- / 앞에 . 붙이세오!--> <!--do는 동적리소스-->
<hr>
<h2>파라미더 요청처리</h2>
<a href="./L02request.do?a=10&b=20">요청처리?a=10 & b=20 (쿼리스트링)</a> <!--물음표를 쿼리스트링이라고 함. 질의하는 문자열. 동적리소스에만 쓸 수 잇음-->
<br>
<a href="./L02request.do?a=99&b=77">요청처리?a=99 & b=77 (쿼리스트링)</a>
<br>
<a href="./L02request.do?a=88">요청처리?a=88 (쿼리스트링)</a>
<hr>
<h2>POST 요청처리(doPOST)</h2>
<p>url로 서버에 리소스를 요청할 때 요청하는 클라이언트의 정보를 포함하는 곳. 요청 본문 헤더에 쿼리스트링을 포함하고 잇슴.</p>
<p>요청헤더는 클라이언트(브라우저 또는 프로그램)가 서버에 요청을 보낼 때 함께 전달하는 추가 정보임. 즉, "요청의 부가 설명서".</p>
<form action="./L03post.do" method="POST">
    <p> <!--p>label>input[name=userId]-->
        <label>유저아이디: <input type="text" name="userId" value="smu3333"></label>
    </p>
    <p>
        <label>패스워드: <input type="password" name="userPw" value="1234"></label>
    </p>
    <p>
        <button>로그인</button>
    </p>
</form>
<hr>
<h2>JSP(JavaServer Page)란?</h2>
<p><a href="L04jsp.jsp">jsp 문서 호출</a></p>
<p><a href="L05jspParam.jsp?id=a_710&name=흥민">jsp 파라미터 전달 및 호출</a></p>
<div>
    <h3>L05jspParam.jsp를 post 방식으로 호출</h3>
    <form action="L05jspParam.jsp" method="POST"> <!--post니까 form양식필요-->
    <p>
        <label>id:
            <input name="id" value="id_test_111" type="text">
        </label>
    </p>
    <p>
        <label>name:
            <input name="name" value="홍길동" type="text">
        </label
        ></p>
    <p>
        <button>제 출</button>
        <input type="submit" value="제출1"> <!--button과 같음-->
    </p>
    </form>
</div>
<hr>
<h2>forward로 jsp를 뷰로 사용해볼게</h2>
<%
    //contextPath: 톰캣에서 여러웹앱을 구분하기 위해 만든 경로
    String contextPath=request.getContextPath();
    // "/l01_web_app_war_exploded" 경로가 생김. 그러면 밑에 a태그에 / 넣어도 됨.
%>
<p><a href="<%=contextPath%>/L06forward.do">포 워 드</a></p> <!--이렇게 쓰고 싶으면 위에 과정 필요-->
<%--<p><a href="L06forward.do">포워드</a></p>--%>

<p>
    <a href="l07users.do">유저리스트</a>
</p>

<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
</body>
</html>
<%--
  Created by IntelliJ IDEA.
  User: kosmo
  Date: 25. 10. 27.
  Time: 오전 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>로그인 양식</title>
</head>
<%--loginResult=false이면 로그인 실패 alert--%>
<%
    String loginResultStr= request.getParameter("loginResult");
    if (loginResultStr!=null){
        try {
            boolean loginResult=Boolean.parseBoolean(loginResultStr);
            if (!loginResult){
                %>
                <script>
                    alert("아이디와 비밀번호를 확인하세요.")
                </script>
            <%
            }
        } catch (Exception e){
            e.printStackTrace();
        }
    }
%>

<body>
    <h1>로그인 양식</h1>
    <h2>로그인 액션 시나리오</h2>
    <ul>
        <li>1. l09login_form.jsp 에서 id와 pw를 입력하고 로그인 버튼(전송)을 누른다.</li>
        <li>2. 로그인 양식이 l09login_action.do를 post로 호출한다.</li>
        <li>3. 로그인액션에서 입력한 id와 pw가 DB에 저장되어 있는지 확인한다.(생략)
                id=kosmo_smu/ pw=1234가 DB에 존재
        </li>
        <li>4. 해당 유저가 존재하면 로그인 성공, 존재하지 않으면 실패</li>
        <li>5. 성공이면 index.jsp로 이동, 실패이면 다시 l09login_form.jsp으로 이동</li>
    </ul>
    <hr>
    <form action="l09login_action.do" method="POST">
        <p>
            <label>
                <input type="text" name="id" value="kosmo_smu">
            </label>
        </p>
        <p>
            <label>
                <input type="password" name="pw" value="1234">
            </label>
        </p>
        <p>
            <button>LOGIN</button>
        </p>
    </form>
</body>
</html>


<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>쿠키로 하루동안 뜨지 않는 팝업 만들기</title>
</head>
<body>
    <h1>쿠키로 하루동안 뜨지 않는 팝업 만들기</h1>
    <p>'일주일간 보지 않기'로 생성한 hidePopup이 없을 때 팝업창이 뜬다.</p>
    <%
        //서버에서  html 을 렌더링 중에 발생하는 쿠키 검색
        Cookie[] cookies=request.getCookies();
        Cookie hidePopup=null; //있는지 없는지 모르니까 null
        if(cookies!=null){
            for(Cookie c: cookies){
                if(c.getName().equals("hidePopup")){
                    hidePopup=c;
                    break; //반복문 종료
                }
            }
        }
        //hidePopup null 일수도 있고 아닐수도 있다.
        if(hidePopup==null || !hidePopup.getValue().equals("1")){ //!hidePopup.getValue().equals("1") → 생략해도 괜츈
    %>
    <script>
        //팝업창: 브라우저가 다른 브라우저 창을 작게 띄우는 것을 말함
        const popup=window.open("","popup","width=400, height=400"); //window는 현재 브라우저
        popup.document.write(`
            <h2>광고입니다.</h2>
            <a href="l11add_cookie.do">일주일간 보지 않기</a>
        `)
        <%}%>
    </script>
</body>
</html>

package com.example.l01_web_app;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/l09login_action.do")
public class L09LoginAction extends HttpServlet {
    //action: 양식 데이터를 처리하는 페이지(DML Insert, Delete, Update)
    //코드405: jsp가 서블릿에 get으로 요청했는데 서블릿에 doGet이 구현되지 않음.
    //└─ 존재하지 않는 동적 리소스를 요청한 것.(같은 이름의 다른 리소스는 존재함)
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //액션페이지에서 ㅈㅔ일 먼저 해야할 것 ----> 파라미터 작성
        String id = req.getParameter("id");
        String pw = req.getParameter("pw");
        //UserDto existUser=UserService.login(id,pw); //existUser가 null이면 성공
        String existId="kosmo_smu";
        String existPw="1234";
        boolean loginResult=false; //기본값 false. 주는 이유 -> if-else문 쓰기 싫어서
        if (id.equals(existId) && pw.equals(existPw)){
            loginResult=true;
        }
        /*resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.println("<h1>로그인 액션페이지(옛날 버전_10년 전)</h1>");
        if (loginResult){
            out.println("<h2>로그인 성공</h2>");
            out.println("<a href='./index.jsp'>메인페이지로</a>");
        }else {
            out.println("<h2>로그인 실패</h2>");
            out.println("<a href='./l09login_form.jsp'>로그인 페이지로</a>");
        }*/

        //리다이렉트를 하면 해달 서블릿은 절대×5 응답하지 않음
        if (loginResult){
            resp.sendRedirect("./index.jsp?loginResult=true");
        }else {
            resp.sendRedirect("./l09login_form.jsp?loginResult=false");
        }
    }
}

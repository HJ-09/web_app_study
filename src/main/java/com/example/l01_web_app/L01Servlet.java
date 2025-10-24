package com.example.l01_web_app;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

//동적리소스의 주소를 정의하는 방법
//1. DD(web.xml: 배포설정)에서 정의
//2. 어노테이션 이용


@WebServlet(value = "/L01servlet.do")
public class L01Servlet extends HttpServlet { //서블릿 만들려면 HttpServlet을 상속받아야 함.
    //doGet(url), doPost(form)

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Hi~ I am servlet.do!^3^");
        //HttpServletResponse resp: 응답객체로 문자열 데이터를 작성하면 자동으로 응답함. //응답: 클라이언트가 요청한 데이터를 전달
        resp.setCharacterEncoding("UTF-8");
//        resp.setContentType("text/html"); //강제로 html 형식으로 바꿔줌
////        resp.setContentType("text/html;charset=utf-8"); //한글 깨지면 이렇게!
//        PrintWriter out = resp.getWriter(); //반환하는 타입
////        out.println("Hello~ I am servlet.do ^^"); //html형식이 아니라서 배경이 검은색임 뀨
//        out.println("<h1>Hello~ I am servlet.do ^^</h1>");
//        out.println("<h2>한글이 깨집니다 ㅠ_ㅠ</h2>");
//        out.println("<h2>아니네용?</h2>");
        resp.setContentType("application/json;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.println("{\"id\":\"hyedii_9\",\"pw\":7890}");


    }
}

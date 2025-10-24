package com.example.l01_web_app;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(value = "/L03post.do")
public class L03Post extends HttpServlet {

    //메서드가 post인 요청을 처리하는 곳.
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userId = req.getParameter("userId");
        String userPw = req.getParameter("userPw");
        System.out.println(userId);
        System.out.println(userPw);
        //UserService.login() ⇒ 로그인성공
        //User Id=sum3333 Pw=1234
        String msg = "로그인실패";
        if (userId.equals("smu3333")&&userPw.equals("1234")){
            msg="로그인성공";
        }       
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        resp.getWriter().write("<h1>"+msg+"</h1>");

    }
}

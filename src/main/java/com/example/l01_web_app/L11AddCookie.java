package com.example.l01_web_app;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/l11add_cookie.do")
public class L11AddCookie extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Cookie hidePopup=new Cookie("hide_popup","1");
//        hidePopup.setPath("/"); //콘텍스트패스 때문에 안댐!
        hidePopup.setPath(req.getContextPath());
        //hidePopup.setMaxAge(60*60*24*7); //일주일
        hidePopup.setMaxAge(60*2); //수업이니까 좀 짧게 줄게

        resp.addCookie(hidePopup);
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.println("일주일간 안 보기 쿠키생성 완료");



    }
}

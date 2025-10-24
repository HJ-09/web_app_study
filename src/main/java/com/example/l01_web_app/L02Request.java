package com.example.l01_web_app;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(value = "/L02request.do")
public class L02Request extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("I am request.do");

        //url: 클라이언트의 요청 (클라이언트가 요청하는 리소스의 위치)
        //url은 쿼리스트링 추가할 수 있음 ↓↓↓
        //url?param=안녕&param2=1 이런식의 파라미터 전달할 수 있음.
        //쿼리스트링: 동적리소스에게 여기 있는 파라미터로 데이터를 처리해주세요.
        //HttpServletRequest req ⇒ 클라이언트의 요청정보를 가지고 있는(처리하는) 객체
        //?a=10&b=20
        String aStr = req.getParameter("a"); //파라미터는 무조건 문자열!
        String bStr = req.getParameter("b");
        System.out.println("a: "+aStr);
        System.out.println("b: "+bStr);

        //화면에 보여주려면 response~
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html;charset=UTF-8");
        PrintWriter out = resp.getWriter();
        out.println("<html>");
        out.println("<h1>요청한 a,b 파라미터 처리</h1>");
        out.println("<p>a: "+aStr+"</p>");
        out.println("<p>b: "+bStr+"</p>");
        out.println("<p>aStr+bStr: "+(aStr+bStr)+"</p>");

        try {
            int a=Integer.parseInt(aStr);
            int b=Integer.parseInt(bStr);
            out.println("<p>a+b: "+(a+b)+"</p>");
        }catch (NumberFormatException e){
            e.printStackTrace();
//            out.println("400에러: 요청할 파라미터를 잘못 보낸 오류");
            resp.sendError(400);
        }
        out.println("</html>");




//         콘솔창에서 한글 깨질 때 구성편집-VM옵션에 적으셈 ↓↓↓
//        -Dfile.encoding=UTF-8
//        -Dconsole.encoding=UTF-8
//        -Dsun.stdout.encoding=UTF-8
//        -Dsun.stderr.encoding=UTF-8
    }
}

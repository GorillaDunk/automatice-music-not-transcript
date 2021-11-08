package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/JoinCon")
public class JoinCon extends HttpServlet {

   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

      // post 방식으로 한글 데이터 전송 시 깨지지 않도록 인코딩 설정
      request.setCharacterEncoding("euc-kr");

      // 직업, 성별, 취미 데이터를 가져온 후 변수에 저장
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");

      MemberDAO dao = new MemberDAO();
      MemberDTO member = new MemberDTO(id, pw);
      int cnt = dao.join(member);
      
         if (cnt > 0) {
            // request 영역에 email 정보를 저장
            request.setAttribute("id", id);
            request.setAttribute("pw", pw);
            // forward 방식으로 전달
            RequestDispatcher dispatcher = request.getRequestDispatcher("index2_login.jsp");
            dispatcher.forward(request, response);
            System.out.println("회원가입 성공");
         } else {
            response.sendRedirect("main.jsp");
            System.out.println("회원가입 실패");
         }

   }

}
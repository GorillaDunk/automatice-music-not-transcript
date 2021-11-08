package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.MemberDAO;
import model.MemberDTO;

@WebServlet("/LoginCon")
public class LoginCon extends HttpServlet {

   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

      // post 방식으로 한글 데이터 전송 시 깨지지 않도록 인코딩 설정
      request.setCharacterEncoding("euc-kr");

      // 직업, 성별, 취미 데이터를 가져온 후 변수에 저장
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");

      MemberDAO dao = new MemberDAO();
      MemberDTO member = dao.loginCheck(id, pw);

      // next() : 다음행으로 넘어가서 데이터 존재 여부를 판단한다.
      if (member!=null) { // member 정보가 DB에 있다면
         // 세션을 활용한 로그인 기능 구현
         // 1. 세션 객체를 생성
         // 2. 세션에 닉네임을 저장
         HttpSession session = request.getSession();
         session.setAttribute("member", member);

         response.sendRedirect("index1_main.jsp");
         // getEmail값을 email에 담아 전달한다.
      } else {

         System.out.println("로그인 실패");
         response.sendRedirect("index2_login.jsp");
      }

   }

}
package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class MemberDAO {

   private Connection conn = null;
   private PreparedStatement psmt = null;
   private ResultSet rs = null;

   public void connection() {

      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");

         // localhost : Oracle DB가 설치된 PC의 IP주소를 설정
         String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
         String user = "cgi_8_1";
         String pass = "smhrd1";

         conn = DriverManager.getConnection(url, user, pass);
      } catch (ClassNotFoundException e) {
         System.out.println("ojdbc6.jar파일 또는 driver 경로 확인 !");
         e.printStackTrace();
      } catch (SQLException e) {
         System.out.println("DB연결 실패..");
         e.printStackTrace();
      }

   }

   public void close() {
      
   
         try {
            
            if(rs!=null) {
               rs.close();
            }
            if (psmt != null) {
               psmt.close();
            }
            if (conn != null) {
               conn.close();
            }
            
         } catch (SQLException e) {
            
            e.printStackTrace();
            
         }

   }

   public MemberDTO loginCheck(String id, String pw) {

      MemberDTO member = null;

      // 데이터베이스 연동
      try {
         // DB연결기능
         connection();

         // Query 실행
         String sql = "select * from member_list where id=? and pw=?";

         psmt = conn.prepareStatement(sql);

         psmt.setString(1, id);
         psmt.setString(2, pw);

         // executeQuery : 데이터를 단순히 검색만 할때
         // executeUpdate : 데이터를 변경할 때
         rs = psmt.executeQuery();

         // next() : 다음행으로 넘어가서 데이터 존재 여부를 판단한다.
         if (rs.next()) { // select한 데이터가 있다면 True, 없다면 False값을 반환
            System.out.println("로그인 성공 !");
            String getId = rs.getString(1);
            String getPw = rs.getString(2);
            // Cookie cookie = new

            member = new MemberDTO(getId, getPw);
         }

      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         // 무조건 실행하는 구문
         // 데이터베이스 종료기능 구현
         close();

      } // end

      return member;

   }

   public int join(MemberDTO member) {

      int cnt = 0;

      // 데이터베이스 연동
      try {
         
         connection();

         // Query 실행
         String sql = "insert into member_list values (?, ?)";

         psmt = conn.prepareStatement(sql);

         psmt.setString(1, member.getId());
         psmt.setString(2, member.getPw());

         // executeQuery : 데이터를 단순히 검색만 할때
         // executeUpdate : 데이터를 변경할 때
         cnt = psmt.executeUpdate();

      } catch (SQLException e) {
         System.out.println("sql문 오류");
         e.printStackTrace();
      } finally {

         close();

      } // end

      return cnt;
   }

   /*
    * public int update(MemberDTO member) {
    * 
    * int cnt = 0;
    * 
    * try {
    * 
    * connection();
    * 
    * // Query 실행 String sql = "update web_member set pw = ?," +
    * "tel = ?, address = ? where email = ?";
    * 
    * psmt = conn.prepareStatement(sql);
    * 
    * psmt.setString(1, member.getPw()); psmt.setString(2, member.getTel());
    * psmt.setString(3, member.getAddress()); psmt.setString(4, member.getEmail());
    * 
    * // executeQuery : 데이터를 단순히 검색만 할때 // executeUpdate : 데이터를 변경할 때
    * psmt.executeUpdate();
    * 
    * cnt += 1;
    * 
    * } catch (SQLException e) { System.out.println("sql문 오류");
    * e.printStackTrace(); } finally {
    * 
    * close();
    * 
    * } // end
    * 
    * return cnt; }
    */
   
   // MemberDTO 객체에는 한 사람의 정보만 담겨있다.
   // 여러 개의 값을 담기 위해서 ArrayList 형태로 선언한다.
   public ArrayList<MemberDTO> select() {
      
      ArrayList<MemberDTO> list = new ArrayList<MemberDTO>();
      MemberDTO member = null;

      // 데이터베이스 연동
      try {
         // DB연결기능
         connection();

         // Query 실행
         String sql = "select * from member_list";

         psmt = conn.prepareStatement(sql);

         // executeQuery : 데이터를 단순히 검색만 할때
         // executeUpdate : 데이터를 변경할 때
         rs = psmt.executeQuery();

         // next() : 다음행으로 넘어가서 데이터 존재 여부를 판단한다.
         while (rs.next()) { // select한 데이터가 있다면 True, 없다면 False값을 반환
            System.out.println("로그인 성공 !");
            String getId = rs.getString(1);
            // Cookie cookie = new

            member = new MemberDTO(getId, null);
            list.add(member);
         }

      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         // 무조건 실행하는 구문
         // 데이터베이스 종료기능 구현
         close();

      } // end

      return list;
      
   }
   

   public boolean idCheck(String id) {

      boolean check = false;
      
      // 데이터베이스 연동
      try {
         // DB연결기능
         connection();

         // Query 실행
         String sql = "select * from member_list where id = ?";

         psmt = conn.prepareStatement(sql);

         psmt.setString(1, id);

         // executeQuery : 데이터를 단순히 검색만 할때
         // executeUpdate : 데이터를 변경할 때
         rs = psmt.executeQuery();

         // next() : 다음행으로 넘어가서 데이터 존재 여부를 판단한다.
         if (rs.next()) { // select한 데이터가 있다면 True, 없다면 False값을 반환
            check = true;
         }else {
            check = false;
         }

      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         // 무조건 실행하는 구문
         // 데이터베이스 종료기능 구현
         close();

      } // end

      return check;

   }
   
}
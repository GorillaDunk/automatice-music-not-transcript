package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class SongDAO {
   Connection conn = null;
   PreparedStatement psmt = null;
   ResultSet rs = null;

   public void connection() {
      // 데이터베이스를 연결하기 위한 클래스파일을 동적로딩
      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
         // localhost : Oracle DB가 설치된 PC의 ip 주소 설정
         String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
         String user = "cgi_8_1";
         String pass = "smhrd1";

         // 데이터베이스 연결
         conn = DriverManager.getConnection(url, user, pass);
      } catch (ClassNotFoundException e) {
         System.out.println("ojdbc6.jar 파일 또는 driver 경로 확인");
         // TODO Auto-generated catch block
         e.printStackTrace();
      } catch (SQLException e) {
         // TODO Auto-generated catch block
         e.printStackTrace();
      }
   }

   public void close() {

      try {
         if (rs != null) {
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

   public ArrayList<SongDTO> showsongs() {
	  
	  ArrayList<SongDTO> list = new ArrayList<SongDTO>();
      SongDTO song = null;
      connection();
      
      try {
         // DB연결기능
        

         String sql = "select * from song_list";

         psmt = conn.prepareStatement(sql);
//         psmt.setString(1, email);
         rs = psmt.executeQuery();

         while (rs.next()) {
            String getSong_name = rs.getString(1);
            String getComposer = rs.getString(2);
            String getDifficalty = rs.getString(3);
            
            song = new SongDTO(getSong_name, getComposer, getDifficalty);
            list.add(song);
         }
      } catch (SQLException e) {
         e.printStackTrace();
      } finally {
         // 무조건 실행하는 구문
         // 쿼리 종료
         close();
      }

      return list;

   }
}
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
      // �����ͺ��̽��� �����ϱ� ���� Ŭ���������� �����ε�
      try {
         Class.forName("oracle.jdbc.driver.OracleDriver");
         // localhost : Oracle DB�� ��ġ�� PC�� ip �ּ� ����
         String url = "jdbc:oracle:thin:@project-db-stu.ddns.net:1524:xe";
         String user = "cgi_8_1";
         String pass = "smhrd1";

         // �����ͺ��̽� ����
         conn = DriverManager.getConnection(url, user, pass);
      } catch (ClassNotFoundException e) {
         System.out.println("ojdbc6.jar ���� �Ǵ� driver ��� Ȯ��");
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
         // DB������
        

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
         // ������ �����ϴ� ����
         // ���� ����
         close();
      }

      return list;

   }
}
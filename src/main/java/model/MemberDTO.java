package model;

// DTO 클래스 정의
// 1. 테이블 컬럼 기준으로 필드 변수 선언
// 2. 사용자 정의 생성자 구현
// 3. Getter, Setter 구현

public class MemberDTO {

   private String id;
   private String pw;
   
   public MemberDTO(String id, String pw) {
      this.id = id;
      this.pw = pw;
   }
   
   
   public String getId() {
      return id;
   }
   public void setId(String id) {
      this.id = id;
   }
   public String getPw() {
      return pw;
   }
   public void setPw(String pw) {
      this.pw = pw;
   }

}
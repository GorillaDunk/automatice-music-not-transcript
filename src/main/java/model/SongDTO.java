package model;

public class SongDTO {
   private String song_name;
   private String composer;
   private String difficulty;
   
   public SongDTO(String song_name, String composer, String difficulty) {
      super();
      this.song_name = song_name;
      this.composer = composer;
      this.difficulty = difficulty;
   }

   public String getSong_name() {
      return song_name;
   }

   public void setSong_name(String song_name) {
      this.song_name = song_name;
   }

   public String getComposer() {
      return composer;
   }

   public void setComposer(String composer) {
      this.composer = composer;
   }

   public String getDifficulty() {
      return difficulty;
   }

   public void setDifficulty(String difficulty) {
      this.difficulty = difficulty;
   }
   
   
}
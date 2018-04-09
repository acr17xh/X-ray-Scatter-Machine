/*    */ package com.maxi3.pojo;
/*    */ 
/*    */ import java.io.Serializable;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class NotesFile
/*    */   implements Serializable
/*    */ {
/*    */   private int notesfileid;
/*    */   private byte[] notesfile;
/*    */   private int notesversion;
/*    */   private String filename;
/*    */   
/*    */   public int getNotesfileid()
/*    */   {
/* 19 */     return this.notesfileid;
/*    */   }
/*    */   
/*    */   public void setNotesfileid(int notesfileid) {
/* 23 */     this.notesfileid = notesfileid;
/*    */   }
/*    */   
/*    */   public byte[] getNotesfile() {
/* 27 */     return this.notesfile;
/*    */   }
/*    */   
/*    */   public void setNotesfile(byte[] notesfile) {
/* 31 */     this.notesfile = notesfile;
/*    */   }
/*    */   
/*    */   public int getNotesversion() {
/* 35 */     return this.notesversion;
/*    */   }
/*    */   
/*    */   public void setNotesversion(int notesversion) {
/* 39 */     this.notesversion = notesversion;
/*    */   }
/*    */   
/*    */   public String getFilename() {
/* 43 */     return this.filename;
/*    */   }
/*    */   
/*    */   public void setFilename(String filename) {
/* 47 */     this.filename = filename;
/*    */   }
/*    */ }


/* Location:              X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\pojo\NotesFile.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */
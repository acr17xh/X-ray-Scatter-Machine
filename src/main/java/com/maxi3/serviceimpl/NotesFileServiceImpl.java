/*    */ package com.maxi3.serviceimpl;
/*    */ 
/*    */ import com.maxi3.dao.NotesFileDao;
/*    */ import com.maxi3.pojo.NotesFile;
/*    */ import com.maxi3.service.NotesFileService;
/*    */ import java.util.List;
/*    */ import javax.annotation.Resource;
/*    */ import org.springframework.stereotype.Service;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ @Service("notesfileservice")
/*    */ public class NotesFileServiceImpl
/*    */   implements NotesFileService
/*    */ {
/*    */   @Resource
/*    */   private NotesFileDao notesfiledao;
/*    */   
/*    */   public void addNotesFile(NotesFile notesfile)
/*    */   {
/* 26 */     this.notesfiledao.insertNotesFile(notesfile);
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */ 
/*    */   public NotesFile selectNotesFilebyId(int notesfileid)
/*    */   {
/* 34 */     return this.notesfiledao.selectNotesFilebyId(notesfileid);
/*    */   }
/*    */   
/*    */ 
/*    */   public void deleteNotesFilebyId(int notesfileid)
/*    */   {
/* 40 */     this.notesfiledao.deleteNotesFile(notesfileid);
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   public void updateNotesFile(int notesfileid, NotesFile notesfile, int notesversion)
/*    */   {
/* 47 */     this.notesfiledao.updateNotesFile(notesfileid, notesfile, notesversion);
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   public List<NotesFile> selectAllNotesFile()
/*    */   {
/* 54 */     return this.notesfiledao.selectAllNotesFile();
/*    */   }
/*    */ }


/* Location:              X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\serviceimpl\NotesFileServiceImpl.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */
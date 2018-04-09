/*    */ package com.maxi3.serviceimpl;
/*    */ 
/*    */ import com.maxi3.dao.TQuizDao;
/*    */ import com.maxi3.pojo.TQuiz;
/*    */ import com.maxi3.service.TQuizService;
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
/*    */ @Service("tquizservice")
/*    */ public class TQuizServiceImpl
/*    */   implements TQuizService
/*    */ {
/*    */   @Resource
/*    */   private TQuizDao tquizdao;
/*    */   
/*    */   public int deleteByPrimaryKey(Integer quizId)
/*    */   {
/* 26 */     return this.tquizdao.deleteByPrimaryKey(quizId);
/*    */   }
/*    */   
/*    */ 
/*    */   public int insert(TQuiz record)
/*    */   {
/* 32 */     return this.tquizdao.insert(record);
/*    */   }
/*    */   
/*    */ 
/*    */   public TQuiz selectByPrimaryKey(Integer quizId)
/*    */   {
/* 38 */     return this.tquizdao.selectByPrimaryKey(quizId);
/*    */   }
/*    */   
/*    */ 
/*    */   public List<TQuiz> selectAll()
/*    */   {
/* 44 */     return this.tquizdao.selectAll();
/*    */   }
/*    */   
/*    */ 
/*    */   public int updateByPrimaryKey(TQuiz record)
/*    */   {
/* 50 */     return this.tquizdao.updateByPrimaryKey(record);
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   public int deleteByquizDate(String quizDate)
/*    */   {
/* 57 */     return this.tquizdao.deleteByquizDate(quizDate);
/*    */   }
/*    */   
/*    */ 
/*    */   public List<TQuiz> selecteByquizDate(String quizDate)
/*    */   {
/* 63 */     return this.tquizdao.selecteByquizDate(quizDate);
/*    */   }
/*    */ }


/* Location:              X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\serviceimpl\TQuizServiceImpl.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */
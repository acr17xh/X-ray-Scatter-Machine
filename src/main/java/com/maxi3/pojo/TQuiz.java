/*     */ package com.maxi3.pojo;
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ public class TQuiz
/*     */ {
/*     */   private Long quizId;
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   private String quizName;
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   private String quizDate;
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public Long getQuizId()
/*     */   {
/*  40 */     return this.quizId;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public void setQuizId(Long quizId)
/*     */   {
/*  52 */     this.quizId = quizId;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public String getQuizName()
/*     */   {
/*  64 */     return this.quizName;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public void setQuizName(String quizName)
/*     */   {
/*  76 */     this.quizName = (quizName == null ? null : quizName.trim());
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public String getQuizDate()
/*     */   {
/*  88 */     return this.quizDate;
/*     */   }
/*     */   
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */ 
/*     */   public void setQuizDate(String quizDate)
/*     */   {
/* 100 */     this.quizDate = (quizDate == null ? null : quizDate.trim());
/*     */   }
/*     */ }


/* Location:              X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\pojo\TQuiz.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */
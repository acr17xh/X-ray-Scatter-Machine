/*    */ package com.maxi3.pojo;
/*    */ 
/*    */ import javax.validation.constraints.Email;
/*    */ import javax.validation.constraints.NotBlank;
/*    */ 
/*    */ 
/*    */ 
/*    */ public class User
/*    */ {
/*    */   private int userid;
/*    */   @NotBlank
/*    */   private String username;
/*    */   @NotBlank
/*    */   private String userpassword;
/*    */   @Email
/*    */   private String useremail;
/*    */   
/*    */   public int getUserid()
/*    */   {
/* 20 */     return this.userid;
/*    */   }
/*    */   
/*    */   public void setUserid(int userid) {
/* 24 */     this.userid = userid;
/*    */   }
/*    */   
/*    */   public String getUsername() {
/* 28 */     return this.username;
/*    */   }
/*    */   
/*    */   public void setUsername(String username) {
/* 32 */     this.username = username;
/*    */   }
/*    */   
/*    */   public String getUserpassword() {
/* 36 */     return this.userpassword;
/*    */   }
/*    */   
/*    */   public void setUserpassword(String userpassword) {
/* 40 */     this.userpassword = userpassword;
/*    */   }
/*    */   
/*    */   public String getUseremail() {
/* 44 */     return this.useremail;
/*    */   }
/*    */   
/*    */   public void setUseremail(String useremail) {
/* 48 */     this.useremail = useremail;
/*    */   }
/*    */ }


/* Location:              X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\pojo\User.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */
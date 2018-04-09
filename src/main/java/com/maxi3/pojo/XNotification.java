/*    */ package com.maxi3.pojo;
/*    */ 
/*    */ import java.io.Serializable;
/*    */ import javax.validation.constraints.Pattern;
/*    */ import org.hibernate.validator.constraints.Length;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ public class XNotification
/*    */   implements Serializable
/*    */ {
/*    */   private static final long serialVersionUID = 1L;
/*    */   private int notificationid;
/*    */   @Pattern(regexp="(\\d){4}-(\\d){2}-(\\d){2}")
/*    */   private String notificationdate;
/*    */   @Length(min=1, max=140)
/*    */   private String notification;
/*    */   
/*    */   public int getNotificationid()
/*    */   {
/* 29 */     return this.notificationid;
/*    */   }
/*    */   
/*    */   public void setNotificationid(int notificationid) {
/* 33 */     this.notificationid = notificationid;
/*    */   }
/*    */   
/*    */   public String getNotificationdate() {
/* 37 */     return this.notificationdate;
/*    */   }
/*    */   
/*    */   public void setNotificationdate(String notificationdate) {
/* 41 */     this.notificationdate = notificationdate;
/*    */   }
/*    */   
/*    */   public String getNotification() {
/* 45 */     return this.notification;
/*    */   }
/*    */   
/*    */   public void setNotification(String notification) {
/* 49 */     this.notification = notification;
/*    */   }
/*    */ }


/* Location:              X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\pojo\XNotification.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */
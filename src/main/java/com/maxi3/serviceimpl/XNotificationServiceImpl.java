/*    */ package com.maxi3.serviceimpl;
/*    */ 
/*    */ import com.maxi3.dao.XNotificationDao;
/*    */ import com.maxi3.pojo.XNotification;
/*    */ import com.maxi3.service.XNotificationService;
/*    */ import java.util.List;
/*    */ import javax.annotation.Resource;
/*    */ import org.springframework.stereotype.Service;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ @Service("xnotificationservice")
/*    */ public class XNotificationServiceImpl
/*    */   implements XNotificationService
/*    */ {
/*    */   @Resource
/*    */   private XNotificationDao xnotificationdao;
/*    */   
/*    */   public XNotification getXNotificationrbyId(int notificationid)
/*    */   {
/* 22 */     return this.xnotificationdao.selectXNotificationrbyId(notificationid);
/*    */   }
/*    */   
/*    */ 
/*    */   public XNotification getXNotificationbyDate(String notificationdate)
/*    */   {
/* 28 */     return this.xnotificationdao.selectXNotificationbyDate(notificationdate);
/*    */   }
/*    */   
/*    */ 
/*    */   public List<XNotification> getallXNotifications()
/*    */   {
/* 34 */     return this.xnotificationdao.selectallXNotifications();
/*    */   }
/*    */   
/*    */ 
/*    */   public void insertXNotification(XNotification xnotification)
/*    */   {
/* 40 */     this.xnotificationdao.insertXNotification(xnotification);
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   public void deleteXNotificationbyId(int notificationid)
/*    */   {
/* 47 */     this.xnotificationdao.deleteXNotificationbyId(notificationid);
/*    */   }
/*    */ }


/* Location:              X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\serviceimpl\XNotificationServiceImpl.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */
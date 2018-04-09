/*    */ package com.maxi3.serviceimpl;
/*    */ 
/*    */ import com.maxi3.dao.UserDao;
/*    */ import com.maxi3.pojo.User;
/*    */ import com.maxi3.service.UserService;
/*    */ import java.util.List;
/*    */ import javax.annotation.Resource;
/*    */ import org.springframework.stereotype.Service;
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ 
/*    */ @Service("userservice")
/*    */ public class UserServiceImpl
/*    */   implements UserService
/*    */ {
/*    */   @Resource
/*    */   private UserDao userdao;
/*    */   
/*    */   public User getUserbyId(int userid)
/*    */   {
/* 23 */     return this.userdao.selectUserbyId(userid);
/*    */   }
/*    */   
/*    */ 
/*    */   public List<User> getallUsers()
/*    */   {
/* 29 */     return this.userdao.selectallUsers();
/*    */   }
/*    */   
/*    */ 
/*    */   public User getUserbyName(String username)
/*    */   {
/* 35 */     return this.userdao.selectUserbyName(username);
/*    */   }
/*    */   
/*    */ 
/*    */   public void deleteUserbyId(int userid)
/*    */   {
/* 41 */     this.userdao.deleteUserbyId(userid);
/*    */   }
/*    */   
/*    */ 
/*    */ 
/*    */   public void addUser(User user)
/*    */   {
/* 48 */     this.userdao.insertUser(user);
/*    */   }
/*    */ }


/* Location:              X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\serviceimpl\UserServiceImpl.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */
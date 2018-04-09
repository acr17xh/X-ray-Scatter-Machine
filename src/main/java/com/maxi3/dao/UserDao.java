package com.maxi3.dao;

import com.maxi3.pojo.User;
import java.util.List;

public abstract interface UserDao
{
  public abstract User selectUserbyId(int paramInt);
  
  public abstract User selectUserbyName(String paramString);
  
  public abstract List<User> selectallUsers();
  
  public abstract void insertUser(User paramUser);
  
  public abstract void deleteUserbyId(int paramInt);
}


/* Location:              X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\dao\UserDao.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */
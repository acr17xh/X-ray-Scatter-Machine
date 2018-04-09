package com.maxi3.service;

import com.maxi3.pojo.User;
import java.util.List;

public abstract interface UserService
{
  public abstract User getUserbyId(int paramInt);
  
  public abstract User getUserbyName(String paramString);
  
  public abstract void deleteUserbyId(int paramInt);
  
  public abstract List<User> getallUsers();
  
  public abstract void addUser(User paramUser);
}


/* Location:              X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\service\UserService.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */
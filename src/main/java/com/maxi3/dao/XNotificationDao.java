package com.maxi3.dao;

import com.maxi3.pojo.XNotification;
import java.util.List;

public abstract interface XNotificationDao
{
  public abstract XNotification selectXNotificationrbyId(int paramInt);
  
  public abstract XNotification selectXNotificationbyDate(String paramString);
  
  public abstract List<XNotification> selectallXNotifications();
  
  public abstract void insertXNotification(XNotification paramXNotification);
  
  public abstract void deleteXNotificationbyId(int paramInt);
}


/* Location:              X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\dao\XNotificationDao.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */
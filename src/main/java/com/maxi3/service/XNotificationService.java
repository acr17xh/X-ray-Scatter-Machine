package com.maxi3.service;

import com.maxi3.pojo.XNotification;
import java.util.List;

public abstract interface XNotificationService
{
  public abstract XNotification getXNotificationrbyId(int paramInt);
  
  public abstract XNotification getXNotificationbyDate(String paramString);
  
  public abstract List<XNotification> getallXNotifications();
  
  public abstract void insertXNotification(XNotification paramXNotification);
  
  public abstract void deleteXNotificationbyId(int paramInt);
}


/* Location:              X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\service\XNotificationService.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */
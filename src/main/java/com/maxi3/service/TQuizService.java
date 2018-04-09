package com.maxi3.service;

import com.maxi3.pojo.TQuiz;
import java.util.List;

public abstract interface TQuizService
{
  public abstract int deleteByPrimaryKey(Integer paramInteger);
  
  public abstract int insert(TQuiz paramTQuiz);
  
  public abstract TQuiz selectByPrimaryKey(Integer paramInteger);
  
  public abstract List<TQuiz> selectAll();
  
  public abstract int updateByPrimaryKey(TQuiz paramTQuiz);
  
  public abstract int deleteByquizDate(String paramString);
  
  public abstract List<TQuiz> selecteByquizDate(String paramString);
}


/* Location:              X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\service\TQuizService.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */
package com.maxi3.dao;

import com.maxi3.pojo.NotesFile;
import java.util.List;

public abstract interface NotesFileDao
{
  public abstract void insertNotesFile(NotesFile paramNotesFile);
  
  public abstract NotesFile selectNotesFilebyId(int paramInt);
  
  public abstract List<NotesFile> selectAllNotesFile();
  
  public abstract void deleteNotesFile(int paramInt);
  
  public abstract void updateNotesFile(int paramInt1, NotesFile paramNotesFile, int paramInt2);
}


/* Location:              X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\dao\NotesFileDao.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */
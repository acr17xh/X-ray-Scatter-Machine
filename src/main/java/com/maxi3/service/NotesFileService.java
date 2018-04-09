package com.maxi3.service;

import com.maxi3.pojo.NotesFile;
import java.util.List;

public abstract interface NotesFileService
{
  public abstract void addNotesFile(NotesFile paramNotesFile);
  
  public abstract NotesFile selectNotesFilebyId(int paramInt);
  
  public abstract List<NotesFile> selectAllNotesFile();
  
  public abstract void deleteNotesFilebyId(int paramInt);
  
  public abstract void updateNotesFile(int paramInt1, NotesFile paramNotesFile, int paramInt2);
}


/* Location:              X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\service\NotesFileService.class
 * Java compiler version: 8 (52.0)
 * JD-Core Version:       0.7.1
 */
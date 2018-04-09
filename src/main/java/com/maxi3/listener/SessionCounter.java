/*    */ package com.maxi3.listener;

/*    */ import java.util.ArrayList;
import java.util.HashMap;
/*    */ import java.util.List;

/*    */ import javax.servlet.http.HttpSession;
/*    */ import javax.servlet.http.HttpSessionEvent;
/*    */ import javax.servlet.http.HttpSessionListener;

/*    */ public class SessionCounter/*    */ implements HttpSessionListener
/*    */ {
	private HashMap<String, String> hashMap = new HashMap<>();
	// /* 19 */ private List<String> sessions = new ArrayList<String>();
	/*    */ public static final String COUNTER = "session-counter";

	/*    */
	/*    */ public void sessionCreated(HttpSessionEvent event) {
		/* 23 */ // System.out.println("SessionCounter.sessionCreated");
		/* 24 */ HttpSession session = event.getSession();
		hashMap.put(session.getId(), session.getId());
		// /* 25 */ this.sessions.add(session.getId());
		/* 26 */ session.setAttribute("session-counter", this);
		/*    */ }

	/*    */
	/*    */ public void sessionDestroyed(HttpSessionEvent event) {
		/* 30 */ // System.out.println("SessionCounter.sessionDestroyed");
		/* 31 */ HttpSession session = event.getSession();
		/* 32 */ hashMap.remove(session.getId());
		/* 33 */ session.setAttribute("session-counter", this);
		/*    */ }

	/*    */
	/*    */ public int getActiveSessionNumber() {
		
		/* 37 */ return hashMap.size();
		/*    */ }
	/*    */

	public HashMap<String, String> getHashMap() {
		return hashMap;
	}

	public void setHashMap(HashMap<String, String> hashMap) {
		this.hashMap = hashMap;
	}

}

/*
 * Location: X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\listener\
 * SessionCounter.class Java compiler version: 8 (52.0) JD-Core Version: 0.7.1
 */
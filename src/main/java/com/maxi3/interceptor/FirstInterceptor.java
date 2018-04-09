/*    */ package com.maxi3.interceptor;

/*    */
/*    */ import com.maxi3.pojo.User;
/*    */ import javax.servlet.RequestDispatcher;
/*    */ import javax.servlet.http.HttpServletRequest;
/*    */ import javax.servlet.http.HttpServletResponse;
/*    */ import javax.servlet.http.HttpSession;
/*    */ import org.springframework.web.servlet.HandlerInterceptor;
/*    */ import org.springframework.web.servlet.ModelAndView;

/*    */
/*    */ public class FirstInterceptor/*    */ implements HandlerInterceptor
/*    */ {
	/* 14 */ private static final String[] IGNORE_URL = { "/virtualinstrumentoutputimage", "/step2submit",
			"/step1tostep2", "/tovirtualinstrument", "/step1submit", "/home", "/quiz", "/quizsubmit", "/ajaxjsontest",
			"/lecturenotes", "/displaynotifs", "/user/userlogin", "/downloadfiles", "/user/returnhome", "/tovirtuallab",
			"/tovirtualtour", "/simulation", "/simulation/showimgs", "/viewoutcome", "/simulation/showoutcomeimgs" };

	/*    */ public void afterCompletion(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, Exception arg3)
			/*    */ throws Exception
	/*    */ {
	}

	/*    */ public void postHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2, ModelAndView arg3)
			/*    */ throws Exception
	/*    */ {
	}

	/*    */ public boolean preHandle(HttpServletRequest arg0, HttpServletResponse arg1, Object arg2)
			/*    */ throws Exception
	/*    */ {
		/* 38 */ boolean flag = false;
		/*    */
		/* 40 */ String path = arg0.getServletPath();
		/* 41 */ for (String s : IGNORE_URL) {
			/* 42 */ if (path.contains(s)) {
				/* 43 */ flag = true;
				/* 44 */ break;
				/*    */ }
			/*    */ }
		/*    */
		/*    */
		/* 49 */ if (!flag)
		/*    */ {
			/* 51 */ User newuser = (User) arg0.getSession().getAttribute("newuser");
			/* 52 */ if (newuser == null) {
				/* 53 */ arg0.setAttribute("notlogin", "Please do not directly enter URL!");
				/* 54 */ arg0.getRequestDispatcher("/home").forward(arg0, arg1);
				/*    */ }
			/*    */ else
			/*    */ {
				/* 58 */ flag = true;
				/*    */ }
			/*    */ }
		/*    */
		/*    */
		/* 63 */ return flag;
		/*    */ }
	/*    */ }

/*
 * Location: X:\XRayTeachingSheffieldV5\WEB-INF\classes\!\com\maxi3\interceptor\
 * FirstInterceptor.class Java compiler version: 8 (52.0) JD-Core Version: 0.7.1
 */
///**
// * 
// */
//package com.maxi3.utils;
//
//import java.text.SimpleDateFormat;
//import java.util.Date;
//import java.util.HashMap;
//import java.util.LinkedHashMap;
//import java.util.Map;
//
//import org.springframework.stereotype.Component;
//
//import com.maxi3.pojo.OptionsRadios;
//import com.maxi3.pojo.TQuiz;
//import com.maxi3.service.TQuizService;
//
///**
// * @author Redfiska
// *
// */
//
//@Component
//public class QuizUtils {
//
//	/**
//	 * 
//	 */
//	public QuizUtils() {
//		// TODO Auto-generated constructor stub
//	}
//
//	public Map<String, String> handleAjaxQuiz(OptionsRadios opr, TQuizService tquizservice) {
//		Map<String, String> map = new HashMap();
//		LinkedHashMap<Integer, String> linkedmap = new LinkedHashMap();
//		LinkedHashMap<Integer, String> linkedmap2 = new LinkedHashMap();
//		String quizname = opr.getQuizName();
//		TQuiz tquiz = new TQuiz();
//		tquiz.setQuizName(quizname);
//		Date today = new Date();
//		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
//		String today2 = sdf.format(today);
//		tquiz.setQuizDate(today2);
//		tquizservice.insert(tquiz);
//		linkedmap.put(Integer.valueOf(1), opr.getOptionsRadios1());
//		linkedmap.put(Integer.valueOf(2), opr.getOptionsRadios2());
//		linkedmap.put(Integer.valueOf(3), opr.getOptionsRadios3());
//		linkedmap.put(Integer.valueOf(4), opr.getOptionsRadios4());
//		linkedmap.put(Integer.valueOf(5), opr.getOptionsRadios5());
//		map.put("radio1", opr.getOptionsRadios1());
//		map.put("radio2", opr.getOptionsRadios2());
//		map.put("radio3", opr.getOptionsRadios3());
//		map.put("radio4", opr.getOptionsRadios4());
//		map.put("radio5", opr.getOptionsRadios5());
//		map.put("radio6", opr.getOptionsRadios6());
//		map.put("radio7", opr.getOptionsRadios7());
//		map.put("radio8", opr.getOptionsRadios8());
//		map.put("radio9", opr.getOptionsRadios9());
//		map.put("radio10", opr.getOptionsRadios10());
//		map.put("radio11", opr.getOptionsRadios11());
//		map.put("finish", "Please check answers. ");
//		linkedmap2.put(Integer.valueOf(1), "A");
//		linkedmap2.put(Integer.valueOf(2), "A");
//		linkedmap2.put(Integer.valueOf(3), "B");
//		linkedmap2.put(Integer.valueOf(4), "B");
//		linkedmap2.put(Integer.valueOf(5), "B");
//		linkedmap2.put(Integer.valueOf(6), "B");
//		linkedmap2.put(Integer.valueOf(7), "A");
//		linkedmap2.put(Integer.valueOf(8), "A");
//		linkedmap2.put(Integer.valueOf(9), "A");
//		linkedmap2.put(Integer.valueOf(10), "A");
//		linkedmap2.put(Integer.valueOf(11), "A");
//		String a = "You have wrong answers. Correct answers are A, A, B, B, B, B, A or B, A or B, A or B, A, A or B. ";
//		String b = "All correct!";
//		for (int i = 0; i < linkedmap.size(); i++) {
//			if ((i == 7 || i == 8 || i == 9 || i == 11)
//					&& ((linkedmap.get(i).equals("B")) || (linkedmap.get(i).equals("A")))) {
//				continue;
//			}
//			if (!((String) linkedmap.get(Integer.valueOf(i + 1))).equals(linkedmap2.get(Integer.valueOf(i + 1)))) {
//				map.put("quizwrong", a);
//				return map;
//			}
//		}
//		map.put("quizcorrect", b);
//		return map;
//	}
//
//}

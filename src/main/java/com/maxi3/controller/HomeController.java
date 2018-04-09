package com.maxi3.controller;

import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.maxi3.pojo.NotesFile;
import com.maxi3.pojo.OptionsRadios;
import com.maxi3.pojo.TQuiz;
import com.maxi3.pojo.TSample;
import com.maxi3.pojo.XNotification;
import com.maxi3.service.NotesFileService;
import com.maxi3.service.TQuizService;
import com.maxi3.service.UserService;
import com.maxi3.service.XNotificationService;

@Controller
public class HomeController {
	@Resource
	private UserService userservice;
	@Resource
	private XNotificationService xnotificationservice;
	@Resource
	private NotesFileService notesfileservice;
	@Resource
	private TQuizService tquizservice;

	// @Autowired
	// private QuizUtils quizUtils;

	/**
	 * Controller for going to virtual lab module
	 * 
	 * @param request
	 * @param httpsession
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/tovirtuallab" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String toVirtuallab(HttpServletRequest request, HttpSession httpsession, Model model) {
		return "virtuallab";
	}

	@RequestMapping(value = { "/quizsubmit" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String quizSubmit(Model model, HttpServletResponse response,
			@RequestParam(required = true, defaultValue = "1") String optionsRadios1,
			@RequestParam(required = true, defaultValue = "1") String optionsRadios2,
			@RequestParam(required = true, defaultValue = "1") String optionsRadios3,
			@RequestParam(required = true, defaultValue = "1") String optionsRadios4,
			@RequestParam(required = true, defaultValue = "1") String optionsRadios5)/*     */ throws IOException {
		LinkedHashMap<Integer, String> linkedmap = new LinkedHashMap();
		LinkedHashMap<Integer, String> linkedmap2 = new LinkedHashMap();
		linkedmap.put(Integer.valueOf(1), optionsRadios1);
		linkedmap.put(Integer.valueOf(2), optionsRadios2);
		linkedmap.put(Integer.valueOf(3), optionsRadios3);
		linkedmap.put(Integer.valueOf(4), optionsRadios4);
		linkedmap.put(Integer.valueOf(5), optionsRadios5);
		linkedmap2.put(Integer.valueOf(1), "option1");
		linkedmap2.put(Integer.valueOf(2), "option2");
		linkedmap2.put(Integer.valueOf(3), "option3");
		linkedmap2.put(Integer.valueOf(4), "option2");
		linkedmap2.put(Integer.valueOf(5), "option1");
		String a = "You have wrong answers. Correct answers are A, B, C, B, A. ";
		String b = "All correct!";
		for (int i = 0; i < 5; i++) {
			if (!((String) linkedmap.get(Integer.valueOf(i + 1))).equals(linkedmap2.get(Integer.valueOf(i + 1)))) {
				model.addAttribute("quizwrong", a);
				return "quiz";
			}
		}
		model.addAttribute("quizcorrect", b);
		return "quiz";
	}

	/**
	 * Controller for submitting quiz, using ajax
	 * 
	 * @param opr
	 * @param model
	 * @param response
	 * @param request
	 * @return
	 */
	@RequestMapping({ "/quizsubmitajax" })
	@ResponseBody
	public Map<String, String> quizSubmitAjax(@ModelAttribute OptionsRadios opr, Model model,
			HttpServletResponse response, HttpServletRequest request) {
		Map<String, String> map = new HashMap();
		LinkedHashMap<Integer, String> linkedmap = new LinkedHashMap();
		LinkedHashMap<Integer, String> linkedmap2 = new LinkedHashMap();
		String quizname = opr.getQuizName();
		TQuiz tquiz = new TQuiz();
		tquiz.setQuizName(quizname);
		Date today = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		String today2 = sdf.format(today);
		tquiz.setQuizDate(today2);
		tquizservice.insert(tquiz);
		linkedmap.put(Integer.valueOf(1), opr.getOptionsRadios1());
		linkedmap.put(Integer.valueOf(2), opr.getOptionsRadios2());
		linkedmap.put(Integer.valueOf(3), opr.getOptionsRadios3());
		linkedmap.put(Integer.valueOf(4), opr.getOptionsRadios4());
		linkedmap.put(Integer.valueOf(5), opr.getOptionsRadios5());
		map.put("radio1", opr.getOptionsRadios1());
		map.put("radio2", opr.getOptionsRadios2());
		map.put("radio3", opr.getOptionsRadios3());
		map.put("radio4", opr.getOptionsRadios4());
		map.put("radio5", opr.getOptionsRadios5());
		map.put("radio6", opr.getOptionsRadios6());
		map.put("radio7", opr.getOptionsRadios7());
		map.put("radio8", opr.getOptionsRadios8());
		map.put("radio9", opr.getOptionsRadios9());
		map.put("radio10", opr.getOptionsRadios10());
		map.put("radio11", opr.getOptionsRadios11());
		map.put("finish", "Please check answers. ");
		linkedmap2.put(Integer.valueOf(1), "A");
		linkedmap2.put(Integer.valueOf(2), "A");
		linkedmap2.put(Integer.valueOf(3), "B");
		linkedmap2.put(Integer.valueOf(4), "B");
		linkedmap2.put(Integer.valueOf(5), "B");
		linkedmap2.put(Integer.valueOf(6), "B");
		linkedmap2.put(Integer.valueOf(7), "A");
		linkedmap2.put(Integer.valueOf(8), "A");
		linkedmap2.put(Integer.valueOf(9), "A");
		linkedmap2.put(Integer.valueOf(10), "A");
		linkedmap2.put(Integer.valueOf(11), "A");
		String a = "You have wrong answers. Correct answers are A, A, B, B, B, B, A or B, A or B, A or B, A, A or B. ";
		String b = "All correct!";
		for (int i = 0; i < linkedmap.size(); i++) {
			if ((i == 7 || i == 8 || i == 9 || i == 11)
					&& ((linkedmap.get(i).equals("B")) || (linkedmap.get(i).equals("A")))) {
				continue;
			}
			if (!((String) linkedmap.get(Integer.valueOf(i + 1))).equals(linkedmap2.get(Integer.valueOf(i + 1)))) {
				map.put("quizwrong", a);
				return map;
			}
		}
		map.put("quizcorrect", b);
		return map;
	}

	/**
	 * Controller for returning home page
	 * 
	 * @param request
	 * @param model
	 * @param httpsession
	 * @return
	 */
	@RequestMapping(value = { "/home" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String returnHome(HttpServletRequest request, Model model, HttpSession httpsession) {
		String REMOVE_FLAG = (String) httpsession.getAttribute("removenewuser");
		if ((REMOVE_FLAG != null) && (REMOVE_FLAG.equals("1"))) {
			httpsession.removeAttribute("newuser");
			// httpsession.removeAttribute("removenewuser");
			model.addAttribute("loggedout", true);
			model.addAttribute("logoutmessage", "You have logged out.");
			return "main2";
		} else {
			if (httpsession.getAttribute("newuser") == null) {
				model.addAttribute("loggedout", true);
			} else {
				model.addAttribute("remembered", true);
			}
			return "main2";
		}
	}

	@RequestMapping(value = { "/quiz" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String quiz(HttpServletRequest request, Model model) {
		return "quiz";
	}

	/**
	 * Controller for going to lecture notes module
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/lecturenotes" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String lectureNotes(HttpServletRequest request, Model model) {
		List<NotesFile> filelist = this.notesfileservice.selectAllNotesFile();
		ArrayList<String> arrlist = new ArrayList();
		ArrayList<Integer> idlist = new ArrayList();
		int i = 0;
		while (i < filelist.size()) {
			arrlist.add(((NotesFile) filelist.get(i)).getFilename());
			idlist.add(Integer.valueOf(((NotesFile) filelist.get(i)).getNotesfileid()));
			i++;
		}
		model.addAttribute("downloadfiles", filelist);
		model.addAttribute("idlist", idlist);
		model.addAttribute("filenamelist", arrlist);
		return "lecturenotes";
	}

	/**
	 * controller for downloading relevant files in lecture notes module
	 * 
	 * @param request
	 * @param response
	 * @param model
	 * @param fileid
	 * @throws IOException
	 */
	@RequestMapping(value = { "/downloadfiles" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public void downloadFiles(HttpServletRequest request, HttpServletResponse response, Model model,
			@RequestParam(value = "fileid", required = false) int fileid) throws IOException {
		int notesfileid = fileid;
		NotesFile notesfile = this.notesfileservice.selectNotesFilebyId(notesfileid);
		byte[] downloadfile = notesfile.getNotesfile();
		String downloadfilename = notesfile.getFilename() == null ? "DownloadFile" : notesfile.getFilename();
		downloadfilename = URLEncoder.encode(downloadfilename, "UTF-8");
		response.reset();
		response.setContentType("application/octet-stream;charset=UTF-8");
		response.setHeader("Content-Disposition", "attachment; filename=\"" + downloadfilename + "\"");
		OutputStream outputStream = new BufferedOutputStream(response.getOutputStream());
		outputStream.write(downloadfile);
		outputStream.flush();
		outputStream.close();
	}

	/**
	 * Controller for displaying all notifications in notifications module
	 * 
	 * @param request
	 * @param model
	 * @param page
	 * @return
	 */
	@RequestMapping(value = { "/displaynotifs" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String displayNotifs(HttpServletRequest request, Model model,
			@RequestParam(required = true, defaultValue = "1") Integer page) {
		PageHelper.startPage(page.intValue(), 6);
		List<XNotification> notiflist = this.xnotificationservice.getallXNotifications();
		PageInfo<XNotification> pageinfo = new PageInfo(notiflist);
		model.addAttribute("pageinfo", pageinfo);
		model.addAttribute("notifs", notiflist);
		return "notification";
	}
}

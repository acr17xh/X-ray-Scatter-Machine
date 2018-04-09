package com.maxi3.controller;

import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.apache.shiro.crypto.hash.Md5Hash;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.maxi3.pojo.NotesFile;
import com.maxi3.pojo.TOutput;
import com.maxi3.pojo.TQuiz;
import com.maxi3.pojo.TSample;
import com.maxi3.pojo.User;
import com.maxi3.pojo.XNotification;
import com.maxi3.service.NotesFileService;
import com.maxi3.service.TOutputService;
import com.maxi3.service.TQuizService;
import com.maxi3.service.TSampleService;
import com.maxi3.service.UserService;
import com.maxi3.service.XNotificationService;

@Controller
@RequestMapping({ "/user" })
public class UserController {
	@Resource
	private UserService userservice;
	@Resource
	private XNotificationService xnotificationservice;
	@Resource
	private NotesFileService notesfileservice;
	@Resource
	private TQuizService tquizservice;
	@Resource
	TSampleService tsampleservice;
	@Resource
	TOutputService toutputservice;

	private static final String dashboard = "dashboard";
	private static final String addlecturenotes = "addlecturenotes";
	private static final String addnotifications = "addnotifications";
	private static final String addoutput = "addoutput";
	private static final String addoutput2 = "addoutput2";
	private static final String addsample = "addsample";
	private static final String showquizstatistics = "showquizstatistics";
	private static final String showexistingfiles = "showexistingfiles";
	private static final String shownotifications = "shownotifications";
	private static final String showexistingsamples = "showexistingsamples";
	private static final String DELETESAMPLE_FAIL = "Please check at least one box!";
	private static final String DELETESAMPLE_SUCCESS = "Success!";

	@RequestMapping({ "/toquizstatistics" })
	public String toQuizStatistics(HttpServletRequest request, Model model,
			@RequestParam(required = true, defaultValue = "1") Integer page2, HttpSession httpsession) {
		PageHelper.startPage(page2.intValue(), 8);
		List<TQuiz> quizlist = tquizservice.selectAll();
		PageInfo<TQuiz> pageinfo2 = new PageInfo<TQuiz>(quizlist);
		model.addAttribute("pageinfo2", pageinfo2);
		model.addAttribute("quizstatistics", quizlist);
		return showquizstatistics;
	}

	@RequestMapping(value = { "/tosamples" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String toSamples(HttpServletRequest request, HttpSession httpsession, Model model,
			@RequestParam(value = "delsuccess", required = false) String delsuccess,
			@RequestParam(value = "uploadsamplesuccess", required = false) String uploadsamplesuccess) {
		httpsession.removeAttribute("sampleid");
		List<TSample> samplelist = tsampleservice.selectAllOrderBySampledate();
		ArrayList<String> arrlist = new ArrayList();
		ArrayList<Long> idlist = new ArrayList();
		int i = 0;
		while (i < samplelist.size()) {
			arrlist.add(((TSample) samplelist.get(i)).getSampleTil());
			idlist.add(((TSample) samplelist.get(i)).getSampleId());
			i++;
		}
		model.addAttribute("samples", samplelist);
		model.addAttribute("idlist", idlist);
		model.addAttribute("sampletitles", arrlist);
		if (delsuccess != null) {
			model.addAttribute("delsuccess", delsuccess);
		}
		if (uploadsamplesuccess != null) {
			model.addAttribute("uploadsuccess", uploadsamplesuccess);
		}
		return showexistingsamples;
	}

	@RequestMapping({ "/tofiles" })
	public String toFiles(HttpServletRequest request, ModelMap model, HttpSession httpsession,
			@RequestParam(value = "delsuccess", required = false) String delsuccess) {
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
		if (delsuccess != null) {
			model.addAttribute("delsuccess", delsuccess);
		}
		return showexistingfiles;
	}

	@RequestMapping({ "/tonotifications" })
	public String toNotifications(HttpServletRequest request, Model model,
			@RequestParam(required = true, defaultValue = "1") Integer page, HttpSession httpsession,
			@RequestParam(value = "delsuccess", required = false) String delsuccess,
			@RequestParam(value = "dateerror", required = false) String dateerror,
			@RequestParam(value = "addsuccess", required = false) String addsuccess) {
		PageHelper.startPage(page.intValue(), 6);
		List<XNotification> notiflist = this.xnotificationservice.getallXNotifications();
		PageInfo<XNotification> pageinfo = new PageInfo<XNotification>(notiflist);
		model.addAttribute("pageinfo", pageinfo);
		model.addAttribute("notifs", notiflist);
		if (delsuccess != null) {
			model.addAttribute("delsuccess", delsuccess);
		}
		if (dateerror != null) {
			model.addAttribute("dateerror", dateerror);
		}
		if (addsuccess != null) {
			model.addAttribute("addsuccess", addsuccess);
		}
		return shownotifications;
	}

	@RequestMapping({ "/todashboard" })
	public String toDashboard(HttpServletRequest request, ModelMap modelMap, HttpSession httpsession) {
		return dashboard;
	}

	@RequestMapping({ "/toaddsample" })
	public String toAddSample(HttpServletRequest request, ModelMap modelMap, HttpSession httpsession) {
		return addsample;
	}

	@RequestMapping({ "/toaddnotification" })
	public String toAddNotification(HttpServletRequest request, ModelMap modelMap, HttpSession httpsession) {
		return addnotifications;
	}

	@RequestMapping({ "/toaddlecturenotes" })
	public String toAddLectureNotes(HttpServletRequest request, ModelMap modelMap, HttpSession httpsession) {
		return addlecturenotes;
	}

	/**
	 * Controller for adding outputs of specific sample, by teacher user
	 * 
	 * @param request
	 * @param httpsession
	 * @param modelmap
	 * @param outputdes
	 * @param uploadimg
	 * @param attrs
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = { "/addoutput" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String addOutput(HttpServletRequest request, HttpSession httpsession, ModelMap modelmap,
			@RequestParam(value = "outputdes", required = false) String outputdes,
			@RequestParam(value = "outputfile", required = false) MultipartFile uploadimg, RedirectAttributes attrs)
			throws IOException {
		TOutput toutput = new TOutput();
		InputStream is = uploadimg.getInputStream();
		byte[] file1 = new byte[(int) uploadimg.getSize()];
		is.read(file1);
		Date today = new Date();
		Long sampleId = (Long) httpsession.getAttribute("sampleid");
		toutput.setSampleId(sampleId);
		httpsession.removeAttribute("sampleid");
		toutput.setOutputDate(today.toString());
		toutput.setOutputDes(outputdes);
		toutput.setOutputPic(file1);
		this.toutputservice.insert(toutput);
		attrs.addFlashAttribute("uploadoutcomesuccess", "Outcome uploaded successfully! Please refresh.");
		return "redirect:/user/displaysamples";
	}

	@RequestMapping(value = { "/addoutput2" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public @ResponseBody HashMap<String, String> addOutput2(HttpServletRequest request, HttpSession httpsession,
			ModelMap modelmap, @RequestParam(value = "fileinput3[]", required = false) MultipartFile[] uploadimgs,
			RedirectAttributes attrs) throws IOException {
		Long sampleId = (Long) httpsession.getAttribute("sampleid");
		int size = uploadimgs.length;
		for (int i = 0; i < size; i++) {
			MultipartFile uploadimg = uploadimgs[i];
			TOutput toutput = new TOutput();
			InputStream is = uploadimg.getInputStream();
			byte[] file1 = new byte[(int) uploadimg.getSize()];
			is.read(file1);
			Date today = new Date();
			toutput.setSampleId(sampleId);
			toutput.setOutputDate(today.toString());
			String filename = uploadimg.getOriginalFilename();
			toutput.setOutputDes(filename);
			TSample tSample = tsampleservice.selectByPrimaryKey(sampleId);
			String sampleTitle = tSample.getSampleTil();
			StringBuffer stringBuffer = new StringBuffer(filename);
			String exposuretime = stringBuffer.substring(sampleTitle.length() + 1, filename.length()).toString()
					.split(" ")[1];
			if (exposuretime.contains(".")) {
				int position = exposuretime.indexOf(".");
				exposuretime = exposuretime.substring(0, position);
			}
			toutput.setOutputExposuretime(exposuretime);
			toutput.setOutputPic(file1);
			this.toutputservice.insert(toutput);
		}

		HashMap<String, String> map1 = new HashMap<String, String>();
		return map1;
	}

	/**
	 * Controller for jumping to adding output module
	 * 
	 * @param request
	 * @param sampleid
	 * @param httpsession
	 * @param modelmap
	 * @return
	 */
	@RequestMapping(value = { "/toaddoutput" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String toAddoutput(HttpServletRequest request,
			@RequestParam(value = "sampleid", required = false) Long sampleid, HttpSession httpsession,
			ModelMap modelmap) {
		httpsession.setAttribute("sampleid", sampleid);
		return addoutput2;
	}

	/**
	 * Controller for adding one sample
	 * 
	 * @param request
	 * @param model
	 * @param response
	 * @param sampletitle
	 * @param sampledes
	 * @param uploadimg
	 * @param attrs
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = { "/addsample" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String addSample(HttpServletRequest request, Model model, HttpServletResponse response,
			@RequestParam(value = "sampletitle", required = false) String sampletitle,
			@RequestParam(value = "sampledes", required = false) String sampledes,
			@RequestParam(value = "cameralength", required = false) String cameralength,
			@RequestParam(value = "samplestage", required = false) String samplestage,
			@RequestParam(value = "samplefile", required = false) MultipartFile uploadimg, RedirectAttributes attrs)
			throws IOException {
		TSample tsample = new TSample();
		InputStream is = uploadimg.getInputStream();
		byte[] file1 = new byte[(int) uploadimg.getSize()];
		is.read(file1);
		Date today = new Date();
		tsample.setSampleDate(today.toString());
		tsample.setSampleDes(sampledes);
		tsample.setSamplePic(file1);
		tsample.setSampleTil(sampletitle);
		tsample.setSampleCamlen(cameralength);
		tsample.setSampleStage(samplestage);
		this.tsampleservice.insert(tsample);
		attrs.addFlashAttribute("uploadsamplesuccess", "Sample uploaded successfully!");
		return "redirect:/user/tosamples";
	}

	@RequestMapping(value = { "/addsample2" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public @ResponseBody HashMap<String, String> addSample2(HttpServletRequest request, Model model,
			HttpServletResponse response, @RequestParam(value = "sampletitle", required = false) String sampletitle,
			@RequestParam(value = "sampledes", required = false) String sampledes,
			@RequestParam(value = "fileinput2[]", required = false) MultipartFile[] uploadimgs,
			RedirectAttributes attrs) throws IOException {
		MultipartFile uploadimg = uploadimgs[0];
		TSample tsample = new TSample();
		InputStream is = uploadimg.getInputStream();
		byte[] file1 = new byte[(int) uploadimg.getSize()];
		is.read(file1);
		Date today = new Date();
		tsample.setSampleDate(today.toString());
		tsample.setSampleDes(sampledes);
		tsample.setSamplePic(file1);
		String imgname = uploadimg.getOriginalFilename();
		tsample.setSampleTil(imgname);
		this.tsampleservice.insert(tsample);
		HashMap<String, String> map1 = new HashMap<String, String>();
		return map1;
	}

	/**
	 * Controller for uploading files
	 * 
	 * @param request
	 * @param model
	 * @param uploadfile
	 * @param attrs
	 * @return
	 * @throws IOException
	 */
	@RequestMapping(value = { "/uploadnotes" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String uploadNotesFile(HttpServletRequest request, Model model,
			@RequestParam(value = "file", required = false) MultipartFile uploadfile, RedirectAttributes attrs)
			throws IOException {
		NotesFile notesfile2 = new NotesFile();
		notesfile2.setNotesversion(1);
		InputStream is = uploadfile.getInputStream();
		byte[] file1 = new byte[(int) uploadfile.getSize()];
		is.read(file1);
		String filename = uploadfile.getOriginalFilename();
		notesfile2.setFilename(filename);
		notesfile2.setNotesfile(file1);
		this.notesfileservice.addNotesFile(notesfile2);
		attrs.addFlashAttribute("uploadsuccess", "has been uploaded successfully!");
		attrs.addFlashAttribute("newfilename", filename);
		return "redirect:/user/getallnotifs";
	}

	@RequestMapping(value = { "/uploadnotes2" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public @ResponseBody HashMap<String, String> uploadNotesFile2(HttpServletRequest request, Model model,
			@RequestParam(value = "fileinput1[]", required = false) MultipartFile[] uploadfiles,
			RedirectAttributes attrs) throws IOException {

		MultipartFile uploadfile = uploadfiles[0];
		NotesFile notesfile2 = new NotesFile();
		notesfile2.setNotesversion(1);
		InputStream is = uploadfile.getInputStream();
		byte[] file1 = new byte[(int) uploadfile.getSize()];
		is.read(file1);
		String filename = uploadfile.getOriginalFilename();
		notesfile2.setFilename(filename);
		notesfile2.setNotesfile(file1);
		this.notesfileservice.addNotesFile(notesfile2);
		HashMap<String, String> map1 = new HashMap<String, String>();
		return map1;
	}

	/**
	 * Controller for deleting teach users, in root user background
	 * 
	 * @param request
	 * @param deleteboxes
	 * @param model
	 * @param httpsession
	 * @param attrs
	 * @return
	 */
	@RequestMapping(value = { "/deleteuser" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String deleteUser(HttpServletRequest request,
			@RequestParam(value = "deleteboxes", required = false) int[] deleteboxes, Model model,
			HttpSession httpsession, RedirectAttributes attrs) {
		if (deleteboxes == null) {
			model.addAttribute("delsuccess", "Please check at least one box!");
			return "userlist";
		}
		int length = deleteboxes.length;
		int[] deletelist = deleteboxes;

		if (length == 0) {
			return "userlist";
		}

		for (int i = 0; i < length; i++) {
			int userid = deletelist[i];
			if (userid != 1) {
				this.userservice.deleteUserbyId(userid);
			}
		}
		String SUCCESS_INFORMATION = "Success!";
		attrs.addFlashAttribute("delsuccess", SUCCESS_INFORMATION);
		return "redirect:/user/getalluser";
	}

	/**
	 * Controller for deleting notifications
	 * 
	 * @param request
	 * @param deleteboxes
	 * @param model
	 * @param httpsession
	 * @param attrs
	 * @return
	 */
	@RequestMapping(value = { "/deletenotif" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String deleteNotif(HttpServletRequest request,
			@RequestParam(value = "deleteboxes", required = false) int[] deleteboxes, Model model,
			HttpSession httpsession, RedirectAttributes attrs) {
		if (deleteboxes == null) {
			attrs.addFlashAttribute("delsuccess", "Please check at least one box!");
			return "redirect:/user/tonotifications";
		}
		int length = deleteboxes.length;
		int[] deletelist = deleteboxes;

		if (length == 0) {
			attrs.addFlashAttribute("delsuccess", "Please check at least one box!");
			return "redirect:/user/tonotifications";
		}

		for (int i = 0; i < length; i++) {
			int notifid = deletelist[i];

			this.xnotificationservice.deleteXNotificationbyId(notifid);
		}

		String SUCCESS_INFORMATION = "Success!";
		attrs.addFlashAttribute("delsuccess", SUCCESS_INFORMATION);
		return "redirect:/user/tonotifications";
	}

	/**
	 * Controller for deleting quiz statistics by date
	 * 
	 * @param request
	 * @param deletequizdate
	 * @param model
	 * @param httpsession
	 * @param attrs
	 * @return
	 */
	@RequestMapping(value = { "/deletequizstatistics2" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	@ResponseBody
	public HashMap<String, String> deleteQuizStatistics2(HttpServletRequest request,
			@RequestParam(value = "deletequizdate", required = false, defaultValue = "2017-11-12 16:00:00") String deletequizdate,
			Model model, HttpSession httpsession, RedirectAttributes attrs) {
		HashMap<String, String> hashmap = new HashMap();
		String deletequizdate2 = deletequizdate.concat(" 00:00:00");
		List<TQuiz> tquizlist2 = this.tquizservice.selecteByquizDate(deletequizdate);
		if (tquizlist2.size() == 0) {
			hashmap.put("delfail", "0");
			return hashmap;
		}
		this.tquizservice.deleteByquizDate(deletequizdate2);
		hashmap.put("delsuc", "1");
		return hashmap;
	}

	/**
	 * Controller for deleting samples
	 * 
	 * @param deleteboxes
	 * @param request
	 * @param httpsession
	 * @param model
	 * @param attrs
	 * @return
	 */
	@RequestMapping(value = { "/deletesample" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String deleteSample(@RequestParam(value = "deletefileboxes", required = false) int[] deleteboxes,
			HttpServletRequest request, HttpSession httpsession, Model model, RedirectAttributes attrs) {
		if (deleteboxes == null) {
			attrs.addFlashAttribute("delsuccess", "Please check at least one box!");
			return "redirect:/user/tosamples";
		}
		int length = deleteboxes.length;
		int[] deletelist = deleteboxes;
		if (length == 0) {

			attrs.addFlashAttribute("delsuccess", DELETESAMPLE_FAIL);
			return "redirect:/user/tosamples";
		}

		for (int i = 0; i < length; i++) {
			int sampleid = deletelist[i];
			long sampleId = Long.parseLong(String.valueOf(sampleid));
			this.tsampleservice.deleteByPrimaryKey(Long.valueOf(sampleId));
		}

		attrs.addFlashAttribute("delsuccess", DELETESAMPLE_SUCCESS);
		return "redirect:/user/tosamples";
	}

	/**
	 * Controller for deleting files
	 * 
	 * @param deleteboxes
	 * @param request
	 * @param httpsession
	 * @param model
	 * @param attrs
	 * @return
	 */
	@RequestMapping(value = { "/deletefile" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String deleteFile(@RequestParam(value = "deletefileboxes", required = false) int[] deleteboxes,
			HttpServletRequest request, HttpSession httpsession, Model model, RedirectAttributes attrs) {
		if (deleteboxes == null) {
			model.addAttribute("delsuccess2", "Please check at least one box!");
			return "redirect:/user/tofiles";
		}
		int length = deleteboxes.length;
		int[] deletelist = deleteboxes;
		if (length == 0) {
			model.addAttribute("delsuccess2", "Please check at least one box!");
			return "redirect:/user/tofiles";
		}

		for (int i = 0; i < length; i++) {
			int notesfileid = deletelist[i];
			this.notesfileservice.deleteNotesFilebyId(notesfileid);
		}
		String SUCCESS_INFORMATION = "Success!";
		attrs.addFlashAttribute("delsuccess2", SUCCESS_INFORMATION);
		return "redirect:/user/tofiles";
	}

	/**
	 * Controller for returning to teacher user background
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping({ "/showUser" })
	public String showUser(HttpServletRequest request, Model model) {
		int userid = Integer.parseInt(request.getParameter("userid"));
		User user = this.userservice.getUserbyId(userid);
		model.addAttribute("user", user);
		return "showUser";
	}

	/**
	 * Controller for displaying all users, in root user background
	 * 
	 * @param request
	 * @param model
	 * @param page
	 * @return
	 */
	@RequestMapping({ "/getalluser" })
	public String getAllUser(HttpServletRequest request, Model model,
			@RequestParam(required = true, defaultValue = "1") Integer page) {
		PageHelper.startPage(page.intValue(), 6);
		List<User> userlist = this.userservice.getallUsers();
		PageInfo<User> pageinfo = new PageInfo(userlist);
		model.addAttribute("pageinfo", pageinfo);
		model.addAttribute("users", userlist);
		return "userlist";
	}

	/**
	 * Controller for showing notifications in teacher user background
	 * 
	 * @param request
	 * @param model
	 * @param page
	 * @param page2
	 * @param httpsession
	 * @return
	 */

	@RequestMapping({ "/getallnotifs" })
	public String getAllNotifs(HttpServletRequest request, Model model,
			@RequestParam(required = true, defaultValue = "1") Integer page,
			@RequestParam(required = true, defaultValue = "1") Integer page2, HttpSession httpsession) {
		PageHelper.startPage(page.intValue(), 6);
		PageHelper.startPage(page2.intValue(), 6);
		List<XNotification> notiflist = this.xnotificationservice.getallXNotifications();
		PageInfo<XNotification> pageinfo = new PageInfo<XNotification>(notiflist);
		model.addAttribute("pageinfo", pageinfo);
		model.addAttribute("notifs", notiflist);
		return "showuser";
	}

	/**
	 * Controller for showing all quiz statistics
	 * 
	 * @param request
	 * @param model
	 * @param page2
	 * @param httpsession
	 * @return
	 */
	@RequestMapping({ "/getquizstatistics" })
	public String getQuizStatistics(HttpServletRequest request, Model model,
			@RequestParam(required = true, defaultValue = "1") Integer page2, HttpSession httpsession) {
		PageHelper.startPage(page2.intValue(), 8);
		List<TQuiz> quizlist = tquizservice.selectAll();
		PageInfo<TQuiz> pageinfo2 = new PageInfo<TQuiz>(quizlist);
		model.addAttribute("pageinfo2", pageinfo2);
		model.addAttribute("quizstatistics", quizlist);
		return "viewquizstatistics";
	}

	/**
	 * Controller for returning to teacher user background from other user modules
	 * 
	 * @param request
	 * @param model
	 * @param httpsession
	 * @return
	 */
	@RequestMapping(value = { "/returnbackground" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String returnBackground(HttpServletRequest request, Model model, HttpSession httpsession) {
		return dashboard;
	}

	/**
	 * Controller for logging out
	 * 
	 * @param request
	 * @param model
	 * @param httpsession
	 * @return
	 */
	@RequestMapping(value = { "/userlogout" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String userLogout(HttpServletRequest request, Model model, HttpSession httpsession) {
		if (httpsession.getAttribute("newuser") != null) {
			httpsession.removeAttribute("newuser");
		}
		// model.addAttribute("logoutmessage", "You have logged out.");
		// String REMOVE_FLAG = (String) httpsession.getAttribute("removenewuser");
		// httpsession.removeAttribute("removenewuser");
		// httpsession.setAttribute("removenewuser", "1");
		model.addAttribute("loggedout", true);
		model.addAttribute("logoutmessage", "You have logged out.");
		return "main2";

	}

	/**
	 * Controller for logging in and authentication
	 * 
	 * @param request
	 * @param model
	 * @param username
	 * @param userpassword
	 * @param rememberbox
	 * @param httpsession
	 * @param user2
	 * @param bindingResult
	 * @param status
	 * @return
	 */
	@RequestMapping(value = { "/userlogin" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String userLogin(HttpServletRequest request, Model model,
			@RequestParam(value = "username", required = false) String username,
			@RequestParam(value = "userpassword", required = false) String userpassword,
			@RequestParam(value = "rememberbox", required = false) String rememberbox, HttpSession httpsession,
			@Valid User user2, BindingResult bindingResult, SessionStatus status) {
		if (bindingResult.hasErrors()) {
			populateError("username", model, bindingResult);
			populateError("userpassword", model, bindingResult);

			return "main2";
		}
		List<User> userlist = this.userservice.getallUsers();
		ArrayList<String> namelist = new ArrayList();
		for (int i = 0; i < userlist.size(); i++) {
			namelist.add(((User) userlist.get(i)).getUsername());
		}
		User newuser = new User();
		if (namelist.contains(username)) {
			newuser = this.userservice.getUserbyName(username);
		} else {
			model.addAttribute("errorindb", "User Not Found");
			return "main2";
		}
		user2 = newuser;
		if ((rememberbox != null) && (rememberbox.length() > 0) && (rememberbox.equals("checked"))) {
			if (httpsession.getAttribute("newuser") != null) {
				User sessionuser = (User) httpsession.getAttribute("newuser");
				if (sessionuser.getUserid() != newuser.getUserid()) {
					httpsession.setAttribute("newuser", newuser);
					httpsession.setMaxInactiveInterval(3600);
				}

			} else {
				httpsession.setAttribute("newuser", newuser);
				httpsession.setAttribute("removenewuser", "1");
				httpsession.setMaxInactiveInterval(3600);
			}
			httpsession.removeAttribute("removenewuser");
		} else {
			httpsession.setAttribute("newuser", newuser);
			httpsession.setAttribute("removenewuser", "1");
		}
		String username2 = newuser.getUsername();
		String md5password = new Md5Hash(userpassword, username).toString();
		if (user2.getUserpassword().equals(md5password)) {
			if (username.equals("superuser")) {
				PageHelper.startPage(1, 6);
				List<User> users = this.userservice.getallUsers();
				PageInfo<User> pageinfo = new PageInfo(users);
				model.addAttribute("pageinfo", pageinfo);
				httpsession.setAttribute("users", users);
				model.addAttribute("users", users);
				return "userlist";
			}
			model.addAttribute("user", user2);
			model.addAttribute("username", username2);
			httpsession.setAttribute("username", username2);
			return dashboard;
		}
		model.addAttribute("errorindb", "Password wrong!");
		return "main2";
	}

	/**
	 * Controller for jumping to adding user page
	 * 
	 * @param request
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/adduserbutton" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String addUser(HttpServletRequest request, Model model) {
		/* 383 */ return "adduser";
	}

	/**
	 * Controller for returning home page, while checking if user want the system to
	 * remember him
	 * 
	 * @param request
	 * @param httpsession
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/returnhome" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String returnHome(HttpServletRequest request, HttpSession httpsession, Model model) {
		String REMOVE_FLAG = (String) httpsession.getAttribute("removenewuser");
		if ((REMOVE_FLAG != null) && (REMOVE_FLAG.equals("1"))) {
			httpsession.removeAttribute("newuser");
			// httpsession.removeAttribute("removenewuser");
			model.addAttribute("loggedout", true);
			model.addAttribute("logoutmessage", "You have logged out.");
			return "main2";
		} else {
			model.addAttribute("remembered", true);
			return "main2";
		}
	}

	/**
	 * Controller for showing samples in teacher user background
	 * 
	 * @param request
	 * @param httpsession
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/displaysamples" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String displaySamples(HttpServletRequest request, HttpSession httpsession, Model model) {
		List<TSample> samplelist = this.tsampleservice.selectAll();
		ArrayList<String> arrlist = new ArrayList();
		ArrayList<Long> idlist = new ArrayList();
		int i = 0;
		while (i < samplelist.size()) {
			arrlist.add(((TSample) samplelist.get(i)).getSampleTil());
			idlist.add(((TSample) samplelist.get(i)).getSampleId());
			i++;
		}
		model.addAttribute("samples", samplelist);
		model.addAttribute("idlist", idlist);
		model.addAttribute("sampletitles", arrlist);
		return "samples";
	}

	/**
	 * Controller for showing files uploaded in teacher user background
	 * 
	 * @param request
	 * @param httpsession
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/displayfiles" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String displayFiles(HttpServletRequest request, HttpSession httpsession, Model model) {
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
		return "files";
	}

	/**
	 * Controller for adding new user in database, while verifying input then
	 * encrypting password using MD5
	 * 
	 * @param request
	 * @param model
	 * @param httpsession
	 * @param attrs
	 * @param username
	 * @param userpassword
	 * @param useremail
	 * @param user3
	 * @param bindingResult
	 * @return
	 */
	@RequestMapping(value = { "/adduserpage" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String addUserPage(HttpServletRequest request, Model model, HttpSession httpsession,
			RedirectAttributes attrs, @RequestParam(value = "username", required = false) String username,
			@RequestParam(value = "userpassword", required = false) String userpassword,
			@RequestParam(value = "useremail", required = false) String useremail, @Valid User user3,
			BindingResult bindingResult) {
		User user0 = new User();
		user0.setUsername(username);
		String md5password = new Md5Hash(userpassword, username).toString();
		user0.setUserpassword(md5password);
		user0.setUseremail(useremail);
		User useradd = user0;
		user3 = user0;
		if (bindingResult.hasErrors()) {
			populateError("username", model, bindingResult);
			populateError("userpassword", model, bindingResult);
			populateError("useremail", model, bindingResult);
			model.addAttribute("failure", "Failure!");
			attrs.addFlashAttribute("errorexist", "errorexist");
			return "redirect:/user/getalluser";
		}
		this.userservice.addUser(useradd);

		attrs.addFlashAttribute("addsuccess", "Success!");
		return "redirect:/user/getalluser";
	}

	/**
	 * Controller for adding new notifications
	 * 
	 * @param request
	 * @param model
	 * @param httpsession
	 * @param notifdate
	 * @param notif
	 * @param notif3
	 * @param bindingResult
	 * @param attrs
	 * @return
	 */
	@RequestMapping(value = { "/addnotif" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String addNotif(HttpServletRequest request, Model model, HttpSession httpsession,
			@RequestParam(value = "notificationdate", required = false) String notifdate,
			@RequestParam(value = "notification", required = false) String notif, @Valid XNotification notif3,
			BindingResult bindingResult, RedirectAttributes attrs) {
		XNotification notif2 = new XNotification();
		notif2.setNotification(notif);
		notif2.setNotificationdate(notifdate);
		notif3 = notif2;
		if (bindingResult.hasErrors()) {
			populateError("notification", model, bindingResult);
			populateError("notifcationdate", model, bindingResult);
			attrs.addFlashAttribute("dateerror", "Date pattern is wrong ");
			return "redirect:/user/tonotifications";
		}
		this.xnotificationservice.insertXNotification(notif2);
		attrs.addFlashAttribute("addsuccess", "Success!");
		return "redirect:/user/tonotifications";
	}

	/**
	 * One method for displaying error messages using JSR303 in beans
	 * 
	 * @param field
	 * @param model
	 * @param bindingResult
	 */
	private void populateError(String field, Model model, BindingResult bindingResult) {
		if (bindingResult.hasFieldErrors(field)) {
			model.addAttribute(field + "Error", bindingResult.getFieldError(field).getDefaultMessage());
		}
	}
}

package com.maxi3.controller;

/*     */ import java.io.BufferedOutputStream;
/*     */ import java.io.ByteArrayInputStream;
/*     */ import java.io.InputStream;
/*     */ import java.io.OutputStream;
/*     */ import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashSet;
/*     */ import java.util.Iterator;
import java.util.LinkedList;
/*     */ import java.util.List;

/*     */ import javax.annotation.Resource;
/*     */ import javax.servlet.http.HttpServletRequest;
/*     */ import javax.servlet.http.HttpServletResponse;
/*     */ import javax.servlet.http.HttpSession;

/*     */ import org.springframework.stereotype.Controller;
/*     */ import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
/*     */ import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
/*     */ import org.springframework.web.bind.annotation.RequestParam;
/*     */ import org.springframework.web.servlet.mvc.support.RedirectAttributes;

/*     */ import com.github.pagehelper.PageHelper;
/*     */ import com.github.pagehelper.PageInfo;
/*     */ import com.maxi3.pojo.TOutput;
/*     */ import com.maxi3.pojo.TSample;
/*     */ import com.maxi3.service.TOutputService;
/*     */ import com.maxi3.service.TSampleService;

/*     */ import net.coobird.thumbnailator.Thumbnails;

@Controller
public class VirtuallabController {
	@Resource
	TSampleService tsampleservice;
	@Resource
	private TOutputService toutputservice;
	private static final String showsamples = "showsamples";
	private static final String showsamples2 = "showsamples2";
	private static final String showoutput = "showoutput";

	@RequestMapping(value = { "/tovirtualinstrument" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String toVirtualInstrument(HttpServletRequest request, HttpSession httpsession, Model model) {
		return "virtualinstrument";
	}

	@RequestMapping(value = { "/step1submit" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.POST, })
	public String step1Submit(@RequestParam(value = "stageselect") String stageselect,
			@RequestParam(value = "cameralengthselect") String cameralengthselect, HttpServletRequest request,
			HttpSession httpsession, ModelMap modelMap) {
		List<TSample> list = tsampleservice.selectByCameralengthAndStage(cameralengthselect, stageselect);
		ArrayList<TSample> arrayList = new ArrayList<>(list);
		modelMap.addAttribute("sampleslist", arrayList);
		return "virtualinstrument";
	}

	@RequestMapping(value = { "/step1tostep2" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String step1TpStep2(@RequestParam("sampleId") Long sampleId, HttpServletRequest request,
			HttpSession httpsession, ModelMap modelMap) {
		TSample tSample = tsampleservice.selectByPrimaryKey(sampleId);
		List<String> timelist = toutputservice.selectExposuretimeBySampleid(sampleId);
		if (timelist == null) {
			return "virtualinstrument2";
		}

		Comparator<String> comparator = new Comparator<String>() {
			@Override
			public int compare(String o1, String o2) {
				// TODO Auto-generated method stub
				String temp1 = o1.substring(0, o1.length() - 3);
				String temp2 = o2.substring(0, o2.length() - 3);
				Double double1 = Double.parseDouble(temp1);
				Double double2 = Double.parseDouble(temp2);
				if (double1 > double2) {
					return 1;
				} else if (double1 < double2) {
					return -1;
				}
				{
					return 0;
				}
			}
		};
		HashSet<String> hashSet = new HashSet<>(timelist);
		Iterator<String> iterator = hashSet.iterator();
		ArrayList<String> arrayList = new ArrayList<>();
		while (iterator.hasNext()) {
			arrayList.add(iterator.next());
		}
		arrayList.sort(comparator);
		modelMap.addAttribute("timelist", arrayList);
		modelMap.addAttribute("tsample", tSample);
		return "virtualinstrument2";
	}

	@RequestMapping(value = { "/step2submit" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			RequestMethod.GET })
	public String step2Submit(@RequestParam("sampleId") Long sampleId,
			@RequestParam("exposuretimeselect") String exposuretime, HttpServletRequest request,
			HttpSession httpsession, ModelMap modelMap) {
		List<TOutput> list = toutputservice.selectBySampleidAndExposuretime(sampleId, exposuretime);
		LinkedList<TOutput> linkedList = new LinkedList<>(list);

		modelMap.addAttribute("outputslist", linkedList);
		TSample tSample = tsampleservice.selectByPrimaryKey(sampleId);
		List<String> timelist = toutputservice.selectExposuretimeBySampleid(sampleId);
		if (timelist == null) {
			return "virtualinstrument2";
		}
		HashSet<String> hashSet = new HashSet<>(timelist);
		Iterator<String> iterator = hashSet.iterator();
		ArrayList<String> arrayList = new ArrayList<>();
		while (iterator.hasNext()) {
			arrayList.add(iterator.next());
		}
		modelMap.addAttribute("timelist", arrayList);
		modelMap.addAttribute("tsample", tSample);
		return "virtualinstrument2";
	}

	/**
	 * Controller for viewing outputs of one specific sample
	 * 
	 * @param request
	 * @param httpsession
	 * @param model
	 * @param sampleid
	 * @param attrs
	 * @return
	 */
	@RequestMapping(value = { "/viewoutcome" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String viewOutcome(HttpServletRequest request, HttpSession httpsession, Model model,
			@RequestParam(required = false, value = "sampleId", defaultValue = "1") Long sampleid,
			RedirectAttributes attrs) {
		List<TOutput> outputlist2 = toutputservice.selectBySampleid(sampleid);
		if (outputlist2.size() == 0) {
			attrs.addFlashAttribute("outcomeerror", "No outcome for this sample.");
			return "redirect:simulation";
		}
		Iterator<TOutput> itro = outputlist2.iterator();
		while (itro.hasNext()) {
			TOutput to = (TOutput) itro.next();
			if ((to.getOutputPic() == null)) {
				attrs.addFlashAttribute("outcomeerror", "Images of this sample are missing.");
				return "redirect:simulation";
			}
		}
		model.addAttribute("outputlist", outputlist2);
		return showoutput;
	}

	@RequestMapping(value = { "/virtualinstrumentoutputimage" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public void virtualInstrumentOutputImage(HttpServletResponse response, HttpServletRequest request,
			HttpSession httpsession, Model model, @RequestParam(value = "outputid", required = false) Long outputid) {
		TOutput tOutput = toutputservice.selectByPrimaryKey(outputid);
		byte[] img = tOutput.getOutputPic();
		response.setContentType("image/jpeg");
		response.setCharacterEncoding("UTF-8");
		try {
			OutputStream outputstream = new BufferedOutputStream(response.getOutputStream());
			// Currently set output images of samples to 600 x 600
			InputStream inputstream = new ByteArrayInputStream(img);
			Thumbnails.of(new InputStream[] { inputstream }).size(600, 600).outputFormat("jpg")
					.toOutputStream(outputstream);
			outputstream.flush();
			outputstream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	/**
	 * @param request
	 * @param httpsession
	 * @param model
	 * @return
	 */
	@RequestMapping(value = { "/tovirtualtour" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String toVirtualTour(HttpServletRequest request, HttpSession httpsession, Model model) {
		return "virtualtour";
	}

	/**
	 * Controller for showing simulated samples
	 * 
	 * @param request
	 * @param httpsession
	 * @param model
	 * @param page
	 * @param thispage
	 * @return
	 */
	@RequestMapping(value = { "/simulation" }, method = { org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public String simulation(HttpServletRequest request, HttpSession httpsession, Model model,
			@RequestParam(value = "page", required = false, defaultValue = "1") Integer page) {
		PageHelper.startPage(page.intValue(), 3);
		List<TSample> samplelist = this.tsampleservice.selectAll();
		PageInfo<TSample> pageinfo = new PageInfo(samplelist);
		model.addAttribute("samplelist", samplelist);
		model.addAttribute("pageinfo", pageinfo);
		int thispage = page;
		model.addAttribute("thispage", thispage);
		return showsamples;
	}

	/**
	 * Controller for showing image of one sample
	 * 
	 * @param response
	 * @param request
	 * @param httpsession
	 * @param model
	 * @param imgid
	 */
	@RequestMapping(value = { "/simulation/showsampleimg" }, method = {
			org.springframework.web.bind.annotation.RequestMethod.POST,
			org.springframework.web.bind.annotation.RequestMethod.GET })
	public void showImgs(HttpServletResponse response, HttpServletRequest request, HttpSession httpsession, Model model,
			@RequestParam(value = "imgid", required = false) Long imgid) {
		TSample tsample = this.tsampleservice.selectByPrimaryKey(imgid);
		byte[] img = tsample.getSamplePic();
		response.setContentType("image/jpeg");
		response.setCharacterEncoding("UTF-8");
		try {
			OutputStream outputstream = new BufferedOutputStream(response.getOutputStream());
			InputStream inputstream = new ByteArrayInputStream(img);
			// Currently set output images of samples to 400 x 400
			Thumbnails.of(new InputStream[] { inputstream }).size(400, 400).outputFormat("jpg")
					.toOutputStream(outputstream);
			outputstream.flush();
			outputstream.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

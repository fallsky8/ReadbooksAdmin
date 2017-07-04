package com.readbooks.boardcontroller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.boardservice.NoticeService;
import com.readbooks.boardvo.NoticeVO;

@Controller
@RequestMapping(value = "/")
public class NoticeController {

	@Autowired
	private NoticeService noticeService;

	@RequestMapping(value = "/noticelist", method = RequestMethod.GET)
	public String noticelist(@ModelAttribute NoticeVO notice, Model model) {
		List<NoticeVO> noticelist = new ArrayList<NoticeVO>();

		noticelist = noticeService.NoticeSelect(notice);
		model.addAttribute("noticelist", noticelist);
		return "board/noticelist";
	}
	
	@RequestMapping(value = "/noticeinsertpage")
	public String noticeinsertpage(HttpSession https) {

		return "board/noticeinsert";

	}
	@RequestMapping(value = "/noticeinsert", method = RequestMethod.POST)
	public String noticeinsert(@ModelAttribute NoticeVO notice) {
		int result = 0;
		String url = "";
		result = noticeService.NoticeInsert(notice);
		if (result == 1) {
			url = "redirect:/noticelist.do";
		}
		return url;
	}
	@RequestMapping(value = "/noticeupdate", method = RequestMethod.POST)
	public String noticeupdate(@ModelAttribute NoticeVO notice) {
		int result = 0;
		String url = "";
		result = noticeService.NoticeUpdate(notice);
		if (result == 1) {
			url = "redirect:/noticelist.do";
		}
		return url;
	}
	

	@RequestMapping(value = "/noticedetail", method = RequestMethod.GET)
	public String noticedetail(@ModelAttribute NoticeVO notice, Model model) {
		
		NoticeVO noticedetail = new NoticeVO();
		noticedetail = noticeService.NoticeDetailSelect(notice);
		model.addAttribute("noticedetail", noticedetail);
		return "board/noticedetail";
	}


}
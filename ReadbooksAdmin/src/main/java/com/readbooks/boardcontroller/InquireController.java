package com.readbooks.boardcontroller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.boardservice.InquireService;
import com.readbooks.boardvo.InquireVO;

@Controller
@RequestMapping(value = "/")
public class InquireController {

	@Autowired
	private InquireService inquireService;

	@RequestMapping(value = "/inquirelist", method = RequestMethod.GET)
	public String Inquirelist(@ModelAttribute InquireVO inquire, Model model) {
		List<InquireVO> inquirelist = new ArrayList<InquireVO>();

		inquirelist = inquireService.InquireSelect(inquire);
		model.addAttribute("inquirelist", inquirelist);
		return "board/inquirelist";
	}


	@RequestMapping(value = "/inquireupdate", method = RequestMethod.POST)
	public String Inquireupdate(@ModelAttribute InquireVO inquire) {
		int result = 0;
		String url = "";
		result = inquireService.InquireUpdate(inquire);
		if (result == 1) {
			url = "/inquirelist.do";
		}
		return "redirect:" + url;
	}

	@RequestMapping(value = "/inquiredetail", method = RequestMethod.GET)
	public String InquireDetail(@ModelAttribute InquireVO inquire, Model model) {
		InquireVO inquiredetail = new InquireVO();
		inquiredetail = inquireService.InquireDetailSelect(inquire);
		model.addAttribute("inquiredetail", inquiredetail);
		return "board/inquiredetail";
	}

}
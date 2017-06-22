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

import com.readbooks.boardservice.FAQService;
import com.readbooks.boardvo.FAQVO;

@Controller
@RequestMapping(value = "/")
public class FAQController {

	@Autowired
	private FAQService faqService;

	@RequestMapping(value = "/faqlist", method = RequestMethod.GET)
	public String OrderListGet(@ModelAttribute FAQVO faq, Model model) {
		List<FAQVO> faqlist = new ArrayList<FAQVO>();

		faqlist = faqService.faqSelect(faq);
		model.addAttribute("faqlist", faqlist);
		return "board/faqlist";
	}
	
	@RequestMapping(value = "/faqinsertpage")
	public String faqinsertpage(HttpSession https) {

		return "board/faqinsert";

	}
	@RequestMapping(value = "/faqinsert", method = RequestMethod.POST)
	public String faqinsert(@ModelAttribute FAQVO faq) {
		int result = 0;
		String url = "";
		result = faqService.faqInsert(faq);
		if (result == 1) {
			url = "redirect:/faqlist.do";
		}
		return url;
	}
//	@RequestMapping(value = "/bookupdate", method = RequestMethod.POST)
//	public String bookupdate(@ModelAttribute BookVO BookVO) {
//		String opening_date= BookVO.getBook_opening().substring(0, 10);
//		BookVO.setBook_opening(opening_date);
//		int result = 0;
//		String url = "";
//		result = bookservice.bookUpdate(BookVO);
//		if (result == 1) {
//			url = "redirect:/booklist.do";
//		}
//		return url;
//	}
//	
//
//	@RequestMapping(value = "/bookdetail", method = RequestMethod.GET)
//	public String bookdetail(@ModelAttribute BookVO book, Model model) {
//		
//		BookVO bookdetail = new BookVO();
//		bookdetail = bookservice.bookDetailSelect(book);
//		model.addAttribute("bookdetail", bookdetail);
//		return "book/bookdetail";
//	}


}
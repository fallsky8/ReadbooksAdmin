package com.readbooks.bookcontroller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.bookservice.BookService;
import com.readbooks.bookvo.BookVO;

@Controller
@RequestMapping(value = "/")
public class BookController {

	@Autowired
	private BookService bookservice;

	@RequestMapping(value = "/bookinsert")
	public String bookinsertpage(HttpSession https) {

		return "book/bookinsert";

	}
	

	@RequestMapping(value = "/bookinsert", method = RequestMethod.POST)
	public String bookInsert(@ModelAttribute BookVO BookVO) {
		int result = 0;
		String url = "";
		result = bookservice.bookInsert(BookVO);
		if (result == 1) {
			url = "redirect:../.do";
		}
		return url;
	}
	
	
	@RequestMapping(value = "/booklist", method = RequestMethod.GET)
	public String bestbookGet(@ModelAttribute BookVO book, Model model) {
		List<BookVO> booklist = new ArrayList<BookVO>();
		booklist = bookservice.bookSelect(book);
		model.addAttribute("booklistget", booklist);
		return "book/booklist";
	}


}

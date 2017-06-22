package com.readbooks.bookcontroller;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.readbooks.bookservice.BookService;
import com.readbooks.bookvo.BookVO;

@Controller
@RequestMapping(value = "/")
public class BookController {
	Logger logger = Logger.getLogger(BookController.class);
	@Autowired
	private BookService bookservice;

	@RequestMapping(value = "/bookinsertpage")
	public String bookinsertpage(HttpSession https) {

		return "book/bookinsert";

	}

	@RequestMapping(value = "/bookinsert", method = RequestMethod.POST)
	public String bookinsert(@ModelAttribute BookVO BookVO, @RequestParam("image_file") MultipartFile file,
			HttpServletRequest request) {
		logger.info("아아ㅏㅇ");
		int result = 0;
		String url = "";
		String filename = "";

		// 파일명 겟
		if (!BookVO.getImage_file().isEmpty()) {
			filename = file.getOriginalFilename();
//저장될 경로 D:\SpringTeamProject\ReadBooks\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\ReadbooksAdmin\resources
		//이 프로젝트 안에 관련되어있는 경로
		
			String path = request.getSession().getServletContext().getRealPath("/resources/image/");
			try {
				new File(path).mkdirs();
				BookVO.getImage_file().transferTo(new File(path + filename));
			} catch (Exception e) {
			}
			BookVO.setBook_image(filename);
			result = bookservice.bookInsert(BookVO);
		}

		if (result == 1) {
			url = "redirect:/booklist.do";
		}
		return url;
	}

	@RequestMapping(value = "/bookupdate", method = RequestMethod.POST)
	public String bookupdate(@ModelAttribute BookVO BookVO) {
		String opening_date = BookVO.getBook_opening().substring(0, 10);
		BookVO.setBook_opening(opening_date);
		int result = 0;
		String url = "";
		result = bookservice.bookUpdate(BookVO);
		if (result == 1) {
			url = "redirect:/booklist.do";
		}
		return url;
	}

	@RequestMapping(value = "/booklist", method = RequestMethod.GET)
	public String booklist(@ModelAttribute BookVO book, Model model) {

		List<BookVO> booklist = new ArrayList<BookVO>();
		booklist = bookservice.bookSelect(book);
		model.addAttribute("booklist", booklist);
		return "book/booklist";
	}

	@RequestMapping(value = "/bookdetail", method = RequestMethod.GET)
	public String bookdetail(@ModelAttribute BookVO book, Model model) {

		BookVO bookdetail = new BookVO();
		bookdetail = bookservice.bookDetailSelect(book);
		model.addAttribute("bookdetail", bookdetail);
		return "book/bookdetail";
	}

}

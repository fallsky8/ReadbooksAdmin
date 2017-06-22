package com.readbooks.bookservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.bookdao.BookDAO;
import com.readbooks.bookvo.BookVO;

@Service
@Transactional
public class BookServiceImpl implements BookService {
	
	@Autowired
	private BookDAO bookdao;

	@Override
	public int bookInsert(BookVO bookVO) {
		int result = 0;
		result = bookdao.bookInsert(bookVO);
		return result;
	}

	@Override
	public List<BookVO> bookSelect(BookVO bookVO) {
		List<BookVO> booklistget = null;
		
		booklistget = bookdao.bookSelect(bookVO);
		return booklistget;
	}

	@Override
	public BookVO bookDetailSelect(BookVO bookVO) {
		BookVO bookdetail= new BookVO();
		bookdetail = bookdao.bookDetailSelect(bookVO);
		return bookdetail;
	}

	@Override
	public int bookUpdate(BookVO bookVO) {
		int result = 0;
		result = bookdao.bookUpdate(bookVO);
		return result;
	}
}

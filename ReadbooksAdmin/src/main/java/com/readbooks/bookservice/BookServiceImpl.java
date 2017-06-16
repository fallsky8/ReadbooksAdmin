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
	public int bookInsert(BookVO BookVO) {
		int result = 0;
		result = bookdao.bookInsert(BookVO);
		return result;
	}

	@Override
	public List<BookVO> bookSelect(BookVO BookVO) {
		List<BookVO> booklistget = null;
		
		booklistget = bookdao.bookSelect(BookVO);
		return booklistget;
	}
}

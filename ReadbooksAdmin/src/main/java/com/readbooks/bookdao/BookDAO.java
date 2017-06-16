package com.readbooks.bookdao;

import java.util.List;

import com.readbooks.bookvo.BookVO;

public interface BookDAO {
	
	public int bookInsert(BookVO BookVO);
	public List<BookVO> bookSelect(BookVO BookVO) ;
}

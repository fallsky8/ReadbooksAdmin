package com.readbooks.bookdao;

import java.util.List;

import com.readbooks.bookvo.BookVO;

public interface BookDAO {
	
	public int bookInsert(BookVO bookVO);
	public List<BookVO> bookSelect(BookVO bookVO) ;
	public BookVO bookDetailSelect(BookVO bookVO) ;
	public int bookUpdate(BookVO bookVO);
}

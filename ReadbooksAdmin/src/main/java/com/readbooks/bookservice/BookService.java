package com.readbooks.bookservice;

import java.util.List;

import com.readbooks.bookvo.BookVO;

public interface BookService {

	public int bookInsert(BookVO BookVO);

	public List<BookVO> bookSelect(BookVO BookVO);
}

package com.readbooks.bookdao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.bookvo.BookVO;

@Repository
@Transactional
public class BookDAOImpl implements BookDAO {

	@Autowired
	private SqlSession session;

	@Override
	public int bookInsert(BookVO BookVO) {
		return session.insert("bookinsert", BookVO);
	}

	@Override
	public List<BookVO> bookSelect(BookVO BookVO) {
		return session.selectList("booklist", BookVO);
	}
}

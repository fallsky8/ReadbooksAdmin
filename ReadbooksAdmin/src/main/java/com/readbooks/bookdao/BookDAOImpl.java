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
	public int bookInsert(BookVO bookVO) {
		return session.insert("bookinsert", bookVO);
	}


	@Override
	public BookVO bookDetailSelect(BookVO bookVO) {
		return session.selectOne("bookdetail", bookVO);
	}
	@Override
	public List<BookVO> bookSelect(BookVO bookVO) {
		return session.selectList("booklist", bookVO);
	}

	@Override
	public int bookUpdate(BookVO bookVO) {
		return session.update("bookupdate", bookVO);
	}
}

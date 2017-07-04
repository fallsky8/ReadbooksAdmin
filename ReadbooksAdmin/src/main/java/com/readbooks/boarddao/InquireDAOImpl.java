package com.readbooks.boarddao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.boardvo.InquireVO;

@Repository
@Transactional
public class InquireDAOImpl implements InquireDAO {

	@Autowired
	private SqlSession session;

	@Override
	public List<InquireVO> InquireSelect(InquireVO inquire) {
		return session.selectList("inquirelist", inquire);
	}

	@Override
	public InquireVO InquireDetailSelect(InquireVO inquire) {
		return (InquireVO) session.selectOne("inquiredetail", inquire);
	}

	@Override
	public int InquireUpdate(InquireVO inquire) {
		return session.update("inquireupdate", inquire);
	}
}
package com.readbooks.boarddao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.boardvo.NoticeVO;

@Repository
@Transactional
public class NoticeDAOImpl implements NoticeDAO {

	@Autowired
	private SqlSession session;

	@Override
	public List<NoticeVO> NoticeSelect(NoticeVO notice) {
		return session.selectList("noticelist", notice);
	}

	@Override
	public int NoticeInsert(NoticeVO notice) {
		return session.insert("noticeinsert",notice);
	}

	@Override
	public NoticeVO NoticeDetailSelect(NoticeVO notice) {
		return session.selectOne("noticedetail", notice);
	}

	@Override
	public int NoticeUpdate(NoticeVO notice) {
		return session.update("noticeupdate", notice);
	}
}
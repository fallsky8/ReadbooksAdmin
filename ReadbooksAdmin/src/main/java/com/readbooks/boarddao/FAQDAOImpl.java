package com.readbooks.boarddao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.boardvo.FAQVO;

@Repository
@Transactional
public class FAQDAOImpl implements FAQDAO {

	@Autowired
	private SqlSession session;

	@Override
	public List<FAQVO> faqSelect(FAQVO faq) {
		return session.selectList("faqlist", faq);
	}

	@Override
	public int faqInsert(FAQVO faq) {
		return session.insert("faqinsert", faq);
	}

	@Override
	public FAQVO faqDetailSelect(FAQVO faq) {
		return (FAQVO) session.selectOne("faqdetail", faq);
	}

	@Override
	public int faqUpdate(FAQVO faq) {
		return session.update("faqupdate", faq);
	}
}
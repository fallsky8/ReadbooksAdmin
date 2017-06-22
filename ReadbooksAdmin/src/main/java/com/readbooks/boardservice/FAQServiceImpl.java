package com.readbooks.boardservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.boarddao.FAQDAO;
import com.readbooks.boardvo.FAQVO;

@Service
@Transactional
public class FAQServiceImpl implements FAQService {

	@Autowired
	private FAQDAO faqdao;

	
	@Override
	public List<FAQVO> faqSelect(FAQVO faq) {
		List<FAQVO> faqlistget = null;

		faqlistget = faqdao.faqSelect(faq);
		return faqlistget;
	}


	@Override
	public int faqInsert(FAQVO faq) {
		int result = 0;
		result = faqdao.faqInsert(faq);
		return result;
	}
}

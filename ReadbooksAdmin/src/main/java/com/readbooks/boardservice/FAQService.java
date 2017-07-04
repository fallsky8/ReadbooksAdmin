package com.readbooks.boardservice;

import java.util.List;

import com.readbooks.boardvo.FAQVO;

public interface FAQService {

	public List<FAQVO> faqSelect(FAQVO faq);

	public int faqInsert(FAQVO faq);

	public FAQVO faqDetailSelect(FAQVO faq);

	public int faqUpdate(FAQVO faq);


}

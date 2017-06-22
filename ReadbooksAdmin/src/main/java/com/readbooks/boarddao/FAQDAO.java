package com.readbooks.boarddao;

import java.util.List;

import com.readbooks.boardvo.FAQVO;

public interface FAQDAO {

	public List<FAQVO> faqSelect(FAQVO faq);

	public int faqInsert(FAQVO faq);

}

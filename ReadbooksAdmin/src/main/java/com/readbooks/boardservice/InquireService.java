package com.readbooks.boardservice;

import java.util.List;

import com.readbooks.boardvo.InquireVO;

public interface InquireService {

	public List<InquireVO> InquireSelect(InquireVO inquire);

	public InquireVO InquireDetailSelect(InquireVO inquire);

	public int InquireUpdate(InquireVO inquire);

}

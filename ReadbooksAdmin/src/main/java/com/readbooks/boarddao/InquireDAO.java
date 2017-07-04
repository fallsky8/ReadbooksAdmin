package com.readbooks.boarddao;

import java.util.List;

import com.readbooks.boardvo.InquireVO;

public interface InquireDAO {

	public List<InquireVO> InquireSelect(InquireVO inquire);

	public InquireVO InquireDetailSelect(InquireVO inquire);

	public int InquireUpdate(InquireVO inquire);

}

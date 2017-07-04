package com.readbooks.boardservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.boarddao.InquireDAO;
import com.readbooks.boardvo.InquireVO;

@Service
@Transactional
public class InquireServiceImpl implements InquireService {

	@Autowired
	private InquireDAO inquiredao;

	@Override
	public List<InquireVO> InquireSelect(InquireVO inquire) {
		List<InquireVO> inquirelistget = null;

		inquirelistget = inquiredao.InquireSelect(inquire);
		return inquirelistget;
	}

	@Override
	public InquireVO InquireDetailSelect(InquireVO inquire) {
		InquireVO inquiredetail = null;
		inquiredetail = inquiredao.InquireDetailSelect(inquire);
		return inquiredetail;
	}

	@Override
	public int InquireUpdate(InquireVO inquire) {
		int result = 0;
		result = inquiredao.InquireUpdate(inquire);
		return result;
	}
}

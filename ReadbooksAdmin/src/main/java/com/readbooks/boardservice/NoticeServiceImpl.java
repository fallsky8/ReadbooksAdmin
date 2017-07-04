package com.readbooks.boardservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.boarddao.NoticeDAO;
import com.readbooks.boardvo.NoticeVO;

@Service
@Transactional
public class NoticeServiceImpl implements NoticeService {

	@Autowired
	private NoticeDAO noticedao;

	
	@Override
	public List<NoticeVO> NoticeSelect(NoticeVO Notice) {
		List<NoticeVO> Noticelistget = null;

		Noticelistget = noticedao.NoticeSelect(Notice);
		return Noticelistget;
	}


	@Override
	public int NoticeInsert(NoticeVO notice) {
		int result = 0;
		result = noticedao.NoticeInsert(notice);
		return result;
	}


	@Override
	public NoticeVO NoticeDetailSelect(NoticeVO notice) {
		NoticeVO noticedetail= new NoticeVO();
		noticedetail = noticedao.NoticeDetailSelect(notice);
		return noticedetail;
	}


	@Override
	public int NoticeUpdate(NoticeVO notice) {
		int result = 0;
		result = noticedao.NoticeUpdate(notice);
		return result;
	}
}

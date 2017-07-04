package com.readbooks.boarddao;

import java.util.List;

import com.readbooks.boardvo.NoticeVO;

public interface NoticeDAO {

	public List<NoticeVO> NoticeSelect(NoticeVO notice);

	public int NoticeInsert(NoticeVO notice);

	public NoticeVO NoticeDetailSelect(NoticeVO notice);

	public int NoticeUpdate(NoticeVO notice);

}

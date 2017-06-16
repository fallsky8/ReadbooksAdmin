package com.readbooks.admindao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.adminvo.AdminVO;

@Repository
@Transactional
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SqlSession session;

	@Override
	public int login(AdminVO admin) {
		return (Integer) session.selectOne("checklogin", admin);
	}

}

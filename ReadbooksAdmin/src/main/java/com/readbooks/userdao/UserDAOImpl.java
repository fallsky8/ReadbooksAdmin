package com.readbooks.userdao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.uservo.UserVO;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSession session;

	@Override
	public List<UserVO> userSelect(UserVO user) {
		return session.selectList("userlist", user);
	}

	@Override
	public int userUpdate(UserVO user) {
		return session.update("userupdate", user);
	}

	@Override
	public UserVO userDetailSelect(UserVO user) {
		return session.selectOne("userdetail", user);
	}

	


}
package com.readbooks.userservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.userdao.UserDAO;
import com.readbooks.uservo.UserVO;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userdao;

	@Override
	public List<UserVO> userSelect(UserVO user) {
		List<UserVO> userlistget = null;
		
		userlistget = userdao.userSelect(user);
		return userlistget;
	}
}

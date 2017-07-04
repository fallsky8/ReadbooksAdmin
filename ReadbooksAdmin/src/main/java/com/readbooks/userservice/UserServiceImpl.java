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

	@Override
	public int userUpdate(UserVO user) {
		int result = 0;
		result = userdao.userUpdate(user);
		return result;
	}

	@Override
	public UserVO userDetailSelect(UserVO user) {
		UserVO userdetail= new UserVO();
		userdetail = userdao.userDetailSelect(user);
		return userdetail;
	}

	@Override
	public String getId(UserVO userVo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getPwd(UserVO userVo) {
		// TODO Auto-generated method stub
		return null;
	}
}

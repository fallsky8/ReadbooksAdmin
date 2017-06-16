package com.readbooks.userservice;

import java.util.List;

import com.readbooks.uservo.UserVO;

public interface UserService {

	public List<UserVO> userSelect(UserVO user);

}

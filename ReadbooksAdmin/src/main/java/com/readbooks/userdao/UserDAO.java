package com.readbooks.userdao;

import java.util.List;

import com.readbooks.uservo.UserVO;

public interface UserDAO {

	public List<UserVO> userSelect(UserVO user);

	public int userUpdate(UserVO user);

	public UserVO userDetailSelect(UserVO user);

}

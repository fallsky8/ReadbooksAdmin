package com.readbooks.userservice;

import java.util.List;

import com.readbooks.uservo.UserVO;

public interface UserService {

	public List<UserVO> userSelect(UserVO user);

	public int userUpdate(UserVO user);

	public UserVO userDetailSelect(UserVO user);

	public String getId(UserVO userVo);

	public String getPwd(UserVO userVo);


}

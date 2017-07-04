package com.readbooks.usercontroller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.userservice.UserService;
import com.readbooks.uservo.UserVO;

@Controller
@RequestMapping(value = "/")
public class UserController {

	@Autowired
	private UserService userservice;

	@RequestMapping(value = "/userlist", method = RequestMethod.GET)
	public String userlist(@ModelAttribute UserVO user, Model model) {
		List<UserVO> userlist = new ArrayList<UserVO>();
		userlist = userservice.userSelect(user);
		model.addAttribute("userlist", userlist);
		return "user/userlist";
	}

	@RequestMapping(value = "/userupdate", method = RequestMethod.POST)
	public String userupdate(@ModelAttribute UserVO user) {
		int result = 0;
	
		String url = "";
		result = userservice.userUpdate(user);
		if (result == 1) {
			url = "redirect:/userlist.do";
		}
		return url;
	}

	@RequestMapping(value = "/userdetail", method = RequestMethod.GET)
	public String user(@ModelAttribute UserVO user, Model model) {

		UserVO userdetail = new UserVO();
		userdetail = userservice.userDetailSelect(user);
		model.addAttribute("userdetail", userdetail);
		return "user/userdetail";
	}

}
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
	private UserService userService;

	@RequestMapping(value = "/userlist", method = RequestMethod.GET)
	public String bestbookGet(@ModelAttribute UserVO user, Model model) {
		List<UserVO> userlist = new ArrayList<UserVO>();
		userlist = userService.userSelect(user);
		model.addAttribute("userlistget", userlist);
		return "user/userlist";
	}

}
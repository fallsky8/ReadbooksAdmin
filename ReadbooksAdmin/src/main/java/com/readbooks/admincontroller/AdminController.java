package com.readbooks.admincontroller;

import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.adminservice.AdminService;
import com.readbooks.adminvo.AdminVO;

@Controller
@RequestMapping(value = "/")
public class AdminController {

	@Autowired
	private AdminService adminService;

	@RequestMapping(value = "/login")
	public String login(HttpSession session) {

		return "admin/login";
	}

	@RequestMapping(value = "/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		return "home";
	}

	@RequestMapping(value = "/checklogin", method = RequestMethod.POST)
	public String checklogin(@ModelAttribute AdminVO admin, HttpSession session, Model model) {
		session.setAttribute("CSRF_TOKEN", UUID.randomUUID().toString());
		int result = 0;
		String url = "";
//		System.out.println(admin.getAdmin_id());
		result = adminService.login(admin);
		session.setAttribute("admin_id", admin.getAdmin_id());
		if (result == 1) {
			url = "admin/login";
		}
		return url;
	}

}

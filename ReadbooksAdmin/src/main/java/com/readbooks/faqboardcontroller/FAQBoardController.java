package com.readbooks.faqboardcontroller;

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
public class FAQBoardController {

	@Autowired
	private AdminService adminService;

	@RequestMapping(value = "/faqboard")
	public String checkuser(HttpSession session) {

		return "board/faqboardlist";
	}

//	@RequestMapping(value = "/adminlogout")
//	public String outuser(HttpSession session) {
//
//		return "admin/adminlogout";
//	}
//
//	@RequestMapping(value = "/adminlogin", method = RequestMethod.POST)
//	public String adminCheck(@ModelAttribute AdminVO admin, HttpSession session, Model model) {
//		session.setAttribute("CSRF_TOKEN", UUID.randomUUID().toString());
//		int result = 0;
//		String url = "";
//		System.out.println(admin.getAdmin_id());
//		result = adminService.adminCheck(admin);
//		session.setAttribute("admin_id", admin.getAdmin_id());
//		if (result == 1) {
//			url = "admin/admincheck";
//		}
//		return url;
//	}

}

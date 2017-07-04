package com.readbooks.agreementcontroller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.agreementservice.AgreementService;
import com.readbooks.agreementvo.AgreementVO;

@Controller
@RequestMapping(value = "/")
public class AgreementController {

	@Autowired
	private AgreementService agreementservice;

	
	
	@RequestMapping(value = "/agreement")
	public String agreementpage(HttpSession https, @ModelAttribute AgreementVO agreement, Model model) {
		AgreementVO agreementlist = new AgreementVO();
		agreementlist = agreementservice.AgreementSelect(agreement);
		model.addAttribute("agreementlist", agreementlist);
		return "agreement/agreement";

	}
	
	
	@RequestMapping(value = "/agreementupdate", method = RequestMethod.POST)
	public String agreementupdate(@ModelAttribute AgreementVO agreement) {
		int result = 0;
		String url = "";
		result = agreementservice.AgreementUpdate(agreement);
		if (result == 1) {
			url = "redirect:/agreement.do";
		}
		return url;
	}
	

}
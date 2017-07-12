package com.readbooks.ordercontroller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.orderservice.OrderService;
import com.readbooks.ordervo.OrderVO;

@Controller
@RequestMapping(value = "/")
public class OrderController {

	@Autowired
	private OrderService orderService;

	@RequestMapping(value = "/orderlist", method = RequestMethod.GET)
	public String OrderListGet(@ModelAttribute OrderVO order, Model model) {
		List<OrderVO> orderlist = new ArrayList<OrderVO>();
		orderlist = orderService.orderSelect(order);
		model.addAttribute("orderlist", orderlist);
		return "order/orderlist";
	}
	
//	@RequestMapping(value = "/Orderupdate", method = RequestMethod.POST)
//	public String Orderupdate(@ModelAttribute OrderVO order) {
//		int result = 0;
//		String url = "";
//		result = orderService.OrderUpdate(order);
//		if (result == 1) {
//			url = "redirect:/orderlist.do";
//		}
//		return url;
//	}
//	

	@RequestMapping(value = "/orderdetail", method = RequestMethod.GET)
	public String Orderdetail(@ModelAttribute OrderVO order, Model model) {
		
		OrderVO orderdetail = new OrderVO();
		orderdetail = orderService.OrderDetailSelect(order);
		model.addAttribute("orderdetail", orderdetail);
		return "order/orderdetail";
	}

	
	@RequestMapping(value = "/mail", method = RequestMethod.GET)
	public String mailForm(@ModelAttribute OrderVO order, Model model) {
		List<OrderVO> grossprofit = new ArrayList<OrderVO>();
		List<OrderVO> grossprofitmonth = new ArrayList<OrderVO>();
		List<OrderVO> grossprofitkorea = new ArrayList<OrderVO>();
		List<OrderVO> grossprofitforeign = new ArrayList<OrderVO>();
		grossprofit = orderService.grossprofit(order);
		grossprofitmonth = orderService.grossprofitmonth(order);
		grossprofitkorea = orderService.grossprofitkorea(order);
		grossprofitforeign = orderService.grossprofitforeign(order);
		model.addAttribute("grossprofit", grossprofit);
		model.addAttribute("grossprofitmonth", grossprofitmonth);
		model.addAttribute("grossprofitkorea", grossprofitkorea);
		model.addAttribute("grossprofitforeign", grossprofitforeign);
		return "/mail/mail";
	}

}
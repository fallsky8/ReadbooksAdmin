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
	public String bestbookGet(@ModelAttribute OrderVO order, Model model) {
		List<OrderVO> orderlist = new ArrayList<OrderVO>();
		orderlist = orderService.orderSelect(order);
		model.addAttribute("orderlist", orderlist);
		return "order/orderlist";
	}

}
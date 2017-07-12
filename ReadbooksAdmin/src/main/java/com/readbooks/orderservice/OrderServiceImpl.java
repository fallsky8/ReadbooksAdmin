package com.readbooks.orderservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.boardvo.NoticeVO;
import com.readbooks.orderdao.OrderDAO;
import com.readbooks.ordervo.OrderVO;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDAO orderdao;

	@Override
	public List<OrderVO> orderSelect(OrderVO order) {
		List<OrderVO> orderlistget = null;

		orderlistget = orderdao.orderSelect(order);
		return orderlistget;
	}

	@Override
	public List<OrderVO> grossprofit(OrderVO order) {
		List<OrderVO> grossprofit = null;
		grossprofit = orderdao.grossprofit(order);
		return grossprofit;
	}

	@Override
	public List<OrderVO> grossprofitmonth(OrderVO order) {
		List<OrderVO> grossprofitmonth = null;
		grossprofitmonth = orderdao.grossprofitmonth(order);
		return grossprofitmonth;
	}

	@Override
	public List<OrderVO> grossprofitkorea(OrderVO order) {
		List<OrderVO> grossprofitkorea = null;
		grossprofitkorea = orderdao.grossprofitkorea(order);
		return grossprofitkorea;
	}

	@Override
	public List<OrderVO> grossprofitforeign(OrderVO order) {
		List<OrderVO> grossprofitforeign = null;
		grossprofitforeign = orderdao.grossprofitforeign(order);
		return grossprofitforeign;
	}

	@Override
	public int OrderUpdate(OrderVO order) {
		int result = 0;
		result = orderdao.OrderUpdate(order);
		return result;
	}

	@Override
	public OrderVO OrderDetailSelect(OrderVO order) {
		OrderVO orderdetail= new OrderVO();
		orderdetail = orderdao.OrderDetailSelect(order);
		return orderdetail;
	}
}

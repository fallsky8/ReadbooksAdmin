package com.readbooks.orderservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
}

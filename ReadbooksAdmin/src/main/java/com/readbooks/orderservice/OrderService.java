package com.readbooks.orderservice;

import java.util.List;

import com.readbooks.ordervo.OrderVO;

public interface OrderService {

	public List<OrderVO> orderSelect(OrderVO order);

}

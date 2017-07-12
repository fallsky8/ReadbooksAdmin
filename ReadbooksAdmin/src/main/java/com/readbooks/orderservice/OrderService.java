package com.readbooks.orderservice;

import java.util.List;

import com.readbooks.ordervo.OrderVO;

public interface OrderService {

	public List<OrderVO> orderSelect(OrderVO order);

	public List<OrderVO> grossprofit(OrderVO order);

	public List<OrderVO> grossprofitmonth(OrderVO order);

	public List<OrderVO> grossprofitkorea(OrderVO order);

	public List<OrderVO> grossprofitforeign(OrderVO order);

}

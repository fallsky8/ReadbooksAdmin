package com.readbooks.orderdao;

import java.util.List;

import com.readbooks.ordervo.OrderVO;

public interface OrderDAO {

	public List<OrderVO> orderSelect(OrderVO order);

	public List<OrderVO> grossprofit(OrderVO order);

}

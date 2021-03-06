package com.readbooks.orderdao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.ordervo.OrderVO;

@Repository
@Transactional
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	private SqlSession session;

	@Override
	public List<OrderVO> orderSelect(OrderVO order) {
		return session.selectList("orderlist", order);
	}

	@Override
	public List<OrderVO> grossprofit(OrderVO order) {
		return session.selectList("grossprofit", order);
	}

	@Override
	public List<OrderVO> grossprofitmonth(OrderVO order) {
		return session.selectList("grossprofitmonth", order);
	}

	@Override
	public List<OrderVO> grossprofitkorea(OrderVO order) {
		return session.selectList("grossprofitkorea", order);
	}

	@Override
	public List<OrderVO> grossprofitforeign(OrderVO order) {
		return session.selectList("grossprofitforeign", order);
	}

	@Override
	public int OrderUpdate(OrderVO order) {
		return session.update("orderupdate", order);
	}

	@Override
	public OrderVO OrderDetailSelect(OrderVO order) {
		return session.selectOne("orderdetail", order);
	}
}
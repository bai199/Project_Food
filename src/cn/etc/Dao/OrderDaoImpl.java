package cn.etc.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.etc.Model.Order;
@Repository
public class OrderDaoImpl implements OrderDao {
	@Autowired
	private OrderDao od;
	@Override
	public int addOrder(Order order) {
		return od.addOrder(order);
	}

	@Override
	public List<Order> searchByUser(Order order) {
		return od.searchByUser(order);
	}

	@Override
	public List<Order> searchByBusiness(Order order) {
		return od.searchByBusiness(order);
	}

	@Override
	public Order searchByOrderAndOrderList(Order order) {
		// TODO Auto-generated method stub
		return od.searchByOrderAndOrderList(order);
	}

}

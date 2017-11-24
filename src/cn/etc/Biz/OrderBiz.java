package cn.etc.Biz;

import java.util.List;

import cn.etc.Model.Order;

public interface OrderBiz {
	public int addOrder(Order order);
	public List<Order> searchByUser(Order order);
	public List<Order> searchByBusiness(Order order);
	public Order searchByOrderAndOrderList(Order order);
}

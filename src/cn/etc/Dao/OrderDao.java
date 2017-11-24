package cn.etc.Dao;

import java.util.List;

import cn.etc.Model.Business;
import cn.etc.Model.Order;

public interface OrderDao {
	public int addOrder(Order order);
	public List<Order> searchByUser(Order order);
	public List<Order> searchByBusiness(Order order);
	public Order searchByOrderAndOrderList(Order order);
}

package cn.etc.Dao;

import java.util.List;

import cn.etc.Model.OrderList;

public interface OrderListDao {
	public List<OrderList> searchByOrder(OrderList orderList);
	public int addOrderList(OrderList orderList);
	public int deleteOrderList(OrderList orderList);
}

package cn.etc.Dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import cn.etc.Model.OrderList;
@Repository
public class OrderListDaoImpl implements OrderListDao {
	@Autowired
	private OrderListDao old;
	@Override
	public List<OrderList> searchByOrder(OrderList orderList) {
		// TODO Auto-generated method stub
		return old.searchByOrder(orderList);
	}
	@Override
	public int addOrderList(OrderList orderList) {
		// TODO Auto-generated method stub
		return old.addOrderList(orderList);
	}
	@Override
	public int deleteOrderList(OrderList orderList) {
		// TODO Auto-generated method stub
		return old.deleteOrderList(orderList);
	}

}

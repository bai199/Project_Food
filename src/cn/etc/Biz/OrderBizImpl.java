package cn.etc.Biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.etc.Dao.OrderDaoImpl;
import cn.etc.Model.Order;
@Service
public class OrderBizImpl implements OrderBiz {
	@Resource(name="orderDaoImpl")
	private OrderDaoImpl odi;
	@Override
	public int addOrder(Order order) {
		return odi.addOrder(order);
	}

	@Override
	public List<Order> searchByUser(Order order) {
		return odi.searchByUser(order);
	}

	@Override
	public List<Order> searchByBusiness(Order order) {
		return odi.searchByBusiness(order);
	}

	@Override
	public Order searchByOrderAndOrderList(Order order) {
		// TODO Auto-generated method stub
		return odi.searchByOrderAndOrderList(order);
	}
	
}

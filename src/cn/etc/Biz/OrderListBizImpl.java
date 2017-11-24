package cn.etc.Biz;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.etc.Dao.OrderListDaoImpl;
import cn.etc.Model.OrderList;
@Service
public class OrderListBizImpl implements OrderListBiz {
	@Resource(name="orderListDaoImpl")
	private OrderListDaoImpl oldi;
	@Override
	public List<OrderList> searchByOrder(OrderList orderList) {
		// TODO Auto-generated method stub
		return oldi.searchByOrder(orderList);
	}
	@Override
	public int addOrderList(OrderList orderList) {
		// TODO Auto-generated method stub
		return oldi.addOrderList(orderList);
	}
	@Override
	public int deleteOrderList(OrderList orderList) {
		// TODO Auto-generated method stub
		return oldi.deleteOrderList(orderList);
	}

}

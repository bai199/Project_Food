package cn.etc.Controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.etc.Biz.OrderBiz;
import cn.etc.Model.Menu;
import cn.etc.Model.Order;

@Controller
public class OrderController {
	@Resource(name="orderBizImpl")
	private OrderBiz odb;
	@RequestMapping(value="addOrder.action")
	public String addOrder(Order order,HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println("提交订单"+order);
		odb.addOrder(order);
		model.addAttribute("getBusiness_id", order.getBusiness_id());
		return "forward:searchByOrderAndOrderList.action";
	}
	@RequestMapping(value="searchByOrderAndOrderList.action")
	public String searchByOrderAndOrderList(Order order,HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println("订单列表联查"+order);
		Order ord= odb.searchByOrderAndOrderList(order);
		model.addAttribute("ord",ord.getCount());
		return "forward:updateBusinessCount.action";
	}
	
	//商家查看订单
	@RequestMapping(value="searchByBusinessId.action")
	public @ResponseBody List<Order> searchByBusinessId(Order order,HttpServletRequest request,HttpServletResponse response,Model model){
		List<Order> ord=odb.searchByBusiness(order);
		System.out.println(ord);
		return ord;
	}
}

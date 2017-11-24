package cn.etc.Controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import cn.etc.Biz.OrderListBiz;
import cn.etc.Model.OrderList;

@Controller
public class OrderListController {
	@Resource(name="orderListBizImpl")
	private OrderListBiz olb;
	@RequestMapping(value="searchByOrder.action")
	public String searchByOrder(OrderList orderList,HttpServletRequest request,HttpServletResponse response,Model model){
		List<OrderList> orderListBy=olb.searchByOrder(orderList);
		model.addAttribute("orderListBy", orderListBy);
		return "forward:searchMenuByBusinessShowUser.action";
	}
	@RequestMapping(value="addOrderList.action")
	public String addOrderList(OrderList orderList,HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println(orderList);
		model.addAttribute("business_id",request.getParameter("business_id"));
		olb.addOrderList(orderList);
		//"forward:searchByOrder.action"
		return "forward:searchByOrder.action";
	}
	@RequestMapping(value="searchByOrderPay.action")
	public String searchByOrderPay(OrderList orderList,HttpServletRequest request,HttpServletResponse response,Model model){
		List<OrderList> orderListBy=olb.searchByOrder(orderList);
		System.out.println("haha"+orderListBy);
		model.addAttribute("orderListBy", orderListBy);
		model.addAttribute("order_id", request.getParameter("order_id"));
		model.addAttribute("business_id", request.getParameter("business_id"));
		return "forward:searchBusinessByIdToPay.action";
	}
	@RequestMapping(value="deleteOrderList.action")
	public String deleteOrderList(OrderList orderList,HttpServletRequest request,HttpServletResponse response,Model model){
		model.addAttribute("business_id",request.getParameter("business_id"));
		olb.deleteOrderList(orderList);
		return "forward:searchByOrder.action";
	}
	//商家查询订单详细菜单
	@RequestMapping(value="searchByOrderAjax.action")
	public @ResponseBody List<OrderList> searchByOrderAjax(OrderList orderList,HttpServletRequest request,HttpServletResponse response,Model model){
		List<OrderList> orderListBy=olb.searchByOrder(orderList);
		/*System.out.println(orderListBy);
		model.addAttribute("businessOrderListBy", orderListBy);
		model.addAttribute("bname",request.getParameter("business_name"));*/
		return orderListBy;
	}
}

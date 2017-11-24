package cn.etc.Controller;



import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.etc.Biz.BusinessBiz;
import cn.etc.Model.Business;
import cn.etc.Model.BusinessClass;
import cn.etc.Model.Order;

@Controller
public class BusinessController {
	@Resource(name="businessBizImpl")
	private BusinessBiz bb;
	@RequestMapping(value="addBusiness.action")
	public String addBusiness(Business business,HttpServletRequest request,HttpServletResponse response,Model model) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		System.out.println(business);
		bb.addBusiness(business);
		model.addAttribute(business);
		return "forward:searchBusinessByName.action";
	}
	//商家登录使用
	@RequestMapping(value="searchBusinessByName.action")
	public String searchBusinessByName(Business business,HttpServletRequest request,HttpServletResponse response,Model model) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		Business businessByName=bb.searchBusinessByName(business);
		if(businessByName!=null&&business.getBusiness_pass().toString().equals(businessByName.getBusiness_pass().toString())){
	
			model.addAttribute("bus", businessByName);
		}else{
			model.addAttribute("err", "用户名或密码错误");
		}
		return "OnlineMeal_business";
	}
	//专属查询显示商家个人信息
	@RequestMapping(value="searchBusinessByNamePerson.action")
	public String searchBusinessByNamePerson(Business business,HttpServletRequest request,HttpServletResponse response,Model model) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		Business businessByName=bb.searchBusinessByName(business);
		System.out.println(businessByName);
		model.addAttribute("bus", businessByName);
		return "OnlineMeal_businessPerson";
	}
	
	@RequestMapping(value="searchBusinessByNamePerson1.action")
	public String searchBusinessByNamePerson1(Business business,HttpServletRequest request,HttpServletResponse response,Model model) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		System.out.println(111);
		
		business.setBusiness_name((String)request.getAttribute("bname"));
		Business businessByName=bb.searchBusinessByName(business);
		System.out.println(businessByName);
		model.addAttribute("bus", businessByName);
		return "OnlineMeal_businessPerson";
	}
	//网上订餐根据类型筛选出商家
	@RequestMapping(value="searchBusinessByType.action")
	public String searchBusinessByType(BusinessClass businessClass,HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println(businessClass);
		List<Business> businessByType=bb.searchBusinessByType(businessClass);
		model.addAttribute("businessByType", businessByType);
		return "forward:searchBusinessClassAll.action";
		}
	
	//搜索商家
	@RequestMapping(value="searchBusinessBySearch.action")
	public String searchBusinessBySearch(Business business,HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println(business);
		List<Business> businessBySearch=bb.searchBusinessBySearch(business);
		System.out.println(businessBySearch);
		model.addAttribute("businessByType", businessBySearch);
		return "forward:searchBusinessClassAllSearch.action";
		}
	
	//显示全部商家
	@RequestMapping(value="searchBusinessAll.action")
	public String searchBusinessAll(BusinessClass businessClass,HttpServletRequest request,HttpServletResponse response,Model model){
		List<Business> businessAll=bb.searchBusinessAll();
		//拦截器
			
		if(businessClass.getBusinessClass_id()==null){
			model.addAttribute("businessByType", businessAll);
		}
		
		return "OnlineMeal_order";
		
	}
	//用户点击商家根据id查询出商家信息
	@RequestMapping(value="searchBusinessById.action")
	public String searchBusinessById(Business business,HttpServletRequest request,HttpServletResponse response,Model model) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		Business businessById=bb.searchBusinessById(business);
		model.addAttribute("businessById", businessById);
		return "OnlineMeal_orderMenu";
	}
	@RequestMapping(value="updateBusinessCount.action")
	public String updateBusinessCount(Business business,HttpServletRequest request,HttpServletResponse response,Model model){
		System.out.println("更新");
		int a =(int) request.getAttribute("getBusiness_id");
		business.setBusiness_id(a);
		int b=(int) request.getAttribute("ord");
		business.setBusiness_bill(b);
		System.out.println("销量"+business);
		bb.updateBusinessCount(business);
		return "forward:searchBusinessClassAll.action";
	}
		//	传到订单界面
	@RequestMapping(value="searchBusinessByIdToPay.action")
	public String searchBusinessByIdToPay(Business business,HttpServletRequest request,HttpServletResponse response,Model model) throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		Business businessById=bb.searchBusinessById(business);
		model.addAttribute("businessById", businessById);
		return "OnlineMeal_orderPay";
	}
	
}
